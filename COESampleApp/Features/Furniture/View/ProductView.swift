//
//  ProductView.swift
//  COESampleApp
//
//  Created by Irshad Ahmad on 29/11/23.
//

import SwiftUI

struct ProductCardView: View {
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading) {
            Assets.Dashboard.shoe
                .resizable()
                .frame(width: 200, height: 200)
                .scaledToFill()
                .cornerRadius(12)
                .clipped()
            
            Text(product.title)
                .font(.playfairDiaplay(type: .semibold, size: 17))
                .foregroundColor(.brown)
            Text("$\(product.price.description)")
                .font(.title3)
                .foregroundColor(.black)
        }
        .frame(width: 200)
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .padding(.leading)
    }
}

struct PreviewProvider_ProductCardView: PreviewProvider {
    static var previews: some View {
        ProductCardView(product: Product(id: .zero, title: "Nike Air Zordan", price: 12, description: "", category: "", image: ""))
    }
}

struct ProductHeaderView: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.playfairDiaplay(type: .bold, size: 24))
            .foregroundColor(.brown)
    }
}
