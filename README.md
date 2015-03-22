# swift-crypto-playgrounds

## 01 One Time Pad

Swift function for Crypto one time pad

    func XOR(message: String, key: String) -> String? {
        let keyUtf8 = [UInt8](key.utf8)
        return String(bytes: map(enumerate(message.utf8)){ (index,element) in
            element ^ keyUtf8[index]
        }, encoding: NSUTF8StringEncoding)!
      }
