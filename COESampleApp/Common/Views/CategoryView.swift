//
//  CategoryView.swift
//  SwiftUITestProject
//
//  Created by Irshad Ahmad on 30/07/23.
//

import Foundation
import SwiftUI

struct CategoryView: View {
    let title: String
    let isActive: Bool
    
    var body: some View {
        VStack(alignment: .center, spacing: 0){
            Text(title)
                .font(.playfairDiaplay(type: .medium, size: 17))
            if isActive {
                Color(.purple).frame(width: 20, height: 1.5)
            }
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(title: "Hello", isActive: true)
    }
}
