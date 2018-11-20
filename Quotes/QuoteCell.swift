//
//  QuoteCell.swift
//  Quotes
//
//  Created by ElijahButers on 11/20/18.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit

class QuoteCell: UITableViewCell {
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    var quoteText: String? {
        didSet {
            quoteLabel.text = quoteText
        }
    }
    var author: String? {
        didSet {
            authorLabel.text = author
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
