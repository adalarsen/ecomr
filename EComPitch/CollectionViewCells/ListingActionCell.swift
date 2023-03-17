//
//  ListingActionCell.swift
//  EComPitch
//
//  Created by Ada Skarsholt Larsen on 13/03/2023.
//

import UIKit

class ListingActionCell: UICollectionViewCell {
    
    static let identifier = "ListingActionCell"
    
    let heartImageView = UIImageView()
    let heartButton = UIButton()
    
    let addToListImageView = UIImageView()
    let shareImageView = UIImageView()

    let chatBtn = UIButton()
    let buyBtn = UIButton()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Init coder not implemented")
    }
    
    
    
    private func configureUI() {
        addSubview(heartImageView)
        heartImageView.translatesAutoresizingMaskIntoConstraints = false
        heartImageView.contentMode = .scaleAspectFit
        heartImageView.tintColor = .label
        heartImageView.image = UIImage(systemName: "heart")
        
        addSubview(heartButton)
        heartButton.translatesAutoresizingMaskIntoConstraints = false
        heartButton.contentMode = .scaleToFill
        heartButton.tintColor = .black
        heartButton.setImage(UIImage(systemName: "heart"), for: .normal)
        heartButton.setImage(UIImage(systemName: "heart.fill"), for: .highlighted)
        
        addSubview(addToListImageView)
        addToListImageView.translatesAutoresizingMaskIntoConstraints = false
        addToListImageView.contentMode = .scaleAspectFit
        addToListImageView.tintColor = .label
        addToListImageView.image = UIImage(systemName: "plus.square.on.square")
        
        addSubview(shareImageView)
        shareImageView.translatesAutoresizingMaskIntoConstraints = false
        shareImageView.contentMode = .scaleAspectFit
        shareImageView.tintColor = .label
        shareImageView.image = UIImage(systemName: "arrow.turn.up.right")
        
        addSubview(chatBtn)
        chatBtn.translatesAutoresizingMaskIntoConstraints = false
        chatBtn.contentMode = .scaleAspectFit
        chatBtn.setTitleColor(.black, for: .normal)
        chatBtn.backgroundColor = .white
        chatBtn.layer.cornerRadius = 8
        chatBtn.layer.borderColor = UIColor.lightGray.cgColor
        chatBtn.layer.borderWidth = 1
        chatBtn.setTitle("Chat", for: .normal)
        chatBtn.titleLabel?.font = .systemFont(ofSize: 14, weight: .bold)

        addSubview(buyBtn)
        buyBtn.translatesAutoresizingMaskIntoConstraints = false
        buyBtn.contentMode = .scaleAspectFit
        buyBtn.setTitleColor(.white, for: .normal)
        buyBtn.backgroundColor = UIColor(named: "tiseRed")
        buyBtn.layer.cornerRadius = 8
        buyBtn.setTitle("Kjøp nå", for: .normal)
        buyBtn.titleLabel?.font = .systemFont(ofSize: 14, weight: .bold)

       
        
        NSLayoutConstraint.activate([
            heartImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            heartImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            heartImageView.widthAnchor.constraint(equalToConstant: 32),
            heartImageView.heightAnchor.constraint(equalToConstant: 32),
            
            heartButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            heartButton.leadingAnchor.constraint(equalTo: heartImageView.trailingAnchor, constant: 12),
            heartButton.widthAnchor.constraint(equalToConstant: 32),
            heartButton.heightAnchor.constraint(equalToConstant: 32),
            
            addToListImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            addToListImageView.leadingAnchor.constraint(equalTo: heartButton.trailingAnchor, constant: 12),
            addToListImageView.widthAnchor.constraint(equalToConstant: 32),
            addToListImageView.heightAnchor.constraint(equalToConstant: 32),
            
            shareImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            shareImageView.leadingAnchor.constraint(equalTo: addToListImageView.trailingAnchor, constant: 12),
            shareImageView.widthAnchor.constraint(equalToConstant: 32),
            shareImageView.heightAnchor.constraint(equalToConstant: 32),
            
            buyBtn.centerYAnchor.constraint(equalTo: centerYAnchor),
            buyBtn.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            buyBtn.widthAnchor.constraint(equalToConstant: 64),
            buyBtn.heightAnchor.constraint(equalToConstant: 32),
            
            chatBtn.centerYAnchor.constraint(equalTo: centerYAnchor),
            chatBtn.trailingAnchor.constraint(equalTo: buyBtn.leadingAnchor, constant: -10),
            chatBtn.widthAnchor.constraint(equalToConstant: 64),
            chatBtn.heightAnchor.constraint(equalToConstant: 32),
            
            
        ])
        
    }
}
