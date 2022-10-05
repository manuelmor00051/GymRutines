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
            Image("launch")
                .resizable()
                .ignoresSafeArea()
                .opacity(0.8)
            VStack {
                Text("Crea tu rutina")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.red)
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
