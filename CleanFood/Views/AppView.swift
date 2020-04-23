//
//  AppView.swift
//  CleanFood
//
//  Created by Ewald Kerner on 20.03.20.
//  Copyright © 2020 Ewald Kerner. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Restaurants")
            }
            FavoriteView(item: Articles.example)
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favoriten")
            }
            
            OrderView(item: Articles.example)
                .tabItem {
                    Image(systemName: "cart")
                    Text("Bestellungen")
            }
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Einstellungen")
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
