//
//  UserListView.swift
//  SwiftUITestProject
//
//  Created by Irshad Ahmad on 29/11/23.
//

import Foundation
import SwiftUI

struct UserListView: View {
    @StateObject private var viewModel = UserViewModel(UserService())
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.users, id: \.self) { user in
                    
                    NavigationLink {
                        Text(user.email)
                    } label: {
                        HStack {
                            URLImage(urlString: user.avatar, width: 44, height: 44)
                                .cornerRadius(22)
                            VStack(alignment: .leading, spacing: 4) {
                                Text(user.firstName + " " + user.lastName)
                                Text(user.email)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Followers")
        }
        .onAppear {
            // Do something on view appear here.
        }
    }
}

