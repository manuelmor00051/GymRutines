//
//  MainCoordinatorView.swift
//  GymRutines
//
//  Created by antoniojesus.cazalla on 7/10/22.
//
import SwiftUI

struct MainCoordinatorView: View {

    // MARK: - Properties
    
    @ObservedObject var coordinator: MainCoordinator

    // MARK: - Body
    
    var body: some View {
        getSplashView()
    }
    
    // MARK: - Views
    
    func getSplashView() -> some View {
        NavigationView {
            SplashView(viewModel: coordinator.splashViewModel)
                .navigation(isActive: $coordinator.loginIsActive) {
                    getLoginView()
                }
        }
            
    }

    func getLoginView() -> some View {
        LoginView(viewModel: coordinator.loginViewModel)
    }
}
