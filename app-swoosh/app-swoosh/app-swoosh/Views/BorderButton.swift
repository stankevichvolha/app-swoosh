//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Volha  Stankevich on 6/14/19.
//  Copyright © 2019 Volha  Stankevich. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth=2.0
        layer.borderColor=UIColor.white.cgColor
        
    }

}
