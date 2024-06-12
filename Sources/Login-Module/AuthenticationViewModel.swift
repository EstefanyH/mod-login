//
//  File.swift
//  
//
//  Created by Valeria on 11/06/24.
//

import Foundation
import Entity_Module

public enum LoginStatus {
    case success
    case error
}

final public class AuthenticationViewModel: ObservableObject {
    @Published public var loginStatus: LoginStatus = .success
    @Published public var didUpdateLoginStatus: Bool = false
    
    public init() { }
    
    public func login (email: String, password: String ) {
        if email.lowercased() == "swiftbeta.blog@gmail.com" {
            loginStatus = .success
        } else {
            loginStatus = .error
        }
        didUpdateLoginStatus = true
    }
    
    public func singup (email: String, password: String ) {
        print("registrarse...")
    }
    
    public func recoverPassword(email: String) {
        print("recuperar contraseña...")
    }
}
