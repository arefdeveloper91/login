//
//  ContentView.swift
//  loginFuncional
//
//  Created by Aref Chucri on 04/09/24.
//

import SwiftUI

struct ContentView: View {
    @State private var username : String = ""
    @State private var password : String = ""
    @State private var isAuthenticated : Bool = false
    @State private var LoginError: String?
    
    
    
    var body: some View {
        VStack{
            if isAuthenticated{
                Text("seja bem vindo,\(username)")
                    .font(.largeTitle)
                    .padding()
            }else{
                VStack{
                    Text("iniciar a sessao")
                        .font(.largeTitle)
                        .padding()
                    
                    TextField("Nome de usuario", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    SecureField("senha", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    if let error = LoginError {
                        Text(error)
                            .foregroundColor(.red)
                            .padding()
                    }
                    Button(action: login) {
                        Text("Iniciar sessao")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    .padding()
                }
                .padding()
            }
        }
    }
    
    func login() {
        
        if username == "Usuario" && password == "senha" {
            isAuthenticated = true
            LoginError = nil
        } else {
            LoginError = "nome de usuario incorreto"
        }
        
        #Preview {
            ContentView()
        }
    }
}
