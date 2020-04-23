//
//  Testing.swift
//  CleanFood
//
//  Created by Ewald Kerner on 28.03.20.
//  Copyright © 2020 Ewald Kerner. All rights reserved.
//

import SwiftUI

struct Testing: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var btnBack : some View { Button(action: {
        self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
            Image(systemName: "chevron.left")
                .foregroundColor(.white)
                .shadow(color: .black, radius: 2)
         
            }
        }
    }
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: -100) {
         
                    Image("pizza-fresh-top")
                        .resizable()
                        .scaledToFit()
                        .frame(height: nil)
                        .edgesIgnoringSafeArea(.all)
            VStack {
                List {
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                        }
                        
                    
                    
                }
                
                
            }.navigationBarTitle("").navigationBarHidden(true).statusBar(hidden: false)
            
        }.navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
        
    }
    
}

struct Testing_Previews: PreviewProvider {
    static var previews: some View {
        Testing()
    }
}
