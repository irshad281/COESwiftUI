//
//  AppTabBar.swift
//  SwiftUITestProject
//
//  Created by Irshad Ahmad on 29/11/23.
//

import SwiftUI

struct AppTabBar: View {
    var body: some View {
        TabView{
            HomeFurnitureView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            RecepieView()
                .tabItem{
                    Label("Recepies", systemImage: "fork.knife")
                }
            
            
            UserListView()
                .tabItem {
                    Label("Users", systemImage: "person")
                }
        }
    }
}

struct AppTabBar_Previews: PreviewProvider {
    static var previews: some View {
        AppTabBar()
    }
}
