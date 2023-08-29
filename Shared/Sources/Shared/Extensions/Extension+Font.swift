//
//  File.swift
//  
//
//  Created by M Alfin Syahruddin on 29/08/23.
//

import SwiftUI

public extension Font {
    static func shared(_ name: Shared.Fonts, size: CGFloat) -> Font {
        let fontName = name.rawValue.split(separator: ".").first!
        return .custom("\(fontName)", size: size)
    }
}

public enum Fonts: String, CaseIterable {
    case pinokio = "Pinokio.otf"
}
 
public extension Fonts {
    static func registerFonts() {
        Fonts.allCases.forEach {
            let font = $0.rawValue.split(separator: ".")
            let fontName = String(font[0])
            let fontExtension = String(font[1])
            registerFont(bundle: .module, fontName: fontName, fontExtension: fontExtension)
        }
    }
    
    private static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {
        guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension),
              let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
              let font = CGFont(fontDataProvider) else {
            fatalError("Couldn't create font from filename: \(fontName) with extension \(fontExtension)")
        }
        
        var error: Unmanaged<CFError>?
        
        CTFontManagerRegisterGraphicsFont(font, &error)
    }
}
