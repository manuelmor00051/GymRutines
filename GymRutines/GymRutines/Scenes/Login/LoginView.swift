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
        ZStack {
            VStack {
                ZStack {
                    Image("Gym")
                    Rectangle()
                        .fill(Constants.Colors.redApp)
                        .frame(height: 30)
                        .rotationEffect(Angle(degrees: -13))
                        .position(x: 1060, y: UIScreen.main.bounds.width)
                    Triangle()
                        .fill(Constants.Colors.backgroundGray)
                        .position(x: 0, y: UIScreen.main.bounds.width)
                        .frame(width: UIScreen.main.bounds.width)
                        .rotationEffect(Angle(degrees: -90.0))
                }
                .frame(height: UIScreen.main.bounds.height / 3)
                VStack {
                    Text("Inicia Sesión")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                    Form {
                        Section() {
                            TextField(text: $userName, prompt: Text("Usuario")) {
                                Text("Usuario")
                            }
                        }
                        SecureField(text: $password, prompt: Text("Contraseña")) {
                            Text("Contraseña")
                        }
                    }
                    .frame(height: 200)
                    .padding(.horizontal)
                    .padding(.horizontal)
                    .scrollContentBackground(.hidden)
                    .background(Constants.Colors.backgroundGray.ignoresSafeArea())

                    Button("Iniciar Sesión") {
                        self.viewModel.logIn(userName: userName, password: password)
                    }
                    .buttonStyle(RedButton())

                    Button("¿Olvidaste tu contraseña?") {

                    }

                    Button("Regístrate") {

                    }
                    Spacer()
                }
                .background(Constants.Colors.backgroundGray.ignoresSafeArea())
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewModel: LoginViewModel(coordinator: MainCoordinator()))
    }
}


