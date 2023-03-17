//
//  FeedViewController.swift
//  EComPitch
//
//  Created by Ada Skarsholt Larsen on 10/03/2023.
//

import UIKit

final class NewListingViewController: UIViewController {
    
    
    private lazy var formContentBuilder = FormContentBuilderImpl()
    private lazy var formCompLayout = FormCompositionalLayout()
    private lazy var dataSource = makeDataSource()
    
    private lazy var collectionVw: UICollectionView = {
        let cv = UICollectionView(frame: .zero, collectionViewLayout: formCompLayout.layout)
        cv.backgroundColor = .clear
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(UICollectionViewCell.self, forCellWithReuseIdentifier: UICollectionViewCell.cellId)
        cv.register(FormButtonCell.self, forCellWithReuseIdentifier: FormButtonCell.cellId)
        cv.register(FormTextCell.self, forCellWithReuseIdentifier: FormTextCell.cellId)
        return cv
    }()

    override func loadView() {
        title = "Hva skal du selge?"
        
        super.loadView()
        setup()
        updateDataSource()

        // Do any additional setup after loading the view.
    }
    
    
}

private extension NewListingViewController {
    
    func setup() {
        view.backgroundColor = .white
        collectionVw.dataSource = dataSource
        view.addSubview(collectionVw)
        
        NSLayoutConstraint.activate([
            collectionVw.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionVw.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionVw.topAnchor.constraint(equalTo: view.topAnchor),
            collectionVw.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    func makeDataSource() -> UICollectionViewDiffableDataSource<FormSectionComponent, FormComponent> {
        return UICollectionViewDiffableDataSource(collectionView: collectionVw) { collectionVw, indexPath, item in
            switch item {
            case is TextFormComponent:
                let cell = collectionVw.dequeueReusableCell(withReuseIdentifier: FormTextCell.cellId, for: indexPath) as! FormTextCell
                cell.bind(item)
                return cell
                
            case is ButtonFormComponent:
                let cell = collectionVw.dequeueReusableCell(withReuseIdentifier: FormButtonCell.cellId, for: indexPath) as! FormButtonCell
                cell.bind(item)
                return cell
                
            default:
                let cell = collectionVw.dequeueReusableCell(withReuseIdentifier: UICollectionViewCell.cellId, for: indexPath)
                return cell
            }
            
        }
    }
    
    func updateDataSource(animated: Bool = false) {
        DispatchQueue.main.async {
            [weak self] in
            guard let self = self else { return }
            var snapshop = NSDiffableDataSourceSnapshot<FormSectionComponent, FormComponent>()
            let formSections = self.formContentBuilder.content
            snapshop.appendSections(formSections)
            formSections.forEach{snapshop.appendItems($0.items, toSection: $0) }
            
            self.dataSource.apply(snapshop, animatingDifferences: animated)
        }
    }
}
