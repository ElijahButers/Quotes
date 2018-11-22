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
            Quote(text: "Two things are infinite: the universe and human stupidity; and I am not sure about the universe.", author: "Albert Einstein"),
            Quote(text: "Design is not just what it looks like and feels like. Design is how it works.", author: "Steve Jobs"),
            Quote(text: "Life is what happens when you’re busy making other plans.", author: "John Lennon")
        ]
        self.dataSource = QuotesDataSource(quotes: quotes)
        super.init(coder: aDecoder)
    }
}

extension ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.estimatedRowHeight = 113
        tableView.rowHeight = UITableView.automaticDimension
        tableView.dataSource = dataSource
        tableView.reloadData()
    }
}
