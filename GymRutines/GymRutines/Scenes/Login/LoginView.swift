//
//  LoginView.swift
//  GymRutines
//
//  Created by manuel.moreno.local on 16/11/22.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var viewModel: LoginViewModel
    @FocusState private var emailIsFocused: Bool
    @FocusState private var passwordIsFocused: Bool
    @FocusState private var confirmPasswordIsFocused: Bool
    private var headerHeight: CGFloat {
        if emailIsFocused || passwordIsFocused || confirmPasswordIsFocused {
            return .zero
        } else {
            return UIScreen.main.bounds.height / 3
        }
    }


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
                .opacity(headerHeight == .zero ? 0 : 1)
                .frame(height: headerHeight)
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
                            .focused($emailIsFocused)
                            .autocapitalization(.none)
                            .autocorrectionDisabled()
                        }
                        SecureField(text: $viewModel.password, prompt: Text("Contraseña")) {
                            Text("Contraseña")
                        }
                        .focused($passwordIsFocused)
                        if viewModel.isSignUp {
                            Section() {
                                SecureField(text: $viewModel.confirmPassword, prompt: Text("Confirmar Contraseña")) {
                                    Text("Confirmar Contraseña")
                                }
                                .focused($confirmPasswordIsFocused)
                            }
                        }
                    }
                    .scrollDisabled(true)
                    .padding(.vertical, -16)
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
                }
                .padding(.bottom)
            }
        }
        .background(Constants.Colors.backgroundGray.ignoresSafeArea())
        .animation(.easeIn(duration: 0.3), value: headerHeight)
        .onTapGesture {
            emailIsFocused = false
            passwordIsFocused = false
            confirmPasswordIsFocused = false
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewModel: LoginViewModel(coordinator: MainCoordinator()))
    }
}


