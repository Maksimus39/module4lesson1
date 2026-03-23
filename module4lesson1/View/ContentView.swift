import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: ContentViewModel = ContentViewModel()
    
    
    var body: some View {
        Button {
            viewModel.getNews(title: "iPhone")
        } label: {
            Text("Get news")
        }

    }
}

#Preview {
    ContentView()
}
