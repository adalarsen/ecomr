//
//  ViewController.swift
//  EComPitch
//
//  Created by Ada Skarsholt Larsen on 10/03/2023.
//

import UIKit

final class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
        
        view.backgroundColor = .systemBackground
        
   
        // Do any additional setup after loading the view.
    }
   
    
    private func setUpTabs() {
        let feedVC = ListingViewController()
        let listingVC = NewListingViewController()
        
        feedVC.navigationItem.largeTitleDisplayMode = .automatic
        listingVC.navigationItem.largeTitleDisplayMode = .automatic

        let nav1 = UINavigationController(rootViewController: feedVC)
        let nav2 = UINavigationController(rootViewController: listingVC)
        
        nav1.tabBarItem = UITabBarItem(title: "Feed", image: UIImage(systemName: "house"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Listing", image: UIImage(systemName: "plus"), tag: 2)

        for nav in [nav1, nav2] {
            nav.navigationBar.prefersLargeTitles = true
        }

        setViewControllers([nav1, nav2], animated: true)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
