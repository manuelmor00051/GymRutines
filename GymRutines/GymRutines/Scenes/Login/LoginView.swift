//
//  LoginView.swift
//  GymRutines
//
//  Created by manuel.moreno.local on 16/11/22.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var viewModel: LoginViewModel

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
                    Text(viewModel.isSignUp ? "Regístrate" : "Inicia Sesión")
                        .font(.title)
                        .bold()
                        .foregroundColor(Constants.Colors.redApp)
                    Form {
                        Section() {
                            TextField(text: $viewModel.email, prompt: Text("Email")) {
                                Text("Usuario")
                            }
                            .autocapitalization(.none)
                            .autocorrectionDisabled()
                        }
                        SecureField(text: $viewModel.password, prompt: Text("Contraseña")) {
                            Text("Contraseña")
                        }
                        Section() {
                            SecureField(text: $viewModel.confirmPassword, prompt: Text("Confirmar Contraseña")) {
                                Text("Confirmar Contraseña")
                            }
                        }
                    }
                    .frame(height: viewModel.isSignUp ? 260 : 180)
                    .padding(.horizontal, 30)
                    .scrollContentBackground(.hidden)
                    .background(Constants.Colors.backgroundGray.ignoresSafeArea())
                    Button(viewModel.isSignUp ? "Regístrate" : "Iniciar Sesión") {
                        viewModel.logIn()
                    }
                    .buttonStyle(RedButton())
                    .alert(isPresented: $viewModel.showLoginAlert) {
                        ShowAlert().show(alert: viewModel.alert ?? .notMatchPassword)
                    }

                    Button("¿Olvidaste tu contraseña?") {

                    }

                    Button(viewModel.isSignUp ? "Inicia Sesión" : "Regístrate") {
                        if viewModel.isSignUp {
                            viewModel.isSignUp = false
                        } else {
                            viewModel.isSignUp = true
                        }
                    }
                    
                    Spacer(minLength: 60)
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


