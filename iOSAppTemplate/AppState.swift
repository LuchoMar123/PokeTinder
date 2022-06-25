
import SwiftUI

class AppState: ObservableObject {
    
    static let shared = AppState()
    
    enum AppScreens: String {
        case launch
        case main
        case signIn
    }
    
    @Published var currentScreen: AppScreens = .launch
    
}
