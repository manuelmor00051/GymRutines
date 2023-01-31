//
//  HomeView.swift
//  GymRutines
//
//  Created by manuel.moreno.local on 24/1/23.
//

import SwiftUI

struct HomeView: View {

    @ObservedObject var viewModel: HomeViewModel

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Image("Loading")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: 150)
                    MyProgressView()
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            viewModel.openCloseSessionDialog()
                        } label: {
                            Label("", systemImage: "rectangle.portrait.and.arrow.forward")
                        }
                        .font(.title2)
                        .alert(isPresented: $viewModel.showCloseSessionDialog) {
                            Alert(title: Text("Cerrar Sesión"), message: Text("¿Seguro que desea cerrar sesión?"), primaryButton: .default(Text("SI"), action: viewModel.logOut), secondaryButton: .destructive(Text("NO")))
                        }
                    }
                }
                .frame(width: UIScreen.main.bounds.width)
                .navigationTitle("Tu Progreso")
            }
        }
        .onAppear {
            UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color.accentColor)]

            UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color.accentColor)]
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: HomeViewModel(coordinator: MainCoordinator()))
        
    }
}
