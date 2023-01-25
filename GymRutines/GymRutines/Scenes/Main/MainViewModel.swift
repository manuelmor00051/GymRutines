//
//  MainViewModel.swift
//  GymRutines
//
//  Created by manuel.moreno.local on 26/1/23.
//

import Foundation

class MainViewModel: BaseViewModel<MainCoordinatorProtocol>, ObservableObject {

    override init(coordinator: BaseCoordinatorProtocol) {
        super.init(coordinator: coordinator)
    }
}
