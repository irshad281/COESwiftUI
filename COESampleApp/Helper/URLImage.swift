//
//  URLImage.swift
//  COESampleApp
//
//  Created by Irshad Ahmad on 23/11/23.
//

import SwiftUI

struct URLImage: View {
    let urlString: String
    let width, height: CGFloat?
    
    @State var data: Data?
    
    var body: some View {
        if let data = data, let uiImage = UIImage(data: data) {
            Image(uiImage: uiImage)
                .resizable()
                .frame(width: width, height: height)
        } else {
            Image(systemName: "")
                .resizable()
                .frame(width: width, height: height)
                .onAppear{
                    fetchData()
                }
        }
    }
    
    private func fetchData() {
        guard let url = URL(string: urlString) else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            if let data = data {
                DispatchQueue.main.async {
                    self.data = data
                }
            }
        }.resume()
    }
}

struct URLImage_Previews: PreviewProvider {
    static var previews: some View {
        URLImage(
            urlString: "https://fakestoreapi.com/img/51UDEzMJVpL._AC_UL640_QL65_ML3_.jpg",
            width: 100,
            height: 100
        )
    }
}
