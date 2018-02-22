//: Playground - noun: a place where people can play

import UIKit

enum InputName: String {
    case numbersArr
    case dates
    case largerDict
    case mixedTypeDict
    case nestedArray
    case nestedDictionary
    case nestedStructure
    case advancedStructure
}

enum Input {
    static let numbersArr = [2, 4, 5, 6, 7, 10]
    static let dates = [Date(), Date(), Date(), Date()]
    static let largerDict = [
        "name" : "Louis",
        "cats_name" : "Miley",
        "location" : "Queens"
    ]
    static let mixedTypeDict: [String : Any] = [
        "name" : "Miley",
        "breed" : "American Shorthair",
        "age" : 5
    ]
    static let nestedArray = [
        [1, 2, 3, 4, 5],
        [10, 20, 30, 40, 50],
        [11, 12, 13, 14]
    ]
    static let nestedDictionary = [
        "cat" : [
            "name" : "Miley"
        ],
        
        "dog" : [
            "name" : "Spot"
        ]
    ]
    static let nestedStructure = [
        "cats" : [
            [     "name" : "Miley",
                  "age"  : 5 ],
            [    "name" : "Bale",
                 "age" : 14]
        ]
    ]
    static let advancedStructure: [String : Any] = [
        "cats" : [
            [    "name" : "Miley",
                 "age"  : 5         ],
            [    "name" : "Bale",
                 "age" : 14        ]    ],
        
        "dogs" : [
            [    "breed" : "Basset Hound",
                 "age"  : 7     ],
            [    "breed" : "Greyhound",
                 "age" : 3    ]    ],
        
        "stats" : [
            "scale" : "miles",
            "distance_to_sun" : 92.96,
            "distance_to_moon" : 238900
        ]
    ]
}

let defaults = UserDefaults.standard

defaults.set(Input.numbersArr, forKey: InputName.numbersArr.rawValue)
defaults.set(Input.dates, forKey: InputName.dates.rawValue)
defaults.set(Input.largerDict, forKey: InputName.largerDict.rawValue)
defaults.set(Input.mixedTypeDict, forKey: InputName.mixedTypeDict.rawValue)
defaults.set(Input.nestedArray, forKey: InputName.nestedArray.rawValue)
defaults.set(Input.nestedDictionary, forKey: InputName.nestedDictionary.rawValue)
defaults.set(Input.nestedStructure, forKey: InputName.nestedStructure.rawValue)
defaults.set(Input.advancedStructure, forKey: InputName.advancedStructure.rawValue)


//defaults.removeObject(forKey: InputName.dates.rawValue)
var numbers = defaults.array(forKey: InputName.numbersArr.rawValue) as! [Int] {
    didSet {
        print("Numbers are", numbers)
    }
}

var numbers2 = defaults.array(forKey: InputName.numbersArr.rawValue) as! [Int]
let dates = defaults.array(forKey: InputName.dates.rawValue) as! [Date]
let largerDict = defaults.dictionary(forKey: InputName.largerDict.rawValue) as! [String: String]
let mixedTypeDict = defaults.dictionary(forKey: InputName.mixedTypeDict.rawValue) as! [String: Any]
let nestedArray = defaults.array(forKey: InputName.nestedArray.rawValue) as! [[Int]]
let nestedDictionary = defaults.dictionary(forKey: InputName.nestedDictionary.rawValue) as! [String: [String: Any]]
let advancedStructure = defaults.dictionary(forKey: InputName.advancedStructure.rawValue) as! [String: Any]

class ReadingPreference: Codable {
    var fontName: String
    var fontSize: Float
    var darkMode: Bool
    
    init(fontName: String, fontSize: Float, darkMode: Bool) {
        self.fontName = fontName
        self.fontSize = fontSize
        self.darkMode = darkMode
    }
}

struct ReadingPreference2: Codable {
    var fontName: String
    var fontSize: Float
    var darkMode: Bool
    
    init(fontName: String, fontSize: Float, darkMode: Bool) {
        self.fontName = fontName
        self.fontSize = fontSize
        self.darkMode = darkMode
    }
}


let preferences = ReadingPreference(fontName: "Menlo", fontSize: 16.0, darkMode: true)

let encodedPreferences = try! PropertyListEncoder().encode(preferences)

defaults.set(encodedPreferences, forKey: "encoded")

let data = defaults.data(forKey: "encoded")
let decodedPreferences = try! PropertyListDecoder().decode(ReadingPreference.self, from: data!)

print(decodedPreferences.fontName)

struct LoggedInUser: Codable {
    var username: String
    var isPremium: Bool // if the user has a paid subscription
    var lastLogin: Date
    
    init(username: String, isPremium: Bool, lastLogin: Date) {
        self.username = username
        self.isPremium = isPremium
        self.lastLogin = lastLogin
    }
}

let logginInUser = LoggedInUser(username: "Sai", isPremium: true, lastLogin: Calendar.current.date(byAdding: .day, value: -1, to: Date())!)

let userData = try! PropertyListEncoder().encode(logginInUser)

defaults.set(userData, forKey: "userData")

let dataToDecode = defaults.data(forKey: "userData")

let user = try! PropertyListDecoder().decode(LoggedInUser.self, from: dataToDecode!)
print(user.lastLogin)

print((0...11).map{$0 * $0})

func tester(x: Int, y: Int...) {
    print(x)
    print(y)
}

tester(x: 5, y: 8097,9,65)

let newDefaults = UserDefaults.standard
newDefaults.set("Middle School", forKey: "Category")
newDefaults.string(forKey: "Category")

struct UserDefaultManager {
    private init() {}
    static let shared = UserDefaultManager()
    
    var defaults = UserDefaults.standard
    
    func setDefault(value: Any, key: String) {
        defaults.set(value, forKey: key)
    }
    
    func fetchDefault(key: String) -> Any {
        return defaults.object(forKey: key)
    }
    
}

UserDefaultManager.shared.setDefault(value: "90", key: "Number")
UserDefaultManager.shared.fetchDefault(key: "Number") as!

