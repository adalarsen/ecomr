//
//  ListingCaptionCell.swift
//  EComPitch
//
//  Created by Ada Skarsholt Larsen on 13/03/2023.
//

import UIKit

class ListingCaptionCell: UICollectionViewCell {
    static let identifier = "ListingCaptionCell"
    
    let usernameLabel = UILabel()
    let captionLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Init coder not implemented")
    }
    
    private func configureUI() {
        addSubview(usernameLabel)
        usernameLabel.translatesAutoresizingMaskIntoConstraints = false
        usernameLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        usernameLabel.text = "holzweiler"
        
        addSubview(captionLabel)
        captionLabel.translatesAutoresizingMaskIntoConstraints = false
        captionLabel.font = .systemFont(ofSize: 14, weight: .regular)
        captionLabel.text = "Vareprøve av Lace Tee 🖤 \nDenne kan kles opp og ned og du får kjøpt den til en veldig snill pris! Normal i størrelsen. #secondchance #holzweiler #tshirt"
        captionLabel.numberOfLines = 4
        captionLabel.lineBreakMode = .byWordWrapping
        captionLabel.sizeToFit()
      
        
        NSLayoutConstraint.activate([
            usernameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            usernameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
           
            
            captionLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            captionLabel.leadingAnchor.constraint(equalTo: usernameLabel.trailingAnchor, constant:4),
           
            
        ])
        
    }
}
