import SwiftUI
import Shared

public struct CartPage: View {
    
    @EnvironmentObject var navigator: Navigator
    
    public init() {}
    
    public var body: some View {
        Button("Navigate to Product Page") {
            navigator.navigate(to: .product(route: .productPage))
        }
        .navigationBarTitle("Cart Page")
    }
}
