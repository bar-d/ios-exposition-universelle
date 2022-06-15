//
//  CustomTableViewCell.swift
//  Expo1900
//
//  Created by 김동용 on 2022/06/15.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var title1: UILabel!
    @IBOutlet weak var shortDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

