import Foundation


class NetworkManager {
    // 1 создать запрос
    // https://newsapi.org/v2/everything?q=bitcoin&apiKey=745a15f045bc4970a33584efcc6a6cde
    func getNews(title: String) {
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
                print(String(decoding: data, as: UTF8.self))
            }
        }.resume()
    }
    
    

    // 3 получить данные
    // 4 вернуть данные к viewModel
}
