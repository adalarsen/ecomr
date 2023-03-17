//
//  FormButtonCell.swift
//  EComPitch
//
//  Created by Ada Skarsholt Larsen on 13/03/2023.
//

import UIKit

class FormButtonCell: UICollectionViewCell {
    private lazy var actionBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = UIColor(named: "tiseRed")
        btn.layer.cornerRadius = 8
        btn.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        return btn
    }()
    
    func bind(_ item: FormComponent) {
        guard let item = item as? ButtonFormComponent else { return }
        setup(item: item)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        removeViews()
    }
    
}

private extension FormButtonCell {
    func setup(item: ButtonFormComponent) {
        actionBtn.setTitle(item.title, for: .normal)
        contentView.addSubview(actionBtn)
        
        NSLayoutConstraint.activate([
            actionBtn.heightAnchor.constraint(equalToConstant: 44),
            actionBtn.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            actionBtn.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            actionBtn.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            actionBtn.topAnchor.constraint(equalTo: contentView.topAnchor)

        ])
        
    }
}
