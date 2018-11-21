//
//  QuotesDataSource.swift
//  Quotes
//
//  Created by ElijahButers on 11/21/18.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit

class QuotesDataSource: NSObject {
    
    let quotes: [Quote]
    
    init(quotes: [Quote]) {
        self.quotes = quotes
    }

}

extension QuotesDataSource: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quotes.count
    }
}
