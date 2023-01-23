//
//  LoginViewModel.swift
//  GymRutines
//
//  Created by manuel.moreno.local on 16/11/22.
//

import Foundation
import SwiftUI
import FirebaseAuth

class LoginViewModel: BaseViewModel<MainCoordinatorProtocol>, ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var confirmPassword: String = ""
    @Published var isSignUp: Bool = false
    @Published var showLoginAlert: Bool = false
    @Published var alert: AlertType?

    init(coordinator: MainCoordinatorProtocol) {
        super.init(coordinator: coordinator)
    }

    func logIn() {
        if email != "" && password != "" {
            if isSignUp && password == confirmPassword {
                Auth.auth().createUser(withEmail: email, password: password) {
                    (result, error) in
                    if let result = result, error == nil {
                        print("usuario creado") // TODO: - navigation and login
                    } else {
                        self.alert = .wrongSignUp
                        self.showLoginAlert = true
                    }
                }
            } else if isSignUp && password != confirmPassword {
                self.alert = .notMatchPassword
                showLoginAlert = true
            }
        }
    }

    func forgottenPassword() {

    }
}
