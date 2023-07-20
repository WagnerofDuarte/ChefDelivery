//
//  CarouselTabView.swift
//  ChefDelivery
//
//  Created by Wagner Duarte on 19/07/23.
//

import SwiftUI

struct CarouselTabView: View {
    
    let ordersMock: [OrderType] = [
        OrderType(id: 1, name: "banner", image: "barbecue-banner"),
        OrderType(id: 2, name: "banner", image: "brazilian-meal-banner"),
        OrderType(id: 3, name: "banner", image: "pokes-banner")
    ]
    
    var body: some View {
        TabView {
            ForEach(ordersMock) { mock in
                CarouselItemView(order: mock)
            }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

struct CarouselTabView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselTabView()
    }
}
