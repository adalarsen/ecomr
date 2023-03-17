//
//  ListingViewController.swift
//  EComPitch
//
//  Created by Ada Skarsholt Larsen on 10/03/2023.
//

import UIKit

final class ListingViewController: UIViewController {
    
    var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let data: Data = loadJson()!
        print(data.listings.first)
        print(data.listings.count)
        
        configureCollectionView()
        // Do any additional setup after loading the view.
    }
    
    
    private func configureCollectionView() {
        let collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createFlowLayout())
        view.addSubview(collectionView)
        collectionView.register(HeaderCell.self, forCellWithReuseIdentifier: HeaderCell.identifier)
        collectionView.register(ListingHeaderCell.self, forCellWithReuseIdentifier: ListingHeaderCell.identifier)
        collectionView.register(ListingActionCell.self, forCellWithReuseIdentifier: ListingActionCell.identifier)
        collectionView.register(ListingCaptionCell.self, forCellWithReuseIdentifier: ListingCaptionCell.identifier)
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "feed")
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.showsVerticalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        
        self.collectionView = collectionView
    }
    
    private func createFlowLayout() -> UICollectionViewLayout {
        let layout = UICollectionViewCompositionalLayout { sectionIndex, layoutEnv in
            if sectionIndex == 0 {
                return self.createHeaderLayout()
            }
            else {
                return self.createFeedLayout()
            }
        }
        return layout
    }
    
    private func createHeaderLayout() -> NSCollectionLayoutSection {
        //item
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(40))
        let headerItem = NSCollectionLayoutItem(layoutSize: itemSize)
        
        //group
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(40))
        let headerGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, repeatingSubitem: headerItem, count: 1)
        
        //section
        let headerSection = NSCollectionLayoutSection(group: headerGroup)
        
        return headerSection
    }
   
    private func createFeedLayout() -> NSCollectionLayoutSection {
        //item
        let listingHeaderItem = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50)))
        let listingImageItem = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalWidth(1)))
        let listingActionItem = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50)))
        let listingCaptionItem = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(35)))
        let listingCommentSectionItem = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(30)))
        
        //group
        let feedGroup = NSCollectionLayoutGroup.vertical(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(500)), subitems: [listingHeaderItem,listingImageItem, listingActionItem, listingCommentSectionItem, listingCaptionItem])
        //section
        let feedSection = NSCollectionLayoutSection(group: feedGroup)
        feedSection.orthogonalScrollingBehavior = .continuous
        
        return feedSection
    }
    
    
    
    
    public func loadJson() -> Data? {
        let decoder = JSONDecoder()
        guard
            let path = Bundle.main.path(forResource: "tech_case_data", ofType: "json"),
            let jsonData = try? String(contentsOfFile: path).data(using: .utf8),
            let decodedData = try? decoder.decode(Data.self, from: jsonData)
        else {
            return nil
        }
        return decodedData
    }
    
    

}

extension ListingViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        else {
            return 10
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HeaderCell.identifier, for: indexPath)
            return cell
        }
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "feed", for: indexPath)
            if indexPath.row == 0 {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ListingHeaderCell.identifier, for: indexPath)
                return cell
            }
            else if indexPath.row == 1 {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "feed", for: indexPath)
                let image = UIImageView(image: UIImage(named: "lace-tee"))
                image.contentMode = .scaleAspectFit
                image.clipsToBounds = true
                cell.backgroundView = image
                return cell
            }
            else if indexPath.row == 2 {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ListingActionCell.identifier, for: indexPath)
                return cell
            }
            else if indexPath.row == 3 {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ListingCaptionCell.identifier, for: indexPath)
                return cell
            } else {
                cell.backgroundColor = .white
            }
            
            return cell
        }
    }
    
   
}
