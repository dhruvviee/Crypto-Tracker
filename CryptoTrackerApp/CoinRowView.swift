//
//  CoinRowView.swift
//  CryptoTrackerApp
//
//  Created by Dhruv Sharma on 04/02/24.
//

import SwiftUI
import Kingfisher

struct CoinRowView: View {
    let coin: Coin
    var body: some View {
        HStack{
            // Market cap rating
            Text("\(coin.marketCapRank ?? 1)")
                .font(.caption)
                .foregroundStyle(.gray)
            // Image
            KFImage(URL(string: coin.image))
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom,8)
            // vstack with name and shortname
            VStack(alignment: .leading,spacing: 4){
                Text(coin.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading,4)
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .padding(.leading,6)
            } .padding(.leading,2)
            Spacer()
            VStack(alignment: .trailing){
                Text(coin.currentPrice.toCurrency())
                    .font(.headline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text(coin.priceChangePercentage24H.toPercentString())
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundStyle(coin.priceChangePercentage24H > 0 ? .green : .red)
            }
            // one more vstack with price and percentage
        }.padding(.horizontal)
            .padding(.vertical)
    }
}

//#Preview {
//    CoinRowView()
//}
