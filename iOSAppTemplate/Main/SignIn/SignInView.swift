//
//  SignInView.swift
//  iOSAppTemplate
//
//  Created by MAC11 on 24/06/22.
//

import SwiftUI

struct SignInView: View {
    @EnvironmentObject var appState: AppState
        
        @StateObject var authViewModel = AuthViewModel()
        
        @State private var email: String = ""
        @State private var password: String = ""
    var body: some View {
        NavigationView {
                    ScrollView {
                        VStack(spacing: 15) {
                            Text("Hola de Nuevo!")
                                .font(.system(size: 25, weight: .bold))
                            Text("Bienvenido de nuevo, te extrañamos")
                                .font(.system(size: 20))
                                .frame(maxWidth: 200)
                            
                            VStack(spacing: 25) {
                                TextField("Ingresa tu email", text: $email)
                                    .padding()
                                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(.pink, lineWidth: 1))
                                    .keyboardType(.emailAddress)
                                
                                SecureField("ingresa tu contraseña", text: $password)
                                    .padding()
                                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(.pink, lineWidth: 1))
                                
                                Button {
                                    authViewModel.login(email: email, password: password)
                                } label: {
                                    Text("Logearse")
                                        .padding()
                                        .foregroundColor(.white)
                                        .font(.system(size: 18, weight: .bold))
                                }
                                .frame(maxWidth: .infinity)
                                .background(.pink)
                                .cornerRadius(8)
                                
                                NavigationLink(destination: SignUpView()) {
                                    Text("No eres miembro? Registrate ahora")
                                }
                            }.padding()
                        }
                    }
                }.accentColor(.pink)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
