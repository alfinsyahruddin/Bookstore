import SwiftUI
import Shared

public struct ProductPage: View {
    
    @EnvironmentObject var navigator: Navigator
    
    public init() {}
    
    public var body: some View {
        Button("Navigate to Cart Page") {
            navigator.navigate(to: .cart(route: .cartPage))
        }
        .navigationBarTitle("Product Page")
    }
}
