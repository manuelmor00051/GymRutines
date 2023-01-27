//
//  HomeViewModel.swift
//  GymRutines
//
//  Created by manuel.moreno.local on 24/1/23.
//

import Foundation
import FirebaseAuth

class HomeViewModel: BaseViewModel<MainCoordinatorProtocol>, ObservableObject {

    @Published var showCloseSessionDialog: Bool = false

    init(coordinator: MainCoordinatorProtocol) {
        super.init(coordinator: coordinator)
    }

    func logOut() {
        do {
            try Auth.auth().signOut()
            self.getCoordinator()?.popToLogin()
        } catch {
            // TODO: - Show an error
        }
    }

    func returnToMain() {
        self.getCoordinator()?.navigateToMain()
    }

    func openCloseSessionDialog() {
        showCloseSessionDialog = true
    }
}

