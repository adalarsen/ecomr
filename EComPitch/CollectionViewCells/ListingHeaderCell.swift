//
//  ListingHeaderCell.swift
//  EComPitch
//
//  Created by Ada Skarsholt Larsen on 13/03/2023.
//

import UIKit

class ListingHeaderCell: UICollectionViewCell {
    static let identifier = "ListingHeaderCell"
    
    let userProfilePictureImageView = UIImageView()
    let usernameLabel = UILabel()
    let moreImageView = UIImageView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Init coder not implemented")
    }
    
    
    
    private func configureUI() {
        addSubview(userProfilePictureImageView)
        userProfilePictureImageView.translatesAutoresizingMaskIntoConstraints = false
        userProfilePictureImageView.contentMode = .scaleAspectFill
        userProfilePictureImageView.clipsToBounds = true
        userProfilePictureImageView.layer.cornerRadius = 15
        userProfilePictureImageView.image = UIImage(named: "profilepicture")
        
        
        addSubview(usernameLabel)
        usernameLabel.translatesAutoresizingMaskIntoConstraints = false
        usernameLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        usernameLabel.text = "HOLZWEILER HOLZWEILER"
        
        addSubview(moreImageView)
        moreImageView.translatesAutoresizingMaskIntoConstraints = false
        moreImageView.contentMode = .scaleAspectFit
        moreImageView.image = UIImage(systemName: "ellipsis")
        moreImageView.tintColor = .label
        
        NSLayoutConstraint.activate([
            userProfilePictureImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            userProfilePictureImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            userProfilePictureImageView.widthAnchor.constraint(equalToConstant: 32),
            userProfilePictureImageView.heightAnchor.constraint(equalToConstant: 32),
            
            usernameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            usernameLabel.leadingAnchor.constraint(equalTo: userProfilePictureImageView.trailingAnchor, constant: 8),
            
            moreImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            moreImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            moreImageView.widthAnchor.constraint(equalToConstant: 28),
            moreImageView.heightAnchor.constraint(equalToConstant: 28),
        ])
        
    }
}
