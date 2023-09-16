//
//  ContentView.swift
//  FacebookLogin
//
//  Created by Ryan on 15/09/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack {
            Color("BackgroundColor").ignoresSafeArea()
            
            VStack{
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                
                Spacer().frame(height: 64)
                
                VStack {
                    TextField("Email", text: $email)
                        .padding(.top, 24)
                        .padding(.bottom, 12)
                        .padding(.horizontal)
                        .keyboardType(.emailAddress)
                    Divider()
                    SecureField("Password", text: $password)
                        .padding(.top, 12)
                        .padding(.bottom, 24)
                        .padding(.horizontal)
                }.background(.white)
                    .cornerRadius(4.0)
                
                Spacer().frame(height: 16)

                
                Button(action: {}) {
                    Text("Login")
                        .font(.title3)
                        .bold()
                        .foregroundColor(.white)
                        .padding(20)
                        .frame(maxWidth: .infinity)
                        .background(Color("ButtonColor"))
                        .cornerRadius(4.0)
                }
                
                Spacer().frame(height: 64)
                
                VStack(spacing: 8) {
                    Button(action: {}) {
                        Text("Don`t have an account? Sign up")
                            .foregroundColor(.white)
                            .bold()
                    }
                    
                    Button(action: {}) {
                        Text("Forget your password?")
                            .foregroundColor(Color("TextColor"))
                            .bold()
                    }
                }
                
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
