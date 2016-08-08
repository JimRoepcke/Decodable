//
//  Overloads.swift
//  Decodable
//
//  Generated automatically by Generator.swift as a build phase.
//  Copyright © 2016 anviking. All rights reserved.
//

// 326 overloads were generated with the following return types:
// [[A]?]?, [[A: B]?]?, [A?]?, [[A?]]?, [[[A]]]?, [[[A: B]]]?, [[A]]?, [[A: B?]]?, [[A: [B]]]?, [[A: [B: C]]]?, [[A: B]]?, [A]?, [A: [B]?]?, [A: [B: C]?]?, [A: B?]?, [A: [B?]]?, [A: [[B]]]?, [A: [[B: C]]]?, [A: [B]]?, [A: [B: C?]]?, [A: [B: [C]]]?, [A: [B: [C: D]]]?, [A: [B: C]]?, [A: B]?, A?, [[A?]?], [[[A]]?], [[[A: B]]?], [[A]?], [[A: B?]?], [[A: [B]]?], [[A: [B: C]]?], [[A: B]?], [A?], [[[A]?]], [[[A: B]?]], [[A?]], [[[A?]]], [[[[A]]]], [[[[A: B]]]], [[[A]]], [[[A: B?]]], [[[A: [B]]]], [[[A: [B: C]]]], [[[A: B]]], [[A]], [[A: [B]?]], [[A: [B: C]?]], [[A: B?]], [[A: [B?]]], [[A: [[B]]]], [[A: [[B: C]]]], [[A: [B]]], [[A: [B: C?]]], [[A: [B: [C]]]], [[A: [B: [C: D]]]], [[A: [B: C]]], [[A: B]], [A], [A: [B?]?], [A: [[B]]?], [A: [[B: C]]?], [A: [B]?], [A: [B: C?]?], [A: [B: [C]]?], [A: [B: [C: D]]?], [A: [B: C]?], [A: B?], [A: [[B]?]], [A: [[B: C]?]], [A: [B?]], [A: [[B?]]], [A: [[[B]]]], [A: [[[B: C]]]], [A: [[B]]], [A: [[B: C?]]], [A: [[B: [C]]]], [A: [[B: [C: D]]]], [A: [[B: C]]], [A: [B]], [A: [B: [C]?]], [A: [B: [C: D]?]], [A: [B: C?]], [A: [B: [C?]]], [A: [B: [[C]]]], [A: [B: [[C: D]]]], [A: [B: [C]]], [A: [B: [C: D?]]], [A: [B: [C: [D]]]], [A: [B: [C: [D: E]]]], [A: [B: [C: D]]], [A: [B: C]], [A: B], A

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: String)throws-> [[A]?]? {
    return try parse(json, path: [path], decode: catchNull(decodeArray(catchNull(decodeArray(A.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: [String])throws-> [[A]?]? {
    return try parse(json, path: path, decode: catchNull(decodeArray(catchNull(decodeArray(A.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[A: B]?]? {
    return try parse(json, path: [path], decode: catchNull(decodeArray(catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[A: B]?]? {
    return try parse(json, path: path, decode: catchNull(decodeArray(catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: String)throws-> [A?]? {
    return try parse(json, path: [path], decode: catchNull(decodeArray(catchNull(A.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: [String])throws-> [A?]? {
    return try parse(json, path: path, decode: catchNull(decodeArray(catchNull(A.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: String)throws-> [[A?]]? {
    return try parse(json, path: [path], decode: catchNull(decodeArray(decodeArray(catchNull(A.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: [String])throws-> [[A?]]? {
    return try parse(json, path: path, decode: catchNull(decodeArray(decodeArray(catchNull(A.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: String)throws-> [[[A]]]? {
    return try parse(json, path: [path], decode: catchNull(decodeArray(decodeArray(decodeArray(A.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: [String])throws-> [[[A]]]? {
    return try parse(json, path: path, decode: catchNull(decodeArray(decodeArray(decodeArray(A.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[[A: B]]]? {
    return try parse(json, path: [path], decode: catchNull(decodeArray(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[[A: B]]]? {
    return try parse(json, path: path, decode: catchNull(decodeArray(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: String)throws-> [[A]]? {
    return try parse(json, path: [path], decode: catchNull(decodeArray(decodeArray(A.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: [String])throws-> [[A]]? {
    return try parse(json, path: path, decode: catchNull(decodeArray(decodeArray(A.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[A: B?]]? {
    return try parse(json, path: [path], decode: catchNull(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[A: B?]]? {
    return try parse(json, path: path, decode: catchNull(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[A: [B]]]? {
    return try parse(json, path: [path], decode: catchNull(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[A: [B]]]? {
    return try parse(json, path: path, decode: catchNull(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [[A: [B: C]]]? {
    return try parse(json, path: [path], decode: catchNull(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [[A: [B: C]]]? {
    return try parse(json, path: path, decode: catchNull(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[A: B]]? {
    return try parse(json, path: [path], decode: catchNull(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[A: B]]? {
    return try parse(json, path: path, decode: catchNull(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: String)throws-> [A]? {
    return try parse(json, path: [path], decode: catchNull(decodeArray(A.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: [String])throws-> [A]? {
    return try parse(json, path: path, decode: catchNull(decodeArray(A.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: [B]?]? {
    return try parse(json, path: [path], decode: catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: [B]?]? {
    return try parse(json, path: path, decode: catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [B: C]?]? {
    return try parse(json, path: [path], decode: catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: C]?]? {
    return try parse(json, path: path, decode: catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: B?]? {
    return try parse(json, path: [path], decode: catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: B?]? {
    return try parse(json, path: path, decode: catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: [B?]]? {
    return try parse(json, path: [path], decode: catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(catchNull(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: [B?]]? {
    return try parse(json, path: path, decode: catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(catchNull(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: [[B]]]? {
    return try parse(json, path: [path], decode: catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: [[B]]]? {
    return try parse(json, path: path, decode: catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [[B: C]]]? {
    return try parse(json, path: [path], decode: catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [[B: C]]]? {
    return try parse(json, path: path, decode: catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: [B]]? {
    return try parse(json, path: [path], decode: catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: [B]]? {
    return try parse(json, path: path, decode: catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [B: C?]]? {
    return try parse(json, path: [path], decode: catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: catchNull(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: C?]]? {
    return try parse(json, path: path, decode: catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: catchNull(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [B: [C]]]? {
    return try parse(json, path: [path], decode: catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: [C]]]? {
    return try parse(json, path: path, decode: catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: String)throws-> [A: [B: [C: D]]]? {
    return try parse(json, path: [path], decode: catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: [C: D]]]? {
    return try parse(json, path: path, decode: catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [B: C]]? {
    return try parse(json, path: [path], decode: catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: C]]? {
    return try parse(json, path: path, decode: catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: B]? {
    return try parse(json, path: [path], decode: catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: B]? {
    return try parse(json, path: path, decode: catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: String)throws-> A? {
    return try parse(json, path: [path], decode: catchNull(A.decodeJSON))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Returns: nil if the pre-decoded object at `path` is `NSNull`.
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: [String])throws-> A? {
    return try parse(json, path: path, decode: catchNull(A.decodeJSON))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: String)throws-> [[A?]?] {
    return try parse(json, path: [path], decode: decodeArray(catchNull(decodeArray(catchNull(A.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: [String])throws-> [[A?]?] {
    return try parse(json, path: path, decode: decodeArray(catchNull(decodeArray(catchNull(A.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: String)throws-> [[[A]]?] {
    return try parse(json, path: [path], decode: decodeArray(catchNull(decodeArray(decodeArray(A.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: [String])throws-> [[[A]]?] {
    return try parse(json, path: path, decode: decodeArray(catchNull(decodeArray(decodeArray(A.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[[A: B]]?] {
    return try parse(json, path: [path], decode: decodeArray(catchNull(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[[A: B]]?] {
    return try parse(json, path: path, decode: decodeArray(catchNull(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: String)throws-> [[A]?] {
    return try parse(json, path: [path], decode: decodeArray(catchNull(decodeArray(A.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: [String])throws-> [[A]?] {
    return try parse(json, path: path, decode: decodeArray(catchNull(decodeArray(A.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[A: B?]?] {
    return try parse(json, path: [path], decode: decodeArray(catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[A: B?]?] {
    return try parse(json, path: path, decode: decodeArray(catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[A: [B]]?] {
    return try parse(json, path: [path], decode: decodeArray(catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[A: [B]]?] {
    return try parse(json, path: path, decode: decodeArray(catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [[A: [B: C]]?] {
    return try parse(json, path: [path], decode: decodeArray(catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [[A: [B: C]]?] {
    return try parse(json, path: path, decode: decodeArray(catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[A: B]?] {
    return try parse(json, path: [path], decode: decodeArray(catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[A: B]?] {
    return try parse(json, path: path, decode: decodeArray(catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: String)throws-> [A?] {
    return try parse(json, path: [path], decode: decodeArray(catchNull(A.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: [String])throws-> [A?] {
    return try parse(json, path: path, decode: decodeArray(catchNull(A.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: String)throws-> [[[A]?]] {
    return try parse(json, path: [path], decode: decodeArray(decodeArray(catchNull(decodeArray(A.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: [String])throws-> [[[A]?]] {
    return try parse(json, path: path, decode: decodeArray(decodeArray(catchNull(decodeArray(A.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[[A: B]?]] {
    return try parse(json, path: [path], decode: decodeArray(decodeArray(catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[[A: B]?]] {
    return try parse(json, path: path, decode: decodeArray(decodeArray(catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: String)throws-> [[A?]] {
    return try parse(json, path: [path], decode: decodeArray(decodeArray(catchNull(A.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: [String])throws-> [[A?]] {
    return try parse(json, path: path, decode: decodeArray(decodeArray(catchNull(A.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: String)throws-> [[[A?]]] {
    return try parse(json, path: [path], decode: decodeArray(decodeArray(decodeArray(catchNull(A.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: [String])throws-> [[[A?]]] {
    return try parse(json, path: path, decode: decodeArray(decodeArray(decodeArray(catchNull(A.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: String)throws-> [[[[A]]]] {
    return try parse(json, path: [path], decode: decodeArray(decodeArray(decodeArray(decodeArray(A.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: [String])throws-> [[[[A]]]] {
    return try parse(json, path: path, decode: decodeArray(decodeArray(decodeArray(decodeArray(A.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[[[A: B]]]] {
    return try parse(json, path: [path], decode: decodeArray(decodeArray(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[[[A: B]]]] {
    return try parse(json, path: path, decode: decodeArray(decodeArray(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: String)throws-> [[[A]]] {
    return try parse(json, path: [path], decode: decodeArray(decodeArray(decodeArray(A.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: [String])throws-> [[[A]]] {
    return try parse(json, path: path, decode: decodeArray(decodeArray(decodeArray(A.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[[A: B?]]] {
    return try parse(json, path: [path], decode: decodeArray(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[[A: B?]]] {
    return try parse(json, path: path, decode: decodeArray(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[[A: [B]]]] {
    return try parse(json, path: [path], decode: decodeArray(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[[A: [B]]]] {
    return try parse(json, path: path, decode: decodeArray(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [[[A: [B: C]]]] {
    return try parse(json, path: [path], decode: decodeArray(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [[[A: [B: C]]]] {
    return try parse(json, path: path, decode: decodeArray(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[[A: B]]] {
    return try parse(json, path: [path], decode: decodeArray(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[[A: B]]] {
    return try parse(json, path: path, decode: decodeArray(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: String)throws-> [[A]] {
    return try parse(json, path: [path], decode: decodeArray(decodeArray(A.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: [String])throws-> [[A]] {
    return try parse(json, path: path, decode: decodeArray(decodeArray(A.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[A: [B]?]] {
    return try parse(json, path: [path], decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[A: [B]?]] {
    return try parse(json, path: path, decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [[A: [B: C]?]] {
    return try parse(json, path: [path], decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [[A: [B: C]?]] {
    return try parse(json, path: path, decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[A: B?]] {
    return try parse(json, path: [path], decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[A: B?]] {
    return try parse(json, path: path, decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[A: [B?]]] {
    return try parse(json, path: [path], decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(catchNull(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[A: [B?]]] {
    return try parse(json, path: path, decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(catchNull(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[A: [[B]]]] {
    return try parse(json, path: [path], decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[A: [[B]]]] {
    return try parse(json, path: path, decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [[A: [[B: C]]]] {
    return try parse(json, path: [path], decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [[A: [[B: C]]]] {
    return try parse(json, path: path, decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[A: [B]]] {
    return try parse(json, path: [path], decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[A: [B]]] {
    return try parse(json, path: path, decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [[A: [B: C?]]] {
    return try parse(json, path: [path], decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: catchNull(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [[A: [B: C?]]] {
    return try parse(json, path: path, decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: catchNull(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [[A: [B: [C]]]] {
    return try parse(json, path: [path], decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [[A: [B: [C]]]] {
    return try parse(json, path: path, decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: String)throws-> [[A: [B: [C: D]]]] {
    return try parse(json, path: [path], decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: [String])throws-> [[A: [B: [C: D]]]] {
    return try parse(json, path: path, decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [[A: [B: C]]] {
    return try parse(json, path: [path], decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [[A: [B: C]]] {
    return try parse(json, path: path, decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[A: B]] {
    return try parse(json, path: [path], decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[A: B]] {
    return try parse(json, path: path, decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: String)throws-> [A] {
    return try parse(json, path: [path], decode: decodeArray(A.decodeJSON))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: [String])throws-> [A] {
    return try parse(json, path: path, decode: decodeArray(A.decodeJSON))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: [B?]?] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeArray(catchNull(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: [B?]?] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeArray(catchNull(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: [[B]]?] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeArray(decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: [[B]]?] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeArray(decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [[B: C]]?] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [[B: C]]?] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: [B]?] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeArray(B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: [B]?] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeArray(B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [B: C?]?] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeDictionary(B.decodeJSON, elementDecodeClosure: catchNull(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: C?]?] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeDictionary(B.decodeJSON, elementDecodeClosure: catchNull(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [B: [C]]?] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: [C]]?] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: String)throws-> [A: [B: [C: D]]?] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: [C: D]]?] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [B: C]?] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: C]?] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: B?] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(B.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: B?] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(B.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: [[B]?]] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(catchNull(decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: [[B]?]] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(catchNull(decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [[B: C]?]] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(catchNull(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [[B: C]?]] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(catchNull(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: [B?]] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(catchNull(B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: [B?]] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(catchNull(B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: [[B?]]] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeArray(catchNull(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: [[B?]]] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeArray(catchNull(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: [[[B]]]] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeArray(decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: [[[B]]]] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeArray(decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [[[B: C]]]] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [[[B: C]]]] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: [[B]]] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeArray(B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: [[B]]] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeArray(B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [[B: C?]]] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: catchNull(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [[B: C?]]] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: catchNull(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [[B: [C]]]] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [[B: [C]]]] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: String)throws-> [A: [[B: [C: D]]]] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: [String])throws-> [A: [[B: [C: D]]]] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [[B: C]]] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [[B: C]]] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: [B]] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(B.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: [B]] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(B.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [B: [C]?]] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: catchNull(decodeArray(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: [C]?]] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: catchNull(decodeArray(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: String)throws-> [A: [B: [C: D]?]] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: catchNull(decodeDictionary(C.decodeJSON, elementDecodeClosure: D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: [C: D]?]] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: catchNull(decodeDictionary(C.decodeJSON, elementDecodeClosure: D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [B: C?]] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: catchNull(C.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: C?]] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: catchNull(C.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [B: [C?]]] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(catchNull(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: [C?]]] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(catchNull(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [B: [[C]]]] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(decodeArray(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: [[C]]]] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(decodeArray(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: String)throws-> [A: [B: [[C: D]]]] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(decodeDictionary(C.decodeJSON, elementDecodeClosure: D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: [[C: D]]]] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(decodeDictionary(C.decodeJSON, elementDecodeClosure: D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [B: [C]]] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(C.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: [C]]] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(C.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: String)throws-> [A: [B: [C: D?]]] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: catchNull(D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: [C: D?]]] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: catchNull(D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: String)throws-> [A: [B: [C: [D]]]] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: decodeArray(D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: [C: [D]]]] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: decodeArray(D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable>(json: AnyObject, path: String)throws-> [A: [B: [C: [D: E]]]] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: decodeDictionary(D.decodeJSON, elementDecodeClosure: E.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: [C: [D: E]]]] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: decodeDictionary(D.decodeJSON, elementDecodeClosure: E.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: String)throws-> [A: [B: [C: D]]] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: D.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: [C: D]]] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: D.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [B: C]] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: C]] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: B] {
    return try parse(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: B] {
    return try parse(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: String)throws-> A {
    return try parse(json, path: [path], decode: A.decodeJSON)
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
 - Throws: `MissingKeyError` if `path` does not exist in `json`. `TypeMismatchError` or any other error thrown in the decode-closure
*/
public func => <A: Decodable>(json: AnyObject, path: [String])throws-> A {
    return try parse(json, path: path, decode: A.decodeJSON)
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable>(json: AnyObject, path: String)throws-> [[A?]?]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(catchNull(decodeArray(catchNull(A.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable>(json: AnyObject, path: [String])throws-> [[A?]?]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(catchNull(decodeArray(catchNull(A.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable>(json: AnyObject, path: String)throws-> [[[A]]?]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(catchNull(decodeArray(decodeArray(A.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable>(json: AnyObject, path: [String])throws-> [[[A]]?]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(catchNull(decodeArray(decodeArray(A.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[[A: B]]?]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(catchNull(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[[A: B]]?]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(catchNull(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable>(json: AnyObject, path: String)throws-> [[A]?]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(catchNull(decodeArray(A.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable>(json: AnyObject, path: [String])throws-> [[A]?]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(catchNull(decodeArray(A.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[A: B?]?]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[A: B?]?]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[A: [B]]?]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[A: [B]]?]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [[A: [B: C]]?]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [[A: [B: C]]?]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[A: B]?]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[A: B]?]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable>(json: AnyObject, path: String)throws-> [A?]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(catchNull(A.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable>(json: AnyObject, path: [String])throws-> [A?]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(catchNull(A.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable>(json: AnyObject, path: String)throws-> [[[A]?]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(decodeArray(catchNull(decodeArray(A.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable>(json: AnyObject, path: [String])throws-> [[[A]?]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(decodeArray(catchNull(decodeArray(A.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[[A: B]?]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(decodeArray(catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[[A: B]?]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(decodeArray(catchNull(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable>(json: AnyObject, path: String)throws-> [[A?]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(decodeArray(catchNull(A.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable>(json: AnyObject, path: [String])throws-> [[A?]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(decodeArray(catchNull(A.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable>(json: AnyObject, path: String)throws-> [[[A?]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(decodeArray(decodeArray(catchNull(A.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable>(json: AnyObject, path: [String])throws-> [[[A?]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(decodeArray(decodeArray(catchNull(A.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable>(json: AnyObject, path: String)throws-> [[[[A]]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(decodeArray(decodeArray(decodeArray(A.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable>(json: AnyObject, path: [String])throws-> [[[[A]]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(decodeArray(decodeArray(decodeArray(A.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[[[A: B]]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(decodeArray(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[[[A: B]]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(decodeArray(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable>(json: AnyObject, path: String)throws-> [[[A]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(decodeArray(decodeArray(A.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable>(json: AnyObject, path: [String])throws-> [[[A]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(decodeArray(decodeArray(A.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[[A: B?]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[[A: B?]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[[A: [B]]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[[A: [B]]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [[[A: [B: C]]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [[[A: [B: C]]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[[A: B]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[[A: B]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable>(json: AnyObject, path: String)throws-> [[A]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(decodeArray(A.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable>(json: AnyObject, path: [String])throws-> [[A]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(decodeArray(A.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[A: [B]?]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[A: [B]?]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [[A: [B: C]?]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [[A: [B: C]?]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[A: B?]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[A: B?]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[A: [B?]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(catchNull(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[A: [B?]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(catchNull(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[A: [[B]]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[A: [[B]]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [[A: [[B: C]]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [[A: [[B: C]]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[A: [B]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[A: [B]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [[A: [B: C?]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: catchNull(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [[A: [B: C?]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: catchNull(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [[A: [B: [C]]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [[A: [B: [C]]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: String)throws-> [[A: [B: [C: D]]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: [String])throws-> [[A: [B: [C: D]]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [[A: [B: C]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [[A: [B: C]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [[A: B]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [[A: B]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable>(json: AnyObject, path: String)throws-> [A]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeArray(A.decodeJSON))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable>(json: AnyObject, path: [String])throws-> [A]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeArray(A.decodeJSON))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: [B?]?]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeArray(catchNull(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: [B?]?]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeArray(catchNull(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: [[B]]?]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeArray(decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: [[B]]?]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeArray(decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [[B: C]]?]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [[B: C]]?]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: [B]?]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeArray(B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: [B]?]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeArray(B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [B: C?]?]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeDictionary(B.decodeJSON, elementDecodeClosure: catchNull(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: C?]?]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeDictionary(B.decodeJSON, elementDecodeClosure: catchNull(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [B: [C]]?]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: [C]]?]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: String)throws-> [A: [B: [C: D]]?]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: [C: D]]?]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [B: C]?]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: C]?]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: B?]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(B.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: B?]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: catchNull(B.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: [[B]?]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(catchNull(decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: [[B]?]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(catchNull(decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [[B: C]?]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(catchNull(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [[B: C]?]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(catchNull(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: [B?]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(catchNull(B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: [B?]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(catchNull(B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: [[B?]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeArray(catchNull(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: [[B?]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeArray(catchNull(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: [[[B]]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeArray(decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: [[[B]]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeArray(decodeArray(B.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [[[B: C]]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [[[B: C]]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: [[B]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeArray(B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: [[B]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeArray(B.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [[B: C?]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: catchNull(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [[B: C?]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: catchNull(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [[B: [C]]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [[B: [C]]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: String)throws-> [A: [[B: [C: D]]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: [String])throws-> [A: [[B: [C: D]]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [[B: C]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [[B: C]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: [B]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(B.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: [B]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeArray(B.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [B: [C]?]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: catchNull(decodeArray(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: [C]?]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: catchNull(decodeArray(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: String)throws-> [A: [B: [C: D]?]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: catchNull(decodeDictionary(C.decodeJSON, elementDecodeClosure: D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: [C: D]?]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: catchNull(decodeDictionary(C.decodeJSON, elementDecodeClosure: D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [B: C?]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: catchNull(C.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: C?]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: catchNull(C.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [B: [C?]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(catchNull(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: [C?]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(catchNull(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [B: [[C]]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(decodeArray(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: [[C]]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(decodeArray(C.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: String)throws-> [A: [B: [[C: D]]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(decodeDictionary(C.decodeJSON, elementDecodeClosure: D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: [[C: D]]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(decodeDictionary(C.decodeJSON, elementDecodeClosure: D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [B: [C]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(C.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: [C]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeArray(C.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: String)throws-> [A: [B: [C: D?]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: catchNull(D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: [C: D?]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: catchNull(D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: String)throws-> [A: [B: [C: [D]]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: decodeArray(D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: [C: [D]]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: decodeArray(D.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable>(json: AnyObject, path: String)throws-> [A: [B: [C: [D: E]]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: decodeDictionary(D.decodeJSON, elementDecodeClosure: E.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: [C: [D: E]]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: decodeDictionary(D.decodeJSON, elementDecodeClosure: E.decodeJSON)))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: String)throws-> [A: [B: [C: D]]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: D.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable, D: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: [C: D]]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: decodeDictionary(C.decodeJSON, elementDecodeClosure: D.decodeJSON))))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: String)throws-> [A: [B: C]]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable, C: Decodable>(json: AnyObject, path: [String])throws-> [A: [B: C]]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: decodeDictionary(B.decodeJSON, elementDecodeClosure: C.decodeJSON)))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: String)throws-> [A: B]? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable, B: Decodable>(json: AnyObject, path: [String])throws-> [A: B]? {
    return try parseAndAcceptMissingKey(json, path: path, decode: decodeDictionary(A.decodeJSON, elementDecodeClosure: B.decodeJSON))
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable>(json: AnyObject, path: String)throws-> A? {
    return try parseAndAcceptMissingKey(json, path: [path], decode: A.decodeJSON)
}

/**
 Retrieves the object at `path` from `json` and decodes it according to the return type

 - parameter json: An object from NSJSONSerialization, preferably a `NSDictionary`.
 - parameter path: A null-separated key-path string. Can be generated with `"keyA" => "keyB"`
*/
public func =>? <A: Decodable>(json: AnyObject, path: [String])throws-> A? {
    return try parseAndAcceptMissingKey(json, path: path, decode: A.decodeJSON)
}