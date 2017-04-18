//
//  FlickrMethodButton.swift
//  FlickrImageViewer
//
//  Created by iwritecode on 4/17/17.
//  Copyright © 2017 iwritecode. All rights reserved.
//

import UIKit

class FlickrMethodButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = 7.0
//        self.layer.borderWidth = 2.0
//        self.layer.borderColor = UIColor.darkGray.cgColor
//        self.setTitleColor(UIColor.darkGray, for: .normal)

        self.addTarget(self, action: #selector(toggleSelection), for: .touchUpInside)
    }

    @objc private func toggleSelection() {
        if self.isSelected {
            self.layer.borderWidth = 2.0
            self.layer.borderColor = UIColor.blue.cgColor
            self.setTitleColor(UIColor.blue, for: .normal)
        } else {
            self.layer.borderWidth = 2.0
            self.layer.borderColor = UIColor.darkGray.cgColor
            self.setTitleColor(UIColor.darkGray, for: .normal)
        }
    }
    
}
