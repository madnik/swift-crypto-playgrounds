// Playground - noun: a place where people can play

import Foundation

func XOR(message: String, key: String) -> String? {
    let keyUtf8 = [UInt8](key.utf8)
    
    return String(bytes: map(enumerate(message.utf8)){ (index,element) in
            element ^ keyUtf8[index]
        }, encoding: NSUTF8StringEncoding)!
}

let key = "890098"
let msg = "MADNIK"

let cypher = XOR(msg, key)!

XOR(cypher,key)!















