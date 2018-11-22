//
//  ViewController.swift
//  Quotes
//
//  Created by ElijahButers on 11/19/18.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let dataSource: QuotesDataSource
    
    required init?(coder aDecoder: NSCoder) {
        let quotes = [
            Quote(text:"Hello World", author: "Morphius"),
            Quote(text:"Hello World", author: "Morphius"),
            Quote(text:"Hello World", author: "Morphius")
        ]
        self.dataSource = QuotesDataSource(quotes: quotes)
        super.init(coder: aDecoder)
    }
}

extension ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}
