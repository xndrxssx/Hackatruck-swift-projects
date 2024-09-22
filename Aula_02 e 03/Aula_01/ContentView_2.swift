//
//  ContentView_2.swift
//  Aula_01
//
//  Created by Turma01-4 on 18/09/24.
//

import SwiftUI

struct ContentView_2: View {
    
    var body: some View {
        HStack{
            Image("Truck")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .cornerRadius(80)
            Spacer()
            VStack{
                Text("HackaTruck").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).multilineTextAlignment(.center).foregroundStyle(.red)
                Text("77 Universidades").font(.callout).foregroundStyle(.blue)
                Text("HackaTruck").font(.callout).foregroundStyle(.yellow)
            }
            .padding(20.0)
            
        }
        .padding()
    }
}

#Preview {
    ContentView_2()
}
