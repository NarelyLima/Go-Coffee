//
//  CoffeeView.swift
//  Nnt- Go Coffe
//
//  Created by Narely Lima on 25/08/22.
//

import Foundation
import UIKit


class CoffeeView: UIViewController{
    let titleLabel: UILabel =  {
        let label = UILabel()
        label.text = "Go coffee"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    func setupLayout(){
        view.backgroundColor = .systemPink
        view.addSubview(titleLabel)

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(
                equalTo: view.topAnchor,
                constant: UIScreen.main.bounds.height*0.15
            ),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: UIScreen.main.bounds.width*0.1)
        ])

    }

}
