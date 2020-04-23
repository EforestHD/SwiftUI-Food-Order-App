//
//  TestView.swift
//  CleanFood
//
//  Created by Ewald Kerner on 17.03.20.
//  Copyright © 2020 Ewald Kerner. All rights reserved.
//

import SwiftUI

extension Color {
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)

    static let darkStart = Color(red: 20 / 200, green: 90 / 255, blue: 40 / 255)
    static let darkEnd = Color(red: 25 / 255, green: 30 / 255, blue: 30 / 255)

    static let lightStart = Color(red: 60 / 255, green: 160 / 255, blue: 240 / 255)
    static let lightEnd = Color(red: 30 / 255, green: 80 / 255, blue: 120 / 255)
}

extension LinearGradient {
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}

struct ColorView: View {
    var body: some View {
        ZStack {

            LinearGradient(Color.darkStart, Color.darkEnd)

        }.edgesIgnoringSafeArea(.all)
    }
}
    



struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView()
    }
}
