//
//  IceCreamItem.swift
//  IceCream
//
//  Created by Shruti Balachander26 on 5/22/23.
//

import Foundation

//Options for the dropdown for the ratings
let ratings = ["0", "1 star", "2 stars", "3 stars", "4 stars", "5 stars"]

//Data points which the user can add to
struct IceCreamItem: Identifiable, Hashable{
    var id = UUID()
    var name: String
    var rating: String
    var message: String
}
