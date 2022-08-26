//
//  CustomCellFavoriteView.swift
//  Nnt- Go Coffe
//
//  Created by Narely Lima on 25/08/22.
//

import Foundation
import UIKit

class CustomCellFavoriteView: CustomTableViewCell {
    var imageView = UIImage()
    var textLabel = UILabel()

    override init(style: UITableViewCell.CellStyle,
                  reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(imageView)
        addSubview(textLabel)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configImage() {
        imageView.layer.cornerRadius = 10
        imageView.clipsToBounds = true
    }
    func configLabel() {
        textLabel.numberOfLines = 3
        textLabel.adjustsFontSizeToFitWidth = true
    }
}
