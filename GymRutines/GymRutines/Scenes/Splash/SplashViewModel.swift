//
//  SplashViewModel.swift
//  GymRutines
//
//  Created by manuel.moreno.local on 6/10/22.
//

import Foundation
import SwiftUI

class SplashViewModel: BaseViewModel<MainCoordinatorProtocol>, ObservableObject {
    @Published var showLoading = true

    func onAppear() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.showLoading = false
            self.getCoordinator()?.navigateToLogin()
        }
    }
}
