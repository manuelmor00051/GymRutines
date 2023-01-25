//
//  MainView.swift
//  GymRutines
//
//  Created by manuel.moreno.local on 26/1/23.
//

import SwiftUI

struct MainView: View {

    @ObservedObject var viewModel: MainViewModel

    var body: some View {
        TabView {
            HomeView(viewModel: HomeViewModel(coordinator: viewModel.getCoordinator()!))
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Inicio")
                }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(viewModel: MainViewModel(coordinator: MainCoordinator()))
    }
}
