//
//  SwiftUIView.swift
//  
//
//  Created by Valeria on 11/06/24.
//

import SwiftUI

public struct ContentView: View {
    @StateObject var authenticationViewModel = AuthenticationViewModel()
    
    @State var email: String = ""
    @State var password: String = ""
    
    public init() {}
    
    public var body: some View {
        VStack {
            Image("swiftbeta", bundle: .module)
                .resizable()
                .frame(width: 200, height: 200)
            Group {
                HStack {
                    Image(systemName: "envelope.fill")
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                }
                HStack {
                    Image(systemName: "key.fill")
                    TextField("Password", text: $password)
                        .keyboardType(.emailAddress)
                }
            }
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.black, lineWidth: 1)
            }
            .padding(.horizontal ,80)
            Button("Login") {
                authenticationViewModel.login(email: email, password: password)
            }
            .buttonStyle(.bordered)
            .tint(.black)
            Text("Suscribete a SwiftBeta para apoyar el canal")
                .font(.footnote)
                .underline()
                .foregroundStyle(.tertiary)
                .padding(.top, 40)
            Spacer()
        }
        .alert(authenticationViewModel.loginStatus == .success ? "Login Success" : "Login Failed",
               isPresented: $authenticationViewModel.didUpdateLoginStatus) {
            Button("Aceptar") {
                print("dismis alert")
            }
        }
    }
}

#Preview {
    ContentView()
}
