//
//  Listing.swift
//  EComPitch
//
//  Created by Ada Skarsholt Larsen on 10/03/2023.
//

import Foundation

struct Listing: Codable, Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    static func == (lhs: Listing, rhs: Listing) -> Bool {
        lhs.id == rhs.id
    }
    
    /** Unique identifier of the listing */
    let id: String
    /** ISO1806 string representation of when the listing was created */
    let createdAt: String
    /** Largest text on the primaryImageText */
    let title: String
    /** Text label under the images */
    let caption: String
    /** Size of the product. Ex: S, M, L */
    let size: String
    /** Name of the category the listing is placed in */
    let category: String
    /** What the seller wants for this item */
    let askingPrice: Float
    /** The currency applicable to askingPrice */
    let currency: String
    /** How many total likes this listing has */
    let likeCount: Int
    /** Whether or not the current user has liked this item */
    let liked: Bool
    /** Whether or not the item is marked as sold */
    let sold: Bool
    /** Information about the user who posted this item */
    let owner: Owner
    /** The required first image, with title and price rendered on top of it */
    let primaryImage: String
    /** The optional second image, this never has any text applied to it */
    let secondaryImage: String?

}

