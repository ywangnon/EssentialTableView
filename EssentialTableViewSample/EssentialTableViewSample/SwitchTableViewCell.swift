//
//  SwitchTableViewCell.swift
//  EssentialTableViewSample
//
//  Created by Hansub Yoo on 2020/11/05.
//

import UIKit

class SwitchTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        let v = UISwitch(frame: .zero)
        self.accessoryView = v
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
