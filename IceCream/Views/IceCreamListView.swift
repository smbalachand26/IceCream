//
//  IceCreamListView.swift
//  IceCream
//
//  Created by Shruti Balachander26 on 5/22/23.
//

import Foundation
import SwiftUI

struct IceCreamListView: View{
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showScreen: Bool
    @State var itemName = ""
    @State var itemMessage = ""
    @State var selectedRating = ""
    @ObservedObject var viewModel: IceCreamViewModel
    
    
    
    var body: some View{
        NavigationView{
            Form{
                Section{
                    TextField("Enter your name", text: $itemName)
                        .multilineTextAlignment(.center)
                    }
                    Section{
                        Picker("Rating", selection: $selectedRating){
                            ForEach(ratings, id: \.self) {rating in
                                Text(rating).tag(rating)
                            }
                        }
                    }
                    
                    Section{
                        TextField("Enter your message", text: $itemMessage)
                            .multilineTextAlignment(.center)
                    }
                            .navigationBarItems(
                                leading: Button("Cancel"){
                                    showScreen = false
                                    
                                },
                                trailing: Button("Save"){
                                    let newItem = IceCreamItem(name: itemName, rating: selectedRating, message: itemMessage)
                                    
                                    viewModel.items.append(newItem)
                                    
                                    showScreen = false
                                }
                            )
                        }
                        .navigationBarTitle("Add a Review")
                    }
                }
            }
        
    



