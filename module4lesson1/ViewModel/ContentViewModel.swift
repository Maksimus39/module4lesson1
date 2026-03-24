import Foundation
import Combine



// api - key = 745a15f045bc4970a33584efcc6a6cde
class ContentViewModel: ObservableObject {
    private let networkManager: NetworkManager = NetworkManager()
    @Published var articles: [Article] = [] // main
    
    func getNews(title: String) {
        networkManager.getNews(title: title) { [weak self] response in
            // global
            guard let articles = response?.articles else { return }
            DispatchQueue.main.async {
                self?.articles = articles
            }
        }
    }
}
