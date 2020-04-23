//
//  Pizza.swift
//  CleanFood
//
//  Created by Ewald Kerner on 16.03.20.
//  Copyright © 2020 Ewald Kerner. All rights reserved.
//

import SwiftUI

struct ChauList: View {
    let item = Bundle.main.decode([ItemSection].self, from: "chau.json")
    var body: some View {
            List {
                ForEach(item) { section in
                    Section(header: Text(section.name).font(.footnote)) {
                        ForEach(section.items) {item in
                            ChauItem(item:item)
                        }
                    }
                }
        }.navigationBarTitle("Chau")
    }
}

struct ChauItem: View {
    @EnvironmentObject var order: Order
        @EnvironmentObject var favorite: Favorite
    var item: Articles
        var body: some View {
            HStack {
                
                Text(item.name)
                    .font(.callout)
                    .fontWeight(.semibold)
                    
                Spacer()
                Text("€\(item.price, specifier: "%.2f")")
                    .font(.footnote)
                    .fontWeight(.semibold)
                   

              

                
                Button(action: {self.order.add(item: self.item)}) {
                    Image(systemName: "cart.badge.plus")
                    .foregroundColor(.blue)
                    .imageScale(.large)
                }.font(.headline)
                
                Button(action: {self.favorite.add(item: self.item)}) {
                    Image(systemName: "heart.circle")
                    .foregroundColor(.blue)
                    .imageScale(.large)
                }.font(.headline)
            }.buttonStyle(BorderlessButtonStyle())
        }
    }

struct ChauItem_Previews: PreviewProvider {
    static let order = Order()
    static let favorite = Favorite()
    static var previews: some View {
        ChauList().environmentObject(order).environmentObject(favorite)
    }
}
