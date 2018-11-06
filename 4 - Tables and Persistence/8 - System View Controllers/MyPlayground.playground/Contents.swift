import UIKit

enum StuffingType: String, Codable {
    case grandmas
    case cornBread
    case grandpas
    case cranberry
    case glutenFree
    
}


struct Stuffing: Codable {
    var type: StuffingType
    var person: String
    
}
enum BreadType: String, Codable {
    case dinnerRolls
    case hawaiinRolls
    case cornBread
    
}

struct Bread: Codable {
    var type: BreadType
    var person: String
}

enum TurkeyPrepType: String, Codable {
    case deepFried
    case baked
    case rotisserie
    case slowCooked
    case stew
    case sousVide
}

struct Turkey: Codable {
    var preperation: TurkeyPrepType
    var person: String
}

enum DessertType: String, Codable {
    case cobbler
    case pie
    case icecream
}

struct Dessert: Codable {
    var preperation: DessertType
    var person: String
}

struct ThankagivingFeast: Codable {
    var stuffing: Stuffing
    var bread: Bread
    var turkey: Turkey
    var dessert: [Dessert]
}
let feast: ThankagivingFeast = ThankagivingFeast(stuffing: Stuffing(type: .cornBread, person: "Doug"), bread: Bread(type: .hawaiinRolls, person: "Joe"), turkey: Turkey(preperation: .sousVide, person: "Toby"), dessert: [Dessert(preperation: .cobbler, person: "Makay"), Dessert(preperation: .pie, person: "Tyler")])

let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
print(documentDirectory)
let fileURL = documentDirectory.appendingPathComponent("ThanksGivingFeast").appendingPathComponent("plist")

/*
let propertyListEncoder = PropertyListEncoder()
let encodeData = try? propertyListEncoder.encode(feast)

try? encodeData?.write(to: fileURL, options: .noFileProtection)
*/

let propertyListDecoder = PropertyListDecoder()
if let retrievedData = try? Data(contentsOf: fileURL) {
    let deocededFeast = try? propertyListDecoder.decode(ThankagivingFeast.self, from: retrievedData)
}

