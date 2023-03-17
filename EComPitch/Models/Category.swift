//
//  Category.swift
//  EComPitch
//
//  Created by Ada Skarsholt Larsen on 10/03/2023.
//

import Foundation

struct Cateogory: Decodable {
    /** Unique identifier of the category */
    let id: String
    /** User facing name of the category */
    let title: String
    /** Icon to use when allowing the user to select a category for their listing */
    let icon: String

}
