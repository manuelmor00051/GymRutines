//
//  ContentView.swift
//  GymRutines
//
//  Created by manuel.moreno.local on 5/10/22.
//

import SwiftUI

struct SplashView: View {
    
    @ObservedObject var viewModel: SplashViewModel

    var body: some View {
        ZStack {
            Color.black
                .opacity(0.99)
                .ignoresSafeArea()
            Image("GymRutines")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .ignoresSafeArea()
                .opacity(0.8)
            VStack {
                Spacer()
                if viewModel.showLoading {
                    ProgressView()
                        .scaleEffect(2)
                        .progressViewStyle(CircularProgressViewStyle(tint: Color.red))
                    Spacer()
                }
            }
        }
        .onAppear {
            viewModel.onAppear()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView(viewModel: SplashViewModel(coordinator: MainCoordinator()))
            .previewDevice("iPhone 13 Pro")
    }
}
