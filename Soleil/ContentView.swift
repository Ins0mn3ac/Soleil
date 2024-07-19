//
//  ContentView.swift
//  Soleil
//
//  Created by Luigi Improta on 19/07/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            ZStack{
                Image("toprectangle")
                    .position(x:180.5, y:94)
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                VStack(alignment: .leading){
                    Group{
                        Text("Ciao, ")
                            .font(.custom("montserrat", size: 24))
                        +
                        Text("Anto!")
                            .font(.custom("montserrat", size: 24))
                            .bold()
                            
                    }.foregroundStyle(.white)
                    Image("sol")
                }
            }
        }
        .padding()
    }
}

#Preview {
    MainView()
}
