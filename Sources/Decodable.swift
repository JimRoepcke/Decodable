//
//  Decodable.swift
//  Decodable
//
//  Created by Johannes Lund on 2015-07-07.
//  Copyright © 2015 anviking. All rights reserved.
//

import Foundation

public protocol Decodable {
    static func decodeJSON(json: AnyObject) throws -> Self
}

extension NSDictionary {
    public static func decodeJSON(j: AnyObject) throws -> NSDictionary {
        guard let result = j as? NSDictionary else {
            throw TypeMismatchError(expectedType: self, receivedType: j.dynamicType, object: j)
        }
        return result
    }
}

extension NSArray {
    public static func decodeJSON(j: AnyObject) throws -> NSArray {
        guard let result = j as? NSArray else {
            throw TypeMismatchError(expectedType: self, receivedType: j.dynamicType, object: j)
        }
        return result
    }
}

extension Dictionary where Key: Decodable, Value: Decodable {
    public static func decodeJSON(j: AnyObject) throws -> Dictionary {
        return try decodeDictionary(Key.decodeJSON, elementDecodeClosure: Value.decodeJSON)(json: j)
    }
}

extension Array where Element: Decodable {
    public static func decodeJSON(j: AnyObject, ignoreInvalidObjects: Bool = false) throws -> [Element] {
        if ignoreInvalidObjects {
            return try decodeArray { try? Element.decodeJSON($0) }(json: j).flatMap {$0}
        } else {
            return try decodeArray(Element.decodeJSON)(json: j)
        }
    }
}


// MARK: Helpers

/// Attempt to decode one of multiple objects in order until: A: we get a positive match, B: we throw an exception if the last object does not decode
public func decodeAsOneOf(json: AnyObject, objectTypes: Decodable.Type...) throws -> Decodable {
	for decodable in objectTypes.dropLast() {
		if let decoded = try? decodable.decodeJSON(json) {
			return decoded
		}
	}
	return try objectTypes.last!.decodeJSON(json)
}

/// Attempt to decode one of multiple objects in order until: A: we get a positive match, B: we throw an exception if the last object does not decode
public func decodeArrayAsOneOf(json: AnyObject, objectTypes: Decodable.Type...) throws -> [Decodable] {
	return try NSArray.decodeJSON(json).map {
		for decodable in objectTypes.dropLast() {
			if let decoded = try? decodable.decodeJSON($0) {
				return decoded
			}
		}
		return try objectTypes.last!.decodeJSON($0)
	}
}

/// Designed to be used with parse(json, path, decodeClosure) as the decodeClosure. Thats why it's curried and a "top-level" function instead of a function in an array extension. For everyday use, prefer using [T].decodeJSON(json) instead.
public func decodeArray<T>(elementDecodeClosure: AnyObject throws -> T) -> (json: AnyObject) throws -> [T] {
    return { json in
        return try NSArray.decodeJSON(json).map { try elementDecodeClosure($0) }
    }
}

/// Designed to be used with parse(json, path, decodeClosure) as the decodeClosure. Thats why it's curried. For everyday use, prefer using [K: V].decodeJSON(json) instead (declared in Decodable.swift).
public func decodeDictionary<K,V>(keyDecodeClosure: AnyObject throws -> K, elementDecodeClosure: AnyObject throws -> V) -> (json: AnyObject) throws -> [K: V] {
    return { json in
        var dict = [K: V]()
        for (key, value) in try NSDictionary.decodeJSON(json) {
            try dict[keyDecodeClosure(key)] = elementDecodeClosure(value)
        }
        return dict
    }
}
