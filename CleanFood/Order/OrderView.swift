//
//  OrderView.swift
//  CleanFood
//
//  Created by Ewald Kerner on 17.03.20.
//  Copyright © 2020 Ewald Kerner. All rights reserved.
//

import SwiftUI

class Order: ObservableObject {
    @Published var items = [Articles]()
    var total: Float {
        if items.count > 0 {
            return items.reduce(0) { $0 + $1.price}
        } else {
            return 0
        }
    }
    func add(item: Articles) {
        items.append(item)
    }
    func remove(item: Articles) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
        }
    }
}

struct OrderView: View {
    @EnvironmentObject var order: Order
    @EnvironmentObject var favorite: Favorite
    var item: Articles
    var body: some View {
        NavigationView {
            List {
                ForEach(order.items) { item in
                    HStack {
                        Text(item.name)
                        Spacer()
                        Text("€\(item.price, specifier: "%.2f")")
                    }
                }.onDelete(perform: deleteItems)
                NavigationLink(destination:
                CheckoutView()) {
                    Text("Bestellung abschicken")
                }.disabled(order.items.isEmpty)
            }
        .navigationBarTitle("Bestellungen")
        .listStyle(GroupedListStyle())
        .navigationBarItems(trailing: EditButton())
        }
    }
    func deleteItems(at offsets: IndexSet) {
        order.items.remove(atOffsets: offsets)
    }
}

struct OrderView_Previews: PreviewProvider {
    static let order = Order()
    static let favorite = Favorite()
    static var previews: some View {
        OrderView(item: Articles.example).environmentObject(order).environmentObject(favorite)
    }
}
