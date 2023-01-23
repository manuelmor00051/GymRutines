//
//  LoginViewModel.swift
//  GymRutines
//
//  Created by manuel.moreno.local on 16/11/22.
//

import Foundation
import SwiftUI

class LoginViewModel: BaseViewModel<MainCoordinatorProtocol>, ObservableObject {
    @Published var userName: String = ""
    @Published var password: String = ""
    @Published var confirmPassword: String = ""
    @Published var isSignUp: Bool = false

    init(coordinator: MainCoordinatorProtocol) {
        super.init(coordinator: coordinator)
    }
}
