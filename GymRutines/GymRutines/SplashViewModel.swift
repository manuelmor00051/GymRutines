//
//  SplashViewModel.swift
//  GymRutines
//
//  Created by manuel.moreno.local on 6/10/22.
//

import Foundation
import Combine
import SwiftUI

class SplashViewModel: BaseViewModel<MainCoordinatorProtocol>, ObservableObject {
    @Published var showLoading = false

    init(coordinator: MainCoordinatorProtocol) {
        super.init(coordinator: coordinator)
    }

    func onAppear() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.showLoading = true
        }
    }
}
