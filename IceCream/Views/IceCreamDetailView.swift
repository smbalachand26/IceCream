//
//  IceCreamDetailView.swift
//  IceCream
//
//  Created by Shruti Balachander26 on 5/20/23.
//

import SwiftUI

struct IceCreamDetailView: View {
    
    @ObservedObject var viewModel = IceCreamViewModel()
    @State var showScreen = false
    var iceCreamDetails : [String]
    let totalRating = [1,2,3,4,5]
    
    var body: some View {
            VStack{
                //Main title at the top of the screen
                Text("\(iceCreamDetails [0]) Reviews")
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)
            }
            .navigationBarItems(
                //A button for adding new reviews
                trailing:Button(action: {
                    showScreen = true
                }) {
                    Image(systemName: "plus")
                })
                //Pulls up the "add a review" screen once the plus sign is clicked
            .sheet(isPresented: $showScreen){
                IceCreamListView(showScreen: $showScreen, viewModel: viewModel)
                
            }
            
            //Each component which appears on the list after the user inputs their information
            List{
                ForEach(viewModel.items) {iceCream in
                    VStack{
                        //The rating (out of 5 stars) given to the ice cream store
                        Text("Rating: \(iceCream.rating)")
                            .font(.title3)
                            .multilineTextAlignment(.center)
                        //Filter algorithm as a sub-text for the rating number
                        ForEach(totalRating.filter {$0 % 5 == 0}, id: \.self) {number in
                            Text("out of \(number)")
                        }
                    
                        HStack{
                            //The name of the person giving the review
                            Text("Name: \(iceCream.name)")
                                .font(.title3)
                                .multilineTextAlignment(.center)
                                .padding()
                            
                            //The message a user can input about the ice cream store
                            Text("Message: \(iceCream.message)")
                                .font(.subheadline)
                                .multilineTextAlignment(.center)
                        }
                    }
                }
                //Deletes the items on the list
                .onDelete(perform: viewModel.removeItem)
            }
            .scrollContentBackground(.hidden)
            .shadow(radius: 10)
        }
    }




