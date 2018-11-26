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
    let dataController = QuotesDataController()
    
    required init?(coder aDecoder: NSCoder) {
        self.dataSource = QuotesDataSource(quotes: dataController.quotes)
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
