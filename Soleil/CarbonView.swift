//
//  ContentView.swift
//  Soleil
//
//  Created by Luigi Improta on 19/07/24.
//

import SwiftUI

struct CarbonView: View {
    var body: some View {
        let first = Color(red: Double(224)/255, green: Double(112)/255, blue: Double(222)/255) // 2970DE
        let second = Color(red: Double(52)/255, green: Double(64)/255, blue: Double(189)/255) // 3340BD
        let third = Color(red: Double(161)/255, green: Double(247)/255, blue: Double(129)/255) // A1F785
            
            
        ScrollView {
                        ZStack(alignment: .top) {
                            Color.white
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                                .clipShape(RoundedRectangle(cornerRadius: 40))
                            VStack{
                                Image("carbon")
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
    CarbonView()
}
