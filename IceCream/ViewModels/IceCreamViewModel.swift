//
//  IceCreamViewModel.swift
//  IceCream
//
//  Created by Shruti Balachander26 on 5/22/23.
//

import Foundation

class IceCreamViewModel: ObservableObject{
    @Published var items: [IceCreamItem] = []

    func addItem(item: IceCreamItem){
        items.append(item)
    }
    
    func removeItem(at offsets: IndexSet){
        items.remove(atOffsets: offsets)
    }
}
