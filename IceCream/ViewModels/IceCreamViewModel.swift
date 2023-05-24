//
//  IceCreamViewModel.swift
//  IceCream
//
//  Created by Shruti Balachander26 on 5/22/23.
//

import Foundation

class IceCreamViewModel: ObservableObject{
    //Variable containing the data points from the model
    @Published var items: [IceCreamItem] = []
    //Add item function for the data points in the model
    func addItem(item: IceCreamItem){
        items.append(item)
    }
    //Remove item function for the items created for the list
    func removeItem(at offsets: IndexSet){
        items.remove(atOffsets: offsets)
    }
}
