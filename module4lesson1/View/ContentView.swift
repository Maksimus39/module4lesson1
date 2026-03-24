import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: ContentViewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20){
                    ForEach(viewModel.articles) { el in
                        LazyVStack {
                            Text(el.author ?? "")
                            Text(el.content ?? "")
                            Text(el.description ?? "")
                        }
                        .padding()
                        .background(.mint)
                    }
                }
            }
            Button {
                viewModel.getNews(title: "iPhone")
            } label: {
                Text("Get news")
            }
        }
    }
}

#Preview {
    ContentView()
}
