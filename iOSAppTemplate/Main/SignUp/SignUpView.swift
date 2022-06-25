//
//  SignUpView.swift
//  iOSAppTemplate
//
//  Created by MAC11 on 24/06/22.
//

import SwiftUI

struct SignUpView: View {
    
       @StateObject var authViewModel = AuthViewModel()
       @State private var name: String = ""
       @State private var email: String = ""
       @State private var password: String = ""
       
       var body: some View {
           ScrollView {
               VStack(alignment: .leading, spacing: 20) {
                   Text("Sign Up")
                       .font(.system(size: 25, weight: .black))
                   Text("Bienvenido a Poke Tinder encuentrate con tu pokemon favorito")
               }
               .frame(maxWidth: .infinity, alignment: .leading)
               .padding()
               
               VStack(spacing: 25) {
                   TextField("Ingresa tu nombre", text: $name)
                       .padding()
                       .overlay(RoundedRectangle(cornerRadius: 8).stroke(.pink, lineWidth: 1))
                       .keyboardType(.emailAddress)
                   
                   TextField("Ingresa tu email", text: $email)
                       .padding()
                       .overlay(RoundedRectangle(cornerRadius: 8).stroke(.pink, lineWidth: 1))
                       .keyboardType(.emailAddress)
                   
                   SecureField("Ingresa tu contraseña", text: $password)
                       .padding()
                       .overlay(RoundedRectangle(cornerRadius: 8).stroke(.pink, lineWidth: 1))
                   
                   Button {
                       authViewModel.register(name: name, email: email, password: password)
                   } label: {
                       Text("Registrate")
                           .padding()
                           .foregroundColor(.white)
                           .font(.system(size: 18, weight: .bold))
                   }
                   .frame(maxWidth: .infinity)
                   .background(.pink)
                   .cornerRadius(8)
               }.padding()
           }
       }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
