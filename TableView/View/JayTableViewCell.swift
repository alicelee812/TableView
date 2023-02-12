//
//  JayTableViewCell.swift
//  TableView
//
//  Created by Alice on 2022/10/28.
//

import UIKit

class JayTableViewCell: UITableViewCell {
    
    //outlet 不要取名image or imageView，原本UITableViewCell已經有同名的property 了
    @IBOutlet weak var jayAlbumPic: UIImageView!
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


