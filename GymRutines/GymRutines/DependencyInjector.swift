//
//  DependencyInjector.swift
//  GymRutines
//
//  Created by antoniojesus.cazalla on 7/10/22.
//

import Foundation

internal class DependencyInjector {
    
    static let shared = DependencyInjector()
    
    func getSplashViewModel(coordinator: MainCoordinatorProtocol) -> SplashViewModel {
        SplashViewModel(coordinator: coordinator)
    }
}
