//
//  TableViewCell.swift
//  nonoka-Part21-realm
//
//  Created by 山本ののか on 2021/02/28.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet private weak var checkView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!

    static let reuseIdentifier = "TableViewCell"
    static let nibName = "TableViewCell"

    static func loadNib() -> UINib {
        return UINib(nibName: nibName, bundle: nil)
    }

    func configure(fruit: Fruit) {
        nameLabel.text = fruit.name
        checkView.image = fruit.isChecked ? UIImage(named: "check") : nil
    }
}
