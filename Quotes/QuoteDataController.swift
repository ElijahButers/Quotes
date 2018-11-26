//
//  QuoteDataController.swift
//  Quotes
//
//  Created by ElijahButers on 11/26/18.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation

class QuotesDataController {
    let quotes: [Quote]
    
    init() {
        let fileUrl = Bundle.main.url(forResource: "Quotes", withExtension: "plist")!
        let quotesPlist = NSArray(contentsOf: fileUrl) as! [PListDictionary]
        quotes = quotesPlist.map(Quote.init)
    }
}
