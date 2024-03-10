//
//  AllCoinsView.swift
//  CryptoTrackerApp
//
//  Created by Dhruv Sharma on 04/02/24.
//

import SwiftUI

struct AllCoinsView: View {
    
    @StateObject var viewModel : HomeViewModel
    
    var body: some View {
        VStack(alignment:.leading){
            Text("All Coins")
                .font(.headline)
                .padding()
            HStack{
                Text("Coin")
                Spacer()
                Text("Price")
                    
            }.font(.caption)
            .foregroundStyle(.gray)
            .padding(.horizontal)
            ScrollView{
                VStack{
                    ForEach(viewModel.coins) { coin in
                      CoinRowView(coin: coin)
                    }
                }
            }
        }
        
    }
}

//#Preview {
//    AllCoinsView()
//}
