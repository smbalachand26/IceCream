//
//  IceCreamList.swift
//  IceCream
//
//  Created by Shruti Balachander26 on 5/22/23.
//

import Foundation
import SwiftUI

struct IceCreamList: View {
    @ObservedObject var viewModel: IceCreamViewModel
    @State var showScreen = false
    @State var showAddItemView = false
    @State var itemName = " "
    var iceCreamDetails: [String]
    var item: IceCreamItem
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Leave a review for \(iceCreamDetails[0])")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .padding(.bottom, 5)
                
                VStack {
                    HStack {
                        Text("Name: \(item.name)")
                            .font(.title3)
                            .multilineTextAlignment(.center)
                    }
                    Text("Rating: \(item.rating)")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                }
                
                Text(item.message)
                    .font(.title3)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

