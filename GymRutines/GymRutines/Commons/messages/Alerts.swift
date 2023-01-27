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
    case wronLogIn
    case emptyEmailOrPassword
}

class ShowAlert {
    func show(alert: AlertType) -> Alert {
        switch alert {
        case .wrongSignUp:
            return Alert(title: Text("Error"), message: Text("Error al registrar el usuario"), dismissButton: .default(Text("Aceptar")))
        case .notMatchPassword:
            return Alert(title: Text("Error"), message: Text("Las contraseñas no coinciden"), dismissButton: .default(Text("Aceptar")))
        case .wronLogIn:
            return Alert(title: Text("Error"), message: Text("No se puede acceder al usuario"), dismissButton: .default(Text("Aceptar")))
        case .emptyEmailOrPassword:
            return Alert(title: Text("Error"), message: Text("Rellene los campos de email y contraseña"), dismissButton: .default(Text("Aceptar")))
        }
    }
}
