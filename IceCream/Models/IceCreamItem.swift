//
//  IceCreamItem.swift
//  IceCream
//
//  Created by Shruti Balachander26 on 5/22/23.
//

import Foundation

//Options for the dropdown for the ratings
let ratings = ["0", "1 Star", "2 Stars", "3 Stars", "4 Stars", "5 Stars"]

//Data points which the user can add to
struct IceCreamItem: Identifiable{
    var id = UUID()
    var name: String
    var rating: String
    var message: String
}
