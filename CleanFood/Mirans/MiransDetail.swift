//
//  MiransDetail.swift
//  CleanFood
//
//  Created by Ewald Kerner on 29.03.20.
//  Copyright © 2020 Ewald Kerner. All rights reserved.
//

import SwiftUI

struct MiransDetail: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var buttonBack : some View { Button(action: {
        self.presentationMode.wrappedValue.dismiss()
        
    }) {
        HStack {
            Image(systemName: "arrow.left.circle.fill")
                .foregroundColor(.white)
                .shadow(color: .black, radius: 10)
                .offset(x: -6)
            
        }
        
        }
        
    }
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: -106){
                    ZStack(alignment: .bottomLeading) {
                    Image("mirans-title")
                        .resizable()
                        .scaledToFit()
                        .shadow(color: .gray, radius: 3, y: 7)
                        //.cornerRadius(10)
                        
                    Text("Mirans")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .shadow(color: .black, radius: 3, y: 2)
                        .offset(x: 10)
                    
                    
                    }.edgesIgnoringSafeArea(.all)
                
                
                
                
                MiransList()
                
            }.navigationBarTitle("").navigationBarHidden(true).statusBar(hidden: false)
            
        }.navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: buttonBack)
        
    }
}

struct MiransDetail_Previews: PreviewProvider {
    static var previews: some View {
        MiransDetail()
    }
}
