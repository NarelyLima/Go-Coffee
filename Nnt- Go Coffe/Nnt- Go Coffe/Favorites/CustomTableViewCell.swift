//
//  CustomTableViewCell.swift
//  Nnt- Go Coffe
//
//  Created by Narely Lima on 25/08/22.
//


import UIKit

class CustomTableViewCell: UITableViewCell {
    static let identifier: String = "CustomTableViewCell"
    lazy var imageViewFavorite: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "Cafeteria 1")
        return image
    }()
    lazy var textLabelFavorite: UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.text = "Cafeteria 1"
        text.textColor = .black
        text.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        return text
    }()
    lazy var descLabelFavorite: UILabel = {
        let desc = UILabel()
        desc.translatesAutoresizingMaskIntoConstraints = false
        desc.text = "Essa cafeteria é ótima"
        desc.textColor = .gray
        desc.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        return desc
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .lightGray
        addSubview(imageViewFavorite)
        addSubview(textLabelFavorite)
        addSubview(descLabelFavorite)
        configImage()
        configLabel()
        configDesc()
        configTitleView()
        configImageView()
        configDescView()
    }
    func configImage() {
        imageViewFavorite.layer.cornerRadius = 10
        imageViewFavorite.clipsToBounds = true
    }
    func configLabel() {
        textLabelFavorite.numberOfLines = 3
        textLabelFavorite.adjustsFontSizeToFitWidth = true
    }

    func configDesc() {
        descLabelFavorite.layer.cornerRadius = 10
        descLabelFavorite.clipsToBounds = true
    }
    func configImageView() {
        NSLayoutConstraint.activate([
        imageViewFavorite.centerYAnchor.constraint(equalTo: centerYAnchor),
        imageViewFavorite.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
        imageViewFavorite.heightAnchor.constraint(equalToConstant: 80),
        imageViewFavorite.widthAnchor.constraint(equalTo: imageViewFavorite.heightAnchor, multiplier: 16/9)
        ])
    }
    func configTitleView() {
        NSLayoutConstraint.activate([
        textLabelFavorite.centerYAnchor.constraint(equalTo: centerYAnchor),
        textLabelFavorite.leadingAnchor.constraint(equalTo: imageViewFavorite.trailingAnchor, constant: 20),
        textLabelFavorite.topAnchor.constraint(equalTo: descLabelFavorite.bottomAnchor),
        textLabelFavorite.heightAnchor.constraint(equalToConstant: 80)
        ])
    }
    func configDescView() {
        NSLayoutConstraint.activate([
        descLabelFavorite.leadingAnchor.constraint(equalTo: imageViewFavorite.trailingAnchor, constant: 20),
        descLabelFavorite.heightAnchor.constraint(equalToConstant: 80),
        descLabelFavorite.bottomAnchor.constraint(equalTo: textLabelFavorite.topAnchor, constant: 100)
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
