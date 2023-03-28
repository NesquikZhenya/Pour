//
//  BorderedButton.swift
//  PourApp
//
//  Created by Евгений Михневич on 05.06.2022.
//

import UIKit

class BorderedButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
//        layer.borderWidth = 5.0
        layer.backgroundColor = UIColor.white.cgColor
//        layer.borderColor = UIColor.init(named: "Pourrish").cgColor
    }
}
