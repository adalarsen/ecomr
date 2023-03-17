//
//  HomeViewController.swift
//  EComPitch
//
//  Created by Ada Skarsholt Larsen on 10/03/2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    
    var listings: [Listing] = [
        .init(
          id: "61a513e344a6d80098c0166e",
          createdAt: "2021-11-29T17:54:44.243Z",
          title: "Lace Tee",
          caption: "Vareprøve av Lace Tee 🖤 \nDenne kan kles opp og ned og du får kjøpt den til en veldig snill pris! Normal i størrelsen. #secondchance #holzweiler #tshirt",
          size: "XS",
          category: "wearables.clothes.tops",
          askingPrice: 500,
          currency: "NOK",
          likeCount: 27,
          liked: false,
          sold: false,
          owner: Owner(
            id: "5addf35ab461be00157d2e83",
            username: "holzweiler",
            name: "HOLZWEILER HOLZWEILER",
            picture: "https://tise-static.telenorcdn.net/profile-pictures/5addf35ab461be00157d2e83/26ae2353-bdcf-47f2-b579-67f0e9b4b31f"),
          primaryImage: "https://tise-static.telenorcdn.net/61a513e344a6d80098c0166e/image0/3bbe84ed-8089-4d01-b771-cbf23c325348/lace-tee",
          secondaryImage: "https://tise-static.telenorcdn.net/61a513e344a6d80098c0166e/image2/3b219239-94c3-4f3b-a48f-c649aa98ce33/lace-tee"
        ),
        .init(
          id: "61a2523e9b4e8800979b842a",
          createdAt: "2021-11-27T15:43:58.763Z",
          title: "Veronica Stars",
          caption: "Vakker wrapkjole med nydelig strassbroderi. Kjolen har utringing og puffermer med rynkedetalj nederst på ermene. Den perfekte kjolen til sesongens selskaper og fester. Dette er en sample i størrelse Small, normal i størrelsen. Nypris 4200,- #secondchance #piatjelta #veronicadress",
          size: "S",
          category: "wearables.clothes.dresses",
          askingPrice: 2500,
          currency: "NOK",
          likeCount: 2,
          liked: false,
          sold: true,
          owner: Owner(
            id: "6135f8331cafb900977e4c35",
            username: "piatjelta",
            name: "Pia Tjelta",
            picture: "https://tise-static.telenorcdn.net/profile-pictures/6135f8331cafb900977e4c35/119e7be9-5094-43ab-80e0-119b2da1d626"),
          primaryImage: "https://tise-static.telenorcdn.net/61a2523e9b4e8800979b842a/image0/4b61b078-d1e9-40c9-b21c-691cb934a35d/veronica-stars",
          secondaryImage: "https://tise-static.telenorcdn.net/61a2523e9b4e8800979b842a/image2/99ab9bb3-008e-4e34-9cf7-a270e7c45652/veronica-stars"
        )
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
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
