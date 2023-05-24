//
//  IceCreamList.swift
//  IceCream
//
//  Created by Shruti Balachander26 on 5/22/23.
//

import Foundation
import SwiftUI

struct IceCreamList: View{
    
    @ObservedObject var viewModel: IceCreamViewModel
    @State var showScreen = false
    @State var showAddItemView = false
    var iceCreamDetails : [String]
    var item: IceCreamItem
    
    var body: some View{
        NavigationView{
            VStack{
                //Main title at the top of the page
                Text("Leave a review for \(iceCreamDetails[0])")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .padding(.bottom, 5)
                
                //The components which will show up on the "add a review" screen
                        VStack{
                            HStack{
                                Text("\(item.name)")
                                    .font(.title3)
                                    .multilineTextAlignment(.center)
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
            }
        

