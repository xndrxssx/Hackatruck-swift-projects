//
//  ContentView.swift
//  Aula_02
//
//  Created by Turma01-4 on 19/09/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String="Andressa"
    @State private var showAlert = false
    var body: some View {
            ZStack {
                Image("TRUCK")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .offset(x: 600)
                    .frame(width: 1200.0, height: 1700.0)
                    .blur(radius: 3)
                    .opacity(0.4)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    HStack{
                        Text("00:02")
                            .multilineTextAlignment(.leading)
                            .padding(.trailing, 250.0)
                        Image(systemName: "wifi")
                        Image(systemName: "battery.75percent")
                    }
                    Text("Olá, \(name)")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.vertical, 70)
                    TextField("Digite seu nome:", text: $name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .frame(maxWidth: 300)
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250)
                        .shadow(radius: 20)
                    Image("truck-png")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250)
                        .shadow(radius: 20)
                    
                    Button(action: {showAlert = true})
                    {
                        Text("Entrar")
                            .padding()
                            .background(Color.white)
                            .foregroundColor(.blue)
                            .cornerRadius(10)
                            .padding(.bottom, 100)
                    }
                    .padding(.top, 150.0)
                    .alert(isPresented: $showAlert) {
                        Alert(
                            title: Text("ALERTA !"),
                            message: Text("Você irá iniciar o desafio agora."),
                            dismissButton: .default(Text("OK"))
                        )
                    }
                        
                    }
                    
                }
            }
}


#Preview {
    ContentView()
}
