//
//  Constants.swift
//  MusicPlayer
//
//  Created by Admin on 21/8/25.
//

import SwiftUI

struct Constants {
    
    struct AppFont {
        
        static let heavyText72 = Font.system(size: 72, weight: .heavy, design: .default)
        
        static let boldText100 = Font.system(size: 100, weight: .bold, design: .default)
        static let boldText88 = Font.system(size: 88, weight: .bold, design: .default)
        static let boldText32 = Font.system(size: 32, weight: .bold, design: .default)
        static let boldText28 = Font.system(size: 28, weight: .bold, design: .default)
        static let boldText20 = Font.system(size: 20, weight: .bold, design: .default)
        static let boldText18 = Font.system(size: 18, weight: .bold, design: .default)
        static let boldText16 = Font.system(size: 16, weight: .bold, design: .default)
        static let boldText14 = Font.system(size: 14, weight: .bold, design: .default)
        static let boldText12 = Font.system(size: 12, weight: .bold, design: .default)
        static let boldText10 = Font.system(size: 10, weight: .bold, design: .default)
        
        static let semiBoldText23 = Font.system(size: 23, weight: .semibold, design: .default)
        static let semiBoldText12 = Font.system(size: 12, weight: .semibold, design: .default)
        
        static let mediumText40 = Font.system(size: 40, weight: .medium, design: .default)
        static let mediumText24 = Font.system(size: 24, weight: .medium, design: .default)
        static let mediumText20 = Font.system(size: 20, weight: .medium, design: .default)
        static let mediumText16 = Font.system(size: 16, weight: .medium, design: .default)
        static let mediumText14 = Font.system(size: 14, weight: .medium, design: .default)
        
        static let regularText64 = Font.system(size: 64, weight: .regular, design: .default)
        
        static let number = Font.system(size: 40, weight: .medium, design: .default)
        static let heading1 = Font.system(size: 36, weight: .medium, design: .default)
        static let heading2 = Font.system(size: 24, weight: .semibold, design: .default)
        static let heading3 = Font.system(size: 20, weight: .semibold, design: .default)
        static let body = Font.system(size: 16, weight: .medium, design: .default)
        static let bodyBold = Font.system(size: 16, weight: .bold, design: .default)
        static let button = Font.system(size: 16, weight: .bold, design: .default)
        static let bodySmall = Font.system(size: 14, weight: .medium, design: .default)
        static let navigation = Font.system(size: 12, weight: .medium, design: .default)
    }
    
    struct AppColor {
        static let greenCheckmark = Color(hex: "#56E456")
        static let defaultColor = Color(hex: "#218EFD")
        static let white = Color(hex: "#FFFFFF")
        static let black = Color(hex: "#000000")
        static let text = Color(hex: "#14221F")
        
        static let linearBackground = LinearGradient(colors: [Color(hex: "#0080FF").opacity(0.8), Color(hex: "#0080FF").opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing)
                                     
                                     
    }
}
