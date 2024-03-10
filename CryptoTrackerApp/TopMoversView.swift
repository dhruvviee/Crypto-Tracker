//
//  TopMoversView.swift
//  CryptoTrackerApp
//
//  Created by Dhruv Sharma on 03/02/24.
//

import SwiftUI

struct TopMoversView: View {
    @StateObject var viewModel: HomeViewModel
    var body: some View {
        VStack(alignment: .leading){
            Text("Top Movers")
                .font(.headline)
            ScrollView(.horizontal){
                HStack(spacing: 16){
                    ForEach(viewModel.topMovingCoins) { coin in
                        TopMoversListView(coin: coin)
                    }
                }
            }
        }.padding()
    }
}

#Preview {
    TopMoversView(viewModel: HomeViewModel())
}
