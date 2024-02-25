//
//  AuthorizationViewModel.swift
//  Fit-well-hub
//
//  Created by Vitali Kupratsevich on 19.02.24.
//

import SwiftUI

final class AuthorizationViewModel: ObservableObject {
    @Published var isLinkRegistrationScreen: Bool = false
    @Published var isLinkCreatePasswordScreen: Bool = false
    
    @Published var login: String = ""
    @Published var password: String = ""
    
    @Published var isShowPass: Bool = false

    @Published var isError: Bool = false
    @Published var isErrorEmail: Bool = false
    
    func submit () -> Bool {
        guard login.isValidEmail else {
            isErrorEmail = true
            return false
        }
        
        guard login == "test@test.com" && password == "111" else {
            isError = true
            return false
        }
        
        return true
    }
    
    var isButtonEnabled: Bool {
        login.count > 0 && password.count > 0 && !isError && !isErrorEmail
    }
}