//
//  TopMoversListView.swift
//  CryptoTrackerApp
//
//  Created by Dhruv Sharma on 03/02/24.
//

import SwiftUI
import Kingfisher

struct TopMoversListView: View {
    let coin: Coin
    var body: some View {
        VStack(alignment: .leading)
        {
            // image
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom,8)
            // coin info
            HStack(spacing: 2){
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text(coin.currentPrice.toCurrency())
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            //coin percentange change
            Text(coin.priceChangePercentage24H.toPercentString())
                .font(.title2)
                .fontWeight(.medium)
                .foregroundStyle(coin.priceChangePercentage24H > 0 ? .green : .red)
        } .frame(width: 140,height: 140)
            .background(Color("BackgroundColor"))
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.systemGray4),lineWidth: 2))
    }
}

//#Preview {
//    TopMoversListView()
//}
