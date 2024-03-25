//
//  BorderButton.swift
//  app-swoosh
//
//  Created by BlockCode on 22/3/2567 BE.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
