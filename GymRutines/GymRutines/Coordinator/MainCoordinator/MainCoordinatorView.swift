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
        NavigationView {
            getSplashView()
        }
    }
    
    // MARK: - Views
    
    func getSplashView() -> some View {
        
        return SplashView(viewModel: coordinator.splashViewModel)
            
    }
}
