//
//  MainCoordinator.swift
//  GymRutines
//
//  Created by antoniojesus.cazalla on 7/10/22.
//

import SwiftUI

protocol MainCoordinatorProtocol: BaseCoordinatorProtocol {
    func navigateToLogin()
    func navigateToMain()
    func popToLogin()
}

class MainCoordinator: BaseCoordinator, MainCoordinatorProtocol {
    
    // MARK: - Properties
    
    @Published private(set) var splashViewModel: SplashViewModel!
    @Published private(set) var loginViewModel: LoginViewModel!
    @Published private(set) var mainViewModel: MainViewModel!

    @Published var loginIsActive: Bool = false {
        didSet {
            if !loginIsActive {
                loginViewModel = nil
            }
        }
    }

    @Published var mainIsActive: Bool = false {
        didSet {
            if !mainIsActive {
                mainViewModel = nil
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

    func navigateToMain() {
        mainViewModel = DependencyInjector.shared.getMainViewModel(coordinator: self)
        mainIsActive = true
    }

    func popToLogin() {
        mainIsActive = false
    }
}
