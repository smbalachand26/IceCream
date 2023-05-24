//
//  IceCreamView.swift
//  IceCream
//
//  Created by Shruti Balachander26 on 5/20/23.
//

import SwiftUI

struct IceCreamView: View {
    
        @State var showScreen = false
        
    
        var iceCreamStoreNames : [String] = ["Arethusa Farm" , "Bi-Rite Creamery & Bakeshop" , "Bottega Italiana" , "The Creole Creamery" , "Lick Honest Ice Creams" , "Margie's Candies " , "Morgenstern's Finest Ice Cream" , "Pop's Old Fashioned Ice Cream Company" , "Salt & Straw" , "Wanderlust Creamery"]
        
        var iceCreamStoreAddresses : [String] = ["822 Bantam Rd. Bantam, CT" , "3692 18th St. San Francisco, CA" , "1425 1st Ave. Seattle, WA" , "4924 Prytania St. New Orleans, LA", "1100 S. Lamar Blvd., Ste. 1135 Austin, TX,", "1960 N. Western Ave. Chicago, IL," , "88 W. Houston St. New York, NY" , "109 King St. Alexandria, VA," , "2035 NE Alberta St. Portland, OR," , "18511 Ventura Blvd. Tarzana, CA"]
        
        var iceCreamStoreImages : [String] = ["Arethusa" , "Bi-Rite" , "Bottega" , "Creole" , "Lick" , "Margie's" , "Morgenstern's" , "Pop's" , "Salt" , "Wanderlust"]
        
        
        var body: some View {
            NavigationView{
                VStack {
                    Text("Ice Cream Store Reviews")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                        .multilineTextAlignment(.center)
                    
                    List{
                        ForEach(0...iceCreamStoreNames.count-1, id: \.self){index in
                            
                            let currentIceCream : [String] = [iceCreamStoreNames[index], iceCreamStoreAddresses[index], iceCreamStoreImages[index]]
                            
                            NavigationLink
                            {(IceCreamDetailView(iceCreamDetails: currentIceCream))
                                
                            } label: {
                                HStack{
                                    Image(currentIceCream[2])
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                    
                                    VStack(alignment: .leading, spacing: .leastNormalMagnitude){
                                        
                                        Text(currentIceCream[0])
                                            .fontWeight(.bold)
                                            .font(.system(size: 10))
                                        
                                        Text(currentIceCream[1])
                                            .font(.system(size:14))
                                    }
                                }
                            }
                        }
                    }
                    .scrollContentBackground(.hidden)
                    .shadow(radius: 10)
                }
            }
        }
    }


struct IceCreamView_Previews: PreviewProvider {
    static var previews: some View {
        IceCreamView()
    }
}
