//
//  BaseViewModel.swift
//  GymRutines
//
//  Created by antoniojesus.cazalla on 7/10/22.
//

import SwiftUI

class BaseViewModel<Coordinator>: ViewModelDependencies {
    
    // MARK: Properties
    
    private var coordinator: BaseCoordinatorProtocol?
    @Published var state: ViewState = .loading
    
    // MARK: Init
    
    init(coordinator: BaseCoordinatorProtocol) {
        self.coordinator = coordinator
    }
    
    // MARK: ViewModelDependencies protocol
    
    open func getCoordinator() -> Coordinator? {
        return coordinator as? Coordinator
    }
}

enum ViewState {
    case success
    case loading
    case failure
}

private protocol ViewModelDependencies: AnyObject {
    associatedtype Coordinator
    func getCoordinator() -> Coordinator?
}
