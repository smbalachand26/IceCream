//
//  IceCreamListView.swift
//  IceCream
//
//  Created by Shruti Balachander26 on 5/22/23.
//

import Foundation
import SwiftUI

struct IceCreamListView: View{
    
    @Binding var showScreen: Bool
    @State var itemName = ""
    @State var itemMessage = ""
    @State var selectedRating = ""
    @ObservedObject var viewModel: IceCreamViewModel
    
    
    var body: some View{
        NavigationView{
            Form{
                Section{
                    //Place to enter the user's name
                    TextField("Enter your name", text: $itemName)
                        .multilineTextAlignment(.center)
                    }
                    Section{
                        //Place to select the rating for the ice cream store
                        Picker("Rating", selection: $selectedRating){
                            ForEach(ratings, id: \.self) {rating in
                                Text(rating).tag(rating)
                            }
                        }
                    }
                    
                    Section{
                        //Place to enter a message the user wants to share
                        TextField("Enter your message", text: $itemMessage)
                            .multilineTextAlignment(.center)
                    }
                        //Cancel button when the "add a review" page is pulled up
                            .navigationBarItems(
                                leading: Button("Cancel"){
                                    showScreen = false
                                    
                                },
                        //The save button for adding new items to the list
                                trailing: Button("Save"){
                                    let newItem = IceCreamItem(name: itemName, rating: selectedRating, message: itemMessage)
                                    //Saving the items to the list
                                    viewModel.items.append(newItem)
                                    //Returning back to the list screen
                                    showScreen = false
                                }
                            )
                        }
                        //Main title on the "add a review" page
                        .navigationBarTitle("Add a Review")
                    }
                }
   
    }

        
    



