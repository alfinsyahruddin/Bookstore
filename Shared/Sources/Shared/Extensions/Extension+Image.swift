//
//  File.swift
//  
//
//  Created by M Alfin Syahruddin on 29/08/23.
//

import SwiftUI

public extension Image {
    init(shared name: String) {
        self.init(name, bundle: .module)
    }
}
