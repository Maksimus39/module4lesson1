import Foundation
import Combine



// api - key = 745a15f045bc4970a33584efcc6a6cde
class ContentViewModel: ObservableObject {
    private let networkManager: NetworkManager = NetworkManager()
    
    func getNews(title: String) {
        networkManager.getNews(title: title)
    }
}
