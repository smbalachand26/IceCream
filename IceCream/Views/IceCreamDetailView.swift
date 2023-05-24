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
    
    var body: some View {
            VStack{
                Text("\(iceCreamDetails [0]) Reviews")
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)
            }
            .navigationBarItems(
                trailing:Button(action: {
                    showScreen = true
                }) {
                    Image(systemName: "plus")
                })
            .sheet(isPresented: $showScreen){
                IceCreamListView(showScreen: $showScreen, viewModel: viewModel)
                
            }
            
            List{
                ForEach(viewModel.items) {iceCream in
                    VStack{
                        HStack{
                            Text("Name: \(iceCream.name)")
                                .font(.title3)
                                .multilineTextAlignment(.center)
                                .padding()
                            Text("Rating: \(iceCream.rating)")
                                .font(.title3)
                                .multilineTextAlignment(.center)
                        }
                        Text("Message: \(iceCream.message)")
                            .font(.subheadline)
                            .multilineTextAlignment(.center)
                    }
                }
                .onDelete(perform: viewModel.removeItem)
            }
            .scrollContentBackground(.hidden)
            .shadow(radius: 10)
        }
    }
