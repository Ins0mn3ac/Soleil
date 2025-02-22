//
//  ContentView.swift
//  Soleil
//
//  Created by Luigi Improta on 19/07/24.
//

import SwiftUI

struct PannelliView: View {
    var body: some View {
        let first = Color(red: 238/255, green: 126/255, blue: 46/255)
        let second = Color(red: 179/255, green: 99/255, blue: 100/255)
        let third = Color(red: 247/255, green: 247/255, blue: 133/255)
            
        ScrollView {
                        ZStack(alignment: .top) {
                            Color.white
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                                .clipShape(RoundedRectangle(cornerRadius: 40))
                            VStack{
                                Image("pannelli")
                                    .aspectRatio(contentMode: .fit)
                                    .padding(1)

                                Rectangle()
                                    .foregroundStyle(.white)
                                    .frame(width: 200,height: 200)
                                
                            }.padding(.top, 20)
                                .offset(y: -60)
                        }
                        
                    
                }.background(
                    LinearGradient(gradient: Gradient(colors: [first, second, third]),
                                   startPoint: .topLeading,
                                   endPoint: .center)
                        .edgesIgnoringSafeArea(.all)
                )
        
    }
}

#Preview {
    PannelliView()
}
