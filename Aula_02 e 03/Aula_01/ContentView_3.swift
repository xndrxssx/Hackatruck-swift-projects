//
//  ContentView_3.swift
//  Aula_01
//
//  Created by Turma01-4 on 18/09/24.
//

import SwiftUI

struct ContentView_3: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Spacer()
                Image(systemName: "dog.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .padding(.leading)
                    .cornerRadius(3.0)

                Spacer()
                VStack{
                    HStack{
                        Text("9\nPosts").font(.callout).multilineTextAlignment(.center).foregroundStyle(.black)
                        Text("77\nSeguidores").font(.callout).multilineTextAlignment(.center).foregroundStyle(.black)
                        Text("7\nSeguindo").font(.callout).multilineTextAlignment(.center).foregroundStyle(.black)
                    }
                    .padding()
                    Text("Edit Profile")
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 200, height: 30)
                        .background(Rectangle().fill(Color(hue: 4.0, saturation: 0.0, brightness: 0.9)).cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/))
                }
                .padding(10)
            }
            VStack{
                Text("Supremacia Caramelo")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                Text("Oi, eu sou um doguinho")
                    
            }
            .padding()
            VStack {
                HStack {
                    Spacer()
                    Image(systemName: "square.grid.3x3.fill")
                        .frame(width: 20.0, height: 20.0)
                    Spacer()
                    Spacer()
                    Spacer()
                    Image(systemName: "play.square.fill")
                        .frame(width: 20.0, height: 20.0)
                        .foregroundColor(.gray)
                    Spacer()
                    Spacer()
                    Spacer()
                    Image(systemName: "person.crop.circle.fill")
                        .frame(width: 20.0, height: 20.0)
                        .foregroundColor(.gray)
                    Spacer()
                }
                .padding()
                .background(Color.clear)
                .overlay(
                    Rectangle()
                        .frame(width: 400, height: 1)
                        .foregroundColor(.gray)
                        .padding(.top, 0)
                        .padding(.horizontal)
                        , alignment: .top
                )
            }
            Grid {
                GridRow {
                    Image("dog1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 130, height: 150)
                    
                    Image("dog2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 130, height: 150)
                    Image("dog3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 130, height: 150)
                }
                GridRow {
                    Image("dog4")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 130, height: 150)
                    Image("dog5")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 130, height: 150)
                    Image("dog6")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 130, height: 150)
                }
                GridRow {
                    Image("dog7")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 130, height: 150)
                    Image("dog8")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 130, height: 150)
                    Image("dog9")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 130, height: 150)
                }
            }
        }
        Spacer()
    }
}

#Preview {
    ContentView_3()
}
