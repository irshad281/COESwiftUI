//
//  RecepieView.swift
//  SwiftUITestProject
//
//  Created by Irshad Ahmad on 29/11/23.
//

import Foundation
import SwiftUI

struct RecepieView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Spacer()
            }
            .padding()
            .navigationViewStyle(.automatic)
            .navigationTitle("Recepies")
        }
    }
}


struct RecepieView_Previews: PreviewProvider {
    static var previews: some View {
        RecepieView()
    }
}
