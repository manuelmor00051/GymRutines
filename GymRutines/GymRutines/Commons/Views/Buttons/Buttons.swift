//
//  Buttons.swift
//  GymRutines
//
//  Created by manuel.moreno.local on 19/1/23.
//

import SwiftUI

struct RedButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .padding()
                .controlSize(.large)
                .background(Constants.Colors.redApp)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
}
