//
//  UICollectionViewCell+CleanUp.swift
//  EComPitch
//
//  Created by Ada Skarsholt Larsen on 13/03/2023.
//

import UIKit

extension UICollectionViewCell {
    func removeViews() {
        contentView.subviews.forEach { $0.removeFromSuperview() }
    }
}
