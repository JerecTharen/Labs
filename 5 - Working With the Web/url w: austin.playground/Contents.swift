import UIKit
import PlaygroundSupport

extension URL {
    func withQueries(_ queries: [String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.compactMap
            { URLQueryItem(name: $0.0, value: $0.1) }
        return components?.url
    }
}

let baseURL = URL(string: "https://api.nasa.gov/planetary/apod?date=2005-2-22&api_key=DEMO_KEY")!

let query: [String: String] = [
    "zip": "84043,us",
    "appid": "628a9b75830bdb44b8d156a663bf98be"
]

let url = baseURL.withQueries(query)!
print(url)
let task = URLSession.shared.dataTask(with: baseURL) { (data, response, error) in
    
    if let data = data,
        let string = String(data: data, encoding: .utf8){
        print(string)
    }
    if let response = response {
        print("Respons: \(response)")
    }
    if let error = error {
        print("Error: \(error)")
    }
}


task.resume()

// rebuild with date picker and an acutal key
