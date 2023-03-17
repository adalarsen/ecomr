//
//  HeaderCell.swift
//  EComPitch
//
//  Created by Ada Skarsholt Larsen on 13/03/2023.
//

import UIKit

class HeaderCell: UICollectionViewCell {
    
    static let identifier = "HeaderCell"
    let logoImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Init coder not implemented")
    }
    
    private func configureUI() {
        addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.contentMode = .scaleAspectFill
        logoImageView.image = UIImage(named: "navImage")
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            logoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14),
            logoImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            logoImageView.widthAnchor.constraint(equalToConstant: 50),
        ])
    }
}
