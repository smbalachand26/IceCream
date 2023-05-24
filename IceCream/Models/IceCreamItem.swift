//
//  IceCreamItem.swift
//  IceCream
//
//  Created by Shruti Balachander26 on 5/22/23.
//

import Foundation

let ratings = ["0", "1 Star", "2 Stars", "3 Stars", "4 Stars", "5 Stars"]

struct IceCreamItem: Identifiable{
    var id = UUID()
    var name: String
    var rating: String
    var message: String
}
