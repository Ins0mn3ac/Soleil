//
//  SwiftUIView.swift
//  Soleil
//
//  Created by Luigi Improta on 19/07/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            DashboardView()
                .tabItem {
                    VStack{
                        Image("dashboardIcon").renderingMode(.template)
                        Text("dashboard")
                    }
                }
            CasaView()
                .tabItem {
                    VStack{
                        Image("casaIcon").renderingMode(.template)
                        Text("casa")
                    }
                }
            PannelliView()
                .tabItem {
                    VStack{
                        Image("pannelliIcon").renderingMode(.template)
                        Text("pannelli")
                    }
                }
            CarbonView()
                .tabItem {
                    VStack{
                        Image("carbonIcon").renderingMode(.template)
                        Text("crediti")
                    }
                }
        }.foregroundStyle(.white)
    }
}

#Preview {
    MainView()
}
