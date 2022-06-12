
import SwiftUI

class AppState: ObservableObject {
    
    static let shared = AppState()
    
    enum AppScreens: String {
        case launch
        case home
        case profile
        case options
    }
    
    @Published var currentScreen: AppScreens = .launch
    
}
