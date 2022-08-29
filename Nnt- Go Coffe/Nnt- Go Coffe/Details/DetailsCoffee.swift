//
//  DetailsCoffee.swift
//  Nnt- Go Coffe
//
//  Created by Narely Lima on 29/08/22.
//


import UIKit

class DetailsCoffee: UIViewController {
    var item: Cafeterias?

    lazy var imageViewDetails: UIImageView = {

        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    lazy var textLabelDetails: UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textColor = .black
        text.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        return text
    }()
    lazy var descLabelDetails: UILabel = {
        let desc = UILabel()
        desc.translatesAutoresizingMaskIntoConstraints = false
        desc.textColor = .lightGray
        desc.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        return desc
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        if let item = item {
            title = item.titleCafeteria

            navigationController?.navigationBar.prefersLargeTitles = true
            view.addSubview(imageViewDetails)
            view.addSubview(descLabelDetails)
            imageViewDetails.image = UIImage(named: item.imageCafeteria)
            descLabelDetails.text = item.descCafeteria
        }

    }
    func configImage() {
        imageViewDetails.layer.cornerRadius = 20
        imageViewDetails.clipsToBounds = true
    }
    func configLabel() {
        textLabelDetails.numberOfLines = 3
        textLabelDetails.adjustsFontSizeToFitWidth = true
    }

    func configDesc() {
        descLabelDetails.layer.cornerRadius = 10
        descLabelDetails.clipsToBounds = true
    }
    func configImageView() {
        NSLayoutConstraint.activate([
        imageViewDetails.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        imageViewDetails.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        imageViewDetails.heightAnchor.constraint(equalToConstant: 80),
        imageViewDetails.widthAnchor.constraint(equalTo: imageViewDetails.heightAnchor, multiplier: 1/100)
        ])
    }
    func configTitleView() {
        NSLayoutConstraint.activate([
        textLabelDetails.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        textLabelDetails.leadingAnchor.constraint(equalTo: imageViewDetails.trailingAnchor, constant: 20),
        textLabelDetails.topAnchor.constraint(equalTo: descLabelDetails.bottomAnchor),
        textLabelDetails.heightAnchor.constraint(equalToConstant: 80)
        ])
    }
    func configDescView() {
        NSLayoutConstraint.activate([
        descLabelDetails.leadingAnchor.constraint(equalTo: imageViewDetails.trailingAnchor, constant: 20),
        descLabelDetails.heightAnchor.constraint(equalToConstant: 80),
        descLabelDetails.bottomAnchor.constraint(equalTo: textLabelDetails.topAnchor, constant: 100)
        ])
    }
}
