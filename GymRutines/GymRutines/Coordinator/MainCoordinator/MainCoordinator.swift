//
//  MainCoordinator.swift
//  GymRutines
//
//  Created by antoniojesus.cazalla on 7/10/22.
//

import SwiftUI

protocol MainCoordinatorProtocol: BaseCoordinatorProtocol {
    func navigateToLogin()
}

class MainCoordinator: BaseCoordinator, MainCoordinatorProtocol {
    
    // MARK: - Properties
    
    @Published private(set) var splashViewModel: SplashViewModel!
    @Published private(set) var loginViewModel: LoginViewModel!

    @Published var loginIsActive: Bool = false {
        didSet {
            if !loginIsActive {
                loginViewModel = nil
            }
        }
    }
    
    // MARK: Init
    
    override init() {
        super.init()
        self.navigateToSplash()
    }
    
    // MARK: - Navigation methods
    
    func navigateToSplash() {
        splashViewModel = DependencyInjector.shared.getSplashViewModel(coordinator: self)
    }

    func navigateToLogin() {
        loginViewModel = DependencyInjector.shared.getLoginViewModel(coordinator: self)
        loginIsActive = true
    }
}
