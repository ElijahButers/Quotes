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

extension Quote {
    init(dictionary: [String: AnyObject]) {
        author = dictionary["author"] as! String
        text = dictionary["text"] as! String
    }
}
