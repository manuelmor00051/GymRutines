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

    func getLoginViewModel(coordinator: MainCoordinatorProtocol) -> LoginViewModel {
        LoginViewModel(coordinator: coordinator)
    }

    func getMainViewModel(coordinator: MainCoordinatorProtocol) -> MainViewModel {
        MainViewModel(coordinator: coordinator)
    }
}
