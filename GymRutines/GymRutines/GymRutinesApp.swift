//
//  GymRutinesApp.swift
//  GymRutines
//
//  Created by manuel.moreno.local on 5/10/22.
//

import SwiftUI

@main
struct GymRutinesApp: App {
    @StateObject var coordinator = MainCoordinator()
    
    var body: some Scene {
        WindowGroup {
            MainCoordinatorView(coordinator: coordinator)
        }
    }
}
