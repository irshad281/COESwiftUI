//
//  TopBarView.swift
//  SwiftUITestProject
//
//  Created by Irshad Ahmad on 29/11/23.
//

import Foundation
import SwiftUI

struct TopBarView: View {
    var body: some View {
        HStack {
            Button {
                print("Menu Action")
            } label: {
                Assets.Dashboard.menu
                    .frame(width: 50, height: 50)
                    .background(Color(.white))
                    .cornerRadius(10)
            }
            
            Spacer()
            
            Text("Search Products")
                .font(.playfairDiaplay(type: .medium, size: 20))
            
            Spacer()
            
            Button {
                print(" Profile Action")
            } label: {
                Assets.Dashboard.profileUser
                    .frame(width: 50, height: 50)
                    .background(Color(.white))
                    .cornerRadius(10)
                
            }
        }
        .padding()
    }
}

struct TopBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopBarView()
    }
}
