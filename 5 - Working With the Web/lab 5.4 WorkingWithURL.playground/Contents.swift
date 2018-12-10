import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let baseURL = URL(string: "https://www.youtube.com/watch?v=hWNKIGIBffc")

let query: [String: String] = [
    "term" : "clapz after dark",
    "media" : "music"

]

extension URL {
    func withQueries(queries: [String:String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.compactMap { URLQueryItem(name: $0.0, value: $0.1) }
        return components?.url
    }
}
let urlToSearch:URL = (baseURL?.withQueries(queries: query))!

URLSession.shared.dataTask(with: urlToSearch) { (data, response, error) in
    if let data = data,
        let string = String(data: data, encoding: .utf8) {
        print(string)
        PlaygroundPage.current.finishExecution()
    }
    
}.resume()
