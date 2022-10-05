//
//  LoginView.swift
//  GymRutines
//
//  Created by manuel.moreno.local on 16/11/22.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var viewModel: LoginViewModel
    
    @State var userName: String = ""
    @State var password: String = ""
    
    var body: some View {
        Form {
            TextField(text: $userName, prompt: Text("Required")) {
                Text("Username")
            }
            SecureField(text: $password, prompt: Text("Required")) {
                Text("Password")
            }
        }

        Button("Entrar") {
            self.viewModel.entrar()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewModel: LoginViewModel(coordinator: MainCoordinator()))
    }
}
