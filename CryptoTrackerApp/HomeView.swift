//
//  HomeView.swift
//  CryptoTrackerApp
//
//  Created by Dhruv Sharma on 03/02/24.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack{
            ScrollView {
                // Top Movers View
                TopMoversView(viewModel: viewModel)
                Divider()
                // all coins view
                AllCoinsView(viewModel: viewModel)
            }
            .navigationTitle("Live Prices")
        }
    }
}

#Preview {
    HomeView()
        
}
