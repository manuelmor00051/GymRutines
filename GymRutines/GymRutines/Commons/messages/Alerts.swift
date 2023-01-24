//
//  Alerts.swift
//  GymRutines
//
//  Created by manuel.moreno.local on 23/1/23.
//

import Foundation
import SwiftUI

enum AlertType {
    case wrongSignUp
    case notMatchPassword
}

class ShowAlert {
    func show(alert: AlertType) -> Alert {
        switch alert {
        case .wrongSignUp:
            return Alert(title: Text("Error"), message: Text("Error al registrar el usuario"), dismissButton: .default(Text("Aceptar")))
        case .notMatchPassword:
            return Alert(title: Text("Error"), message: Text("Las contraseñas no coinciden"), dismissButton: .default(Text("Aceptar")))
        }
    }
}
