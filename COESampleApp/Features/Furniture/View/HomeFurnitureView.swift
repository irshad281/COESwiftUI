//
//  HomeFurnitureView.swift
//  SwiftUITestProject
//
//  Created by Irshad Ahmad on 29/11/23.
//

import SwiftUI

struct HomeFurnitureView: View {
    
    @State private var searchText = ""
    @StateObject var viewModel = FurnitureViewModel(ProductService())
    
    var body: some View {
        ZStack {
            Color.backgroundColor.ignoresSafeArea()
            
            VStack(alignment: .leading) {
                
                /// TopBar View
                TopBarView()
                
                ScrollView(.vertical, showsIndicators: true) {
                    
                    VStack(alignment: .leading) {
                        
                        /// Search View
                        SearchView(searchText: $searchText) {
                            print("Filter Action")
                        }
                        
                        Text("Categories")
                            .font(.playfairDiaplay(type: .bold, size: 30))
                            .padding(.leading)
                            .padding(.top, -10)
                        
                        /// Categories
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(viewModel.categories) { category in
                                    CategoryView(
                                        title: category.title,
                                        isActive: category.title == viewModel.selectedCategory
                                    )
                                    .padding(.trailing, 10)
                                    .onTapGesture {
                                        viewModel.selectedCategory = category.title
                                    }
                                }
                            }
                        }
                        .padding(.leading)
                        .padding(.top, -10)
                        
                        /// Section with products
                        ScrollView(.vertical) {
                            VStack(alignment: .leading, spacing: .zero) {
                                ForEach(viewModel.sections, id: \.self) { section in
                                    ProductHeaderView(title: section).padding(.leading)
                                    
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        HStack {
                                            ForEach(viewModel.products) { product in
                                                ProductCardView(product: product)
                                                    .padding(.zero)
                                            }
                                        }
                                    }
                                    .padding(.vertical, -16)
                                }
                            }
                        }
                    }
                }
            }
            .onAppear {
                
            }
        }
    }
}

struct HomeFurnitureView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFurnitureView()
    }
}
