//
//  Fonts.swift
//  COESampleApp
//
//  Created by Irshad Ahmad on 23/11/23.
//

import SwiftUI

extension Font {
    static func playfairDiaplay(type: Font.Weight, size: CGFloat) -> Font {
        switch type {
        case .regular:
            return .custom("PlayfairDisplay-Regular", size: size)
            
        case .medium:
            return .custom("PlayfairDisplay-Medium", size: size)
            
        case .semibold:
            return .custom("PlayfairDisplay-SemiBold", size: size)
            
        case .bold:
            return .custom("PlayfairDisplay-Bold", size: size)
            
        default:
            return .custom("PlayfairDisplay-Regular", size: size)
        }
    }
}
