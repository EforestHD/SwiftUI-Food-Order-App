//
//  MenuView.swift
//  Food
//
//  Created by Ewald Kerner on 26.02.20.
//  Copyright © 2020 Ewald Kerner. All rights reserved.
//


//  needs fetching from bo



import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.purple.edgesIgnoringSafeArea(.all)
                List {
                    VStack(alignment: .leading) {
                        HStack {
                            Image(systemName: "person")
                                .foregroundColor(.gray)
                                .imageScale(.large)
                            Text("Profil (2b implemented)")
                                .foregroundColor(.gray)
                                .font(.headline)
                        }
                        HStack {
                            Image(systemName: "envelope")
                                .foregroundColor(.gray)
                                .imageScale(.large)
                            Text("Nachrichten (2b implemented)")
                                .foregroundColor(.gray)
                                .font(.headline)
                        }
                        .padding(.top, 30)
                        HStack {
                            Image(systemName: "gear")
                                .foregroundColor(.gray)
                                .imageScale(.large)
                            Text("Einstellungen (2b implemented)")
                                .foregroundColor(.gray)
                                .font(.headline)
                        }
                        .padding(.top, 30)
                        Spacer()
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .edgesIgnoringSafeArea(.all)
                    
                }.navigationBarTitle("Einstellungen")
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
