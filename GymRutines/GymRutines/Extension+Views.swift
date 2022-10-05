//
//  Extension+Views.swift
//  GymRutines
//
//  Created by Antonio Cazalla on 18/1/23.
//

import SwiftUI

extension View {

    func navigation<Destination: View>(isActive: Binding<Bool>,
                                       @ViewBuilder destination: () -> Destination) -> some View {
        overlay(
            VStack(spacing: .zero) {
                NavigationLink(
                    destination: isActive.wrappedValue ? destination() : nil,
                    isActive: isActive,
                    label: { EmptyView() }
                )
                .isDetailLink(false)
                NavigationLink(destination: EmptyView(), label: {})
            }
        )
    }
}
