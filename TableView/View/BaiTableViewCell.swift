//
//  BaiTableViewCell.swift
//  TableView
//
//  Created by Alice on 2022/12/12.
//

import UIKit

class BaiTableViewCell: UITableViewCell {

    @IBOutlet weak var baiAlbumPic: UIImageView!
    @IBOutlet weak var songLabel: UILabel!
    @IBOutlet weak var albumLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
