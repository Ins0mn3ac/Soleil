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
        var popup = false;
            
        ScrollView {
                        ZStack(alignment: .top) {
                            Color.white
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                                .clipShape(RoundedRectangle(cornerRadius: 40))
                            VStack{
                                Image("pannelli")
                                    .aspectRatio(contentMode: .fit)
                                    .padding(1)
                                    .onTapGesture {
                                        popup.toggle()
                                    }
                                Rectangle()
                                    .foregroundStyle(.white)
                                    .frame(width: 200,height: 200)
                                
                            }.padding(.top, 20)
                                .offset(y: -60) 
                            if popup {
                                Image("popup")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 300, height: 300)
                                    .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2)
                                    .onTapGesture {
                                        popup.toggle()
                                    }
                            }
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
