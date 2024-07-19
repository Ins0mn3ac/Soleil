//
//  ContentView.swift
//  Soleil
//
//  Created by Luigi Improta on 19/07/24.
//

import SwiftUI

struct CasaView: View {
    var body: some View {
        let first = Color(red: 41/255, green: 112/255, blue: 222/255)
        let second = Color(red: 100/255, green: 202/255, blue: 229/255)
        let third = Color(red: 161/255, green: 247/255, blue: 133/255)
            
            
        ScrollView {
                            
                        
                        ZStack(alignment: .top) {
                            Color.white
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                                .clipShape(RoundedRectangle(cornerRadius: 40))
                            VStack{
                                Image("casa")
                                    .aspectRatio(contentMode: .fit)
                                    .padding(1)
                                Rectangle()
                                    .foregroundStyle(.white)
                                    .frame(width: 200,height: 200)
                                
                            }.padding(.top, 20)
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
    CasaView()
}
