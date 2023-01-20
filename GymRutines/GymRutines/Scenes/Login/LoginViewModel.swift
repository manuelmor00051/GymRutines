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

    init(coordinator: MainCoordinatorProtocol) {
        super.init(coordinator: coordinator)
    }

    func logIn(userName: String, password: String) {
        print(userName)
        print(password)
    }
}
