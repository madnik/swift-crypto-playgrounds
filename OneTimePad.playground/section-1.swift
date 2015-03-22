// Playground - noun: a place where people can play

import Foundation

//For simplicity this assumes message and key contains ascii encodable charachters

func XOR(message: String, key: String) -> String? {
    let keyUtf8 = [UInt8](key.utf8)
    
    return String(bytes: map(enumerate(message.utf8)){ (index,element) in
            element ^ keyUtf8[index]
        }, encoding: NSUTF8StringEncoding)!
}

let key = "iswift"
let msg = "MADNIK"

let cypher = XOR(msg, key)!
//The cyphter is $23'/?

let decrypted = XOR(cypher,key)!
//We should get back the message. And it does.















