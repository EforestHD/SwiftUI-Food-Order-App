//
//  CheckoutView.swift
//  CleanFood
//
//  Created by Ewald Kerner on 25.03.20.
//  Copyright © 2020 Ewald Kerner. All rights reserved.
//

//
//  CheckoutView.swift
//  Food
//
//  Created by Ewald Kerner on 20.02.20.
//  Copyright © 2020 Ewald Kerner. All rights reserved.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order: Order
    @State private var addMemberDetails = false
    @State private var memberName = ""
    @State private var showingPaymentAlert = false
    @State private var addCommentDetails = false
    @State private var commentDetails = ""
    
    
    var totalPrice: Double {
        let total = Double(order.total)
        return total
    }
    
    var body: some View {
        Form {
            Section {
                Toggle(isOn: $addMemberDetails.animation()) {
                    Text("Namen eintragen")
                }
                
                
                if addMemberDetails {
                    TextField("Trage deinen Namen ein", text: $memberName)
                }
                
            }
            Section {
                Toggle(isOn: $addCommentDetails.animation()) {
                    Text("Kommentar eintragen")
                }
                
                
                if addCommentDetails {
                    TextField("Trage deinen Kommentar ein", text: $commentDetails)
                }
                
            }
            Section(header: Text("TOTAL: €\(totalPrice, specifier: "%.2f")")
                .font(.largeTitle)) {
                Button("Bestellung bestätigen") {
                    self.showingPaymentAlert.toggle()
                    
                }
                
            }
            
        }
            
        .navigationBarTitle(Text("Bestellung"), displayMode: .inline)
        .alert(isPresented: $showingPaymentAlert) {
            Alert(title: Text("Bestellung angenommen"), message: Text("Die Summe beträgt €\(totalPrice, specifier: "%.2f")"), dismissButton: .default(Text("Ok")))
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static let order = Order()
    static var previews: some View {
        CheckoutView().environmentObject(order)
    }
}
