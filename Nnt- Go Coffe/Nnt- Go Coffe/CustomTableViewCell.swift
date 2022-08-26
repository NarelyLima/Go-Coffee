//
//  CustomTableViewCell.swift
//  Nnt- Go Coffe
//
//  Created by Narely Lima on 25/08/22.
//


import UIKit

class CustomTableViewCell: UITableViewCell {
    static let identifier: String = "CustomTableViewCell"

    let customView: CustomCellFavoriteView = {
        let view = CustomCellFavoriteView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(self.customView)
        self.backgroundColor = .lightGray
        self.configConstraints()
    }

    private func configConstraints() {
        NSLayoutConstraint.activate([
            self.customView.topAnchor.constraint(equalTo: self.topAnchor),
            self.customView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.customView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.customView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("Init(coder: ) has not been implemented")
    }
}
