import Foundation

class NetworkManager {
    // 1 создать запрос
    // https://newsapi.org/v2/everything?q=bitcoin&apiKey=745a15f045bc4970a33584efcc6a6cde
    func getNews(title: String, completion: @escaping(NewsResponse?) -> Void) {
        guard let url = URL(string: "https://newsapi.org/v2/everything?q=bitcoin&apiKey=745a15f045bc4970a33584efcc6a6cde") else {
            return
        }
        // 1 создать запрос
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        // 2 выполнить запрос
        URLSession.shared.dataTask(with: request) { data, _, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            //print(resp)
            
            if let data {
                // data -> JSon -> Struct???
                let result = try?  JSONDecoder().decode(NewsResponse.self, from: data)
                
                completion(result)
            }
        }.resume()
    }
    
    
    
    // 3 получить данные
    // 4 вернуть данные к viewModel
}
