//
//  ContentView.swift
//  CleanFood
//
//  Created by Ewald Kerner on 16.03.20.
//  Copyright © 2020 Ewald Kerner. All rights reserved.
//

import SwiftUI




struct ContentView: View {
    @State var showSplash = true
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 15) {
                        MiransView()
                        GaripsView()
                        PizzaView()
                        ChauView()
                        HaschView()
                        GaumenschmausView()
                        }.padding(5)
                        .navigationBarTitle("Restaurants")
                          }
                        }
                    }
                }
            }
        
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
