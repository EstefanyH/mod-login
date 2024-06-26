//
//  SwiftUIView.swift
//  
//
//  Created by Valeria on 18/06/24.
//

import SwiftUI
import Component_Module
/*
public struct Login: View {
    @Binding var showSignup: Bool
    @State private var email: String = ""
    @State private var password: String = ""
    public var body: some View {
        VStack(alignment: .leading,
               spacing: 15, content: {
            Spacer(minLength: 0)
            
            Text("Login")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Text("Please sign in to continue")
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
                .padding(.top, -5)
            
            VStack(spacing: 25) {
                CustomTF(sfIcon: "at",
                         hint: "Email ID",
                         value: $email)
                
                CustomTF(sfIcon: "lock",
                         hint: "Password",
                         isPassword: true,
                         value: $password)
                .padding(.top, 5)
                
                Button("Forgot Password?") {
                    
                }
                .font(.callout)
                .fontWeight(.heavy)
                .tint(.appYellow)
                .hSpacing(.trailing)
                
                //Login Button
                GradientButton(title: "Login",
                               icon: "arrow.right") {
                    
                }
                .hSpacing(.trailing)
                .disableWithOpacity(email.isEmpty || password.isEmpty)
                    
            }.padding(.top, 20)
            
            Spacer(minLength: 0)
            
            HStack(spacing: 6) {
                Text("Don't have an account?")
                    .foregroundStyle(.gray)
                
                Button("SignUp") {
                    showSignup.toggle()
                }
                .fontWeight(.bold)
                .tint(.appYellow)
            }
            .font(.callout)
            .hSpacing()
        })
        .padding(.vertical, 15)
        .padding(.horizontal, 25)
        .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    ContentView()
}
*/
