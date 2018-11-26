//
//  Quote.swift
//  Quotes
//
//  Created by ElijahButers on 11/20/18.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation

struct Quote {
    let text: String
    let author: String
}

typealias PListDictionary = [String: AnyObject]
protocol PlistKey: RawRepresentable {}
protocol PlistValue {}

extension String: PlistValue {}
extension Bool: PlistValue {}
extension Int: PlistValue {}
extension Date: PlistValue {}
extension Data: PlistValue {}
extension Dictionary: PlistValue {}
extension Array: PlistValue {}

extension Dictionary where Value: AnyObject {
    func value<V: PlistValue, K: PlistKey>(forKey key: K) -> V where K.RawValue == String {
        return self[key.rawValue as! Key] as! V
    }
}

extension Quote {
    private enum Keys: String, PlistKey {
        case text
        case author
    }
}
