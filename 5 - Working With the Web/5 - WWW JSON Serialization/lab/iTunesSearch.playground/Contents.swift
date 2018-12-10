import UIKit
import PlaygroundSupport

// Part One: HTTP, URLs, and URL Session

PlaygroundPage.current.needsIndefiniteExecution = true

   var baseURL = URL(string: "https://itunes.apple.com/search?")!

let query: [String: String] = [
    "term": "Inside Out 2015",
    "media": "movie",
    "lang": "en_us",
    "limit": "10"
]

extension URL {
    
    func withQueries(_ queries: [String: String]) -> URL? {
        
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.compactMap { URLQueryItem(name: $0.0, value: $0.1) }
        return components?.url
    }
}

struct StoreItems: Codable {
    let results = [StoreItem]
}

struct StoreItem: Codable {
    var name: String
    var artist: String
    var kind: String
    var artworkURL: URL
    var description: String
}

enum AdditionalKeys: String, CodingKey {
    case longDescription
}
 
init?(json : [String: Any]) {
    guard let name = json["trackName"] as? String,
        let artist = json["artistName"] as? String,
        let kind = json["kind"] as? String,
        let artworkURLString = json["artworkUrl100"] as? String,
        let artworkURL = URL(string: artworkURLString) else { return nil }
    self.name = name
    self.artist = artist
    self.kind = kind
    self.artwork = artworkURL
    self.description = json["description"] as? String ?? json["longDescription"] as? String ?? ""
    
    
    
}



//struct StoreItems: Codable {
//    let results = [StoreItem]
//}

func fetchItems(matching query: [String: String], completion: @escaping ([StoreItem]?) -> Void) {
      
    guard let url = baseURL.withQueries(query) else {
        completion(nil)
        print("Unable to build URL with supplied queries.")
        return
    }
      
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        let decoder = JSONDecoder()
        if let data = data,
            let storeItems = try? decoder.decode(StoreItem.self, from: data) {
            completion(storeItems.results)
        } else {
            print("Either no data was returned, or data wasnot serialized.")
            completion(nil)
            return
        }
    }
      
    task.resume()
}

//let searchURL = baseURL.withQueries(query)!
//
//URLSession.shared.dataTask(with: searchURL) { (data, response, error) in
//
//    if let data = data,
//        let string = String(data: data, encoding: .utf8) {
//
//        print(string)
//        PlaygroundPage.current.finishExecution()
//    }
//}.resume()

/*:
 
 _Copyright © 2017 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
