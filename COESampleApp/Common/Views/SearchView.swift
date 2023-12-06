//
//  SearchView.swift
//  SwiftUITestProject
//
//  Created by Irshad Ahmad on 29/11/23.
//

import Foundation
import SwiftUI

struct SearchView: View {
    @Binding var searchText: String
    var filterAction: (() -> Void)?
    
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                TextField("Search Products", text: $searchText)
            }
            .frame(height: 50)
            .background(Color.white)
            .cornerRadius(12)
            .padding()
            
            Button {
                filterAction?()
            } label: {
                Image(systemName: "text.justify.trailing")
            }
            .frame(width: 50, height: 50)
            .background(Color.white)
            .cornerRadius(12)
            .padding(.trailing)
        }
        .padding(.top, -10)
    }
}
