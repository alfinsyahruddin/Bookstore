//
//  File.swift
//  
//
//  Created by M Alfin Syahruddin on 29/08/23.
//

import SwiftUI

public protocol RouterProtocol {
    associatedtype V: View
    
    @ViewBuilder
    func getView(for route: Route) -> V
}
