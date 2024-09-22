//
//  ContentView.swift
//  Aula_01
//
//  Created by Turma01-4 on 18/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack {
                Rectangle()
                    .fill(.red)
                    .frame(width: 100, height: 100)
                    Spacer()
                Rectangle()
                    .fill(.blue)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            }
            Spacer()
            HStack{
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100)
                    Spacer()
                Rectangle()
                    .fill(.yellow)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
