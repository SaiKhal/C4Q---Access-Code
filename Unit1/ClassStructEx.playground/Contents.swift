//: Playground - noun: a place where people can play

import UIKit

//#1
class Giant {
    var name: String
    var weight: Double
    var homePlanet: String
    
    init(name: String, weight: Double, homePlanet: String) {
        self.name = name
        self.weight = weight
        self.homePlanet = homePlanet
    }
}

let fred = Giant(name: "Fred", weight: 340.0, homePlanet: "Earth")

fred.name = "Brick"
fred.weight = 999.2
fred.homePlanet = "Mars"

//#2

struct Alien {
    var name: String
    var height: Double
    var homePlanet: String
}

var bilbo = Alien(name: "Bilbo", height: 1.67, homePlanet: "Venus")

bilbo.name = "Jake"
bilbo.height = 1.42
bilbo.homePlanet = "Saturn"

//#3

let edgar = Giant(name: "Edgar", weight: 520.0, homePlanet: "Earth")
let jason = edgar
jason.name = "Jason"

print(jason.name, edgar.name)

//#4

var charles = Alien(name: "Charles", height: 2.25, homePlanet: "Pluto")
var charlesFromJupiter = charles
charlesFromJupiter.homePlanet = "Jupiter"

print(charles.homePlanet, charlesFromJupiter.homePlanet)

//#5

struct BankAccount {
    var owner: String
    var balance: Double
    
    mutating func deposit(_ amount: Double) {
        balance += amount
    }
    
    mutating func withdraw(_ amount: Double) {
        balance -= amount
    }
}

var joeAccount = BankAccount(owner: "Joe", balance: 100.0)
var joeOtherAccount = joeAccount
joeAccount.withdraw(50.0)


//#6

struct Person {
    var firstName: String
    var lastName: String
    var middleName: String?
    
    func fullName() -> String {
        return "\(self.firstName) \(self.middleName!) \(self.lastName)"
    }
}

let masai = Person(firstName: "Masai", lastName: "Young", middleName: "Khalid")
let dog = Person(firstName: "Jazz", lastName: "Dog", middleName: "My")
//let noMiddle = Person(firstName: "Alpaa", lastName: "Beta")

print(masai.firstName, dog.firstName)
print(dog.fullName(), "|" , masai.fullName())

//#7

class Book {
    var title: String
    var author: String
    var rating: Double
    
    init(title: String, author: String, rating: Double) {
        self.title = title
        self.author = author
        self.rating = rating
    }
    
    func isGood(rating: Double) -> Bool {
        switch rating {
        case 0.0..<7.0:
            return false
        default:
            return true
        }
    }
}


var favBook = Book(title: "The Prince", author: "Old Guy", rating: 10.0)
favBook.isGood(rating: 7.0)

//#8
class Dog {
    
    var start: Int = 0
    var count = 0
    var name: String = "dog"
    var breed: String = "unknown"
    var mood: String = "calm"
    var hungry: Bool = false
    
    init(name: String, breed: String, mood: String, hungry: Bool) {
        self.name = name
        self.breed = breed
        self.mood = mood
        self.hungry = hungry
        self.count += 1
        
    }
    
    init() {
        self.name = "dog"
        self.breed = "unknown"
        self.mood = "calm"
        self.hungry = false
    }
    
    func playFetch() -> Void {
        self.mood = "playful"
        self.hungry = true
        print("Ruff!")
    }
    
    func feed() -> Void {
        switch self.hungry {
        case true:
            print("Woof!")
            self.hungry = false
        default:
            print("Dog doesnt look hungry.")
        }
    }
    
    func toString() -> String {
        return (
            """
            Name: \(self.name)
            Breed: \(self.breed)
            Mood: \(self.mood)
            """)
    }
}


let myDog = Dog(name: "Jazz", breed: "Boston Terrier", mood: "Sleepy", hungry: true) // #2
myDog.count
let myDog2 = Dog(name: "Jaz", breed: "Boston Terrier", mood: "Sleepy", hungry: true)
myDog.playFetch()
myDog.hungry
myDog.mood
myDog.feed()
myDog.feed()
print(myDog.toString())

myDog2.count


//#9
struct FreezingPoint {
    var celsius = 0
    var fahrenheit = 32
    var kelvin = 273
}

struct celsius {
    var celsius = 0.0
    var fahrenheit: Double {
        return (celsius * 1.8) + 32
    }
    var kelvin: Double {
        return celsius + 273
    }
    
    func isBelowFreezing() -> Bool {
        if self.celsius < 0.0 {
            return true
        } else {
            return false
        }
    }
}

var temp = celsius(celsius: 10)
temp.isBelowFreezing()

//#10
struct RGBColor {
    var red: Double
    var green: Double
    var blue: Double
}

let colorDictArray: [[String: Double]] = [["red": 1.0, "green": 0.0, "blue": 0.0],
                                          ["red": 0.0, "green": 1.0, "blue": 0.0],
                                          ["red": 0.0, "green": 0.0, "blue": 1.0],
                                          ["red": 0.6, "green": 0.9, "blue": 0.0],
                                          ["red": 0.2, "green": 0.2, "blue": 0.5],
                                          ["red": 0.5, "green": 0.1, "blue": 0.9]]
var list = [RGBColor]()
for dict in colorDictArray {
    list.append( RGBColor(red: dict["red"]!, green: dict["green"]!, blue: dict["blue"]!) )
}

print(list)

//#11
class Movie {
    var name: String
    var year: Int
    var genre: String
    var cast: [String]
    var description: String
    
    init(name: String, year: Int, genre: String, cast: [String], description: String) {
        self.name = name
        self.year = year
        self.genre = genre
        self.cast = cast
        self.description = description
    }
    
    func blurb() -> String {
        return "\(name) is a \(genre) movie from the year \(year). It starred \(cast[0]) and \(cast[1])."
    }
}

let favMovie = Movie(name: "Space Jam", year: 1994, genre: "Comedy", cast: ["MJ", "Bugs"], description: "Funny basketball movie.")

print(favMovie.blurb())

//#12
func makeMovie(dict: [String:Any]) -> Movie? {
    guard let name = dict["name"] as? String else {
        fatalError()
    }
    guard let year = dict["year"] as? Int else {
        fatalError()
    }
    guard let genre = dict["genre"] as? String else {
        fatalError()
    }
    guard let cast = dict["cast"] as? [String] else {
        fatalError()
    }
    guard let description = dict["description"] as? String else {
        fatalError()
    }
    
    let newMovie = Movie(name: name, year: year, genre: genre, cast: cast, description: description)
    return newMovie
}

let dieHardDict: [String: Any] = ["name": "Die Hard",
                                  "year" : 1987,
                                  "genre": "action",
                                  "cast": ["Bruce Willis", "Alan Rickman"],
                                  "description": "John Mclain saves the day!"]

dump(makeMovie(dict: dieHardDict)!)

//#13
var movies: [[String:Any]] = [
    [
        "name": "Minions",
        "year": 2015,
        "genre": "animation",
        "cast": ["Sandra Bullock", "Jon Hamm", "Michael Keaton"],
        "description": "Evolving from single-celled yellow organisms at the dawn of time, Minions live to serve, but find themselves working for a continual series of unsuccessful masters, from T. Rex to Napoleon. Without a master to grovel for, the Minions fall into a deep depression. But one minion, Kevin, has a plan."
    ],
    [
        "name": "Shrek",
        "year": 2001,
        "genre": "animation",
        "cast": ["Mike Myers", "Eddie Murphy", "Cameron Diaz"],
        "description": "Once upon a time, in a far away swamp, there lived an ogre named Shrek whose precious solitude is suddenly shattered by an invasion of annoying fairy tale characters. They were all banished from their kingdom by the evil Lord Farquaad. Determined to save their home -- not to mention his -- Shrek cuts a deal with Farquaad and sets out to rescue Princess Fiona to be Farquaad\"s bride. Rescuing the Princess may be small compared to her deep, dark secret."
    ],
    [
        "name": "Zootopia",
        "year": 2016,
        "genre": "animation",
        "cast": ["Ginnifer Goodwin", "Jason Bateman", "Idris Elba"],
        "description": "From the largest elephant to the smallest shrew, the city of Zootopia is a mammal metropolis where various animals live and thrive. When Judy Hopps becomes the first rabbit to join the police force, she quickly learns how tough it is to enforce the law."
    ],
    [
        "name": "Avatar",
        "year": 2009,
        "genre": "action",
        "cast": ["Sam Worthington", "Zoe Saldana", "Sigourney Weaver"],
        "description": "On the lush alien world of Pandora live the Na\"vi, beings who appear primitive but are highly evolved. Because the planet\"s environment is poisonous, human/Na\"vi hybrids, called Avatars, must link to human minds to allow for free movement on Pandora. Jake Sully, a paralyzed former Marine, becomes mobile again through one such Avatar and falls in love with a Na\"vi woman. As a bond with her grows, he is drawn into a battle for the survival of her world."
    ],
    [
        "name": "The Dark Knight",
        "year": 2008,
        "genre": "action",
        "cast": ["Christian Bale", "Heath Ledger", "Aaron Eckhart"],
        "description": "With the help of allies Lt. Jim Gordon and DA Harvey Dent, Batman has been able to keep a tight lid on crime in Gotham City. But when a vile young criminal calling himself the Joker suddenly throws the town into chaos, the caped Crusader begins to tread a fine line between heroism and vigilantism."
    ],
    [
        "name": "Transformers",
        "year": 2007,
        "genre": "action",
        "cast": ["Shia LaBeouf", "Megan Fox", "Josh Duhamel"],
        "description": "The fate of humanity is at stake when two races of robots, the good Autobots and the villainous Decepticons, bring their war to Earth. The robots have the ability to change into different mechanical objects as they seek the key to ultimate power. Only a human youth, Sam Witwicky can save the world from total destruction."
    ],
    [
        "name": "Titanic",
        "year": 1997,
        "genre": "drama",
        "cast": ["Leonardo DiCaprio", "Kate Winslet", "Billy Zane"],
        "description": "The ill-fated maiden voyage of the R.M.S. Titanic; the pride and joy of the White Star Line and, at the time, the largest moving object ever built. She was the most luxurious liner of her era -- the \"ship of dreams\" -- which ultimately carried over 1,500 people to their death in the ice cold waters of the North Atlantic in the early hours of April 15, 1912."
    ],
    [
        "name": "The Hunger Games",
        "year": 2012,
        "genre": "drama",
        "cast": ["Jennifer Lawrence", "Josh Hutcherson", "Liam Hemsworth"],
        "description": "Katniss Everdeen voluntarily takes her younger sister\"s place in the Hunger Games, a televised competition in which two teenagers from each of the twelve Districts of Panem are chosen at random to fight to the death."
    ],
    [
        "name": "American Sniper",
        "year": 2014,
        "genre": "drama",
        "cast": ["Bradley Cooper", "Sienna Miller", "Kyle Gallner"],
        "description": "Navy S.E.A.L. sniper Chris Kyle\"s pinpoint accuracy saves countless lives on the battlefield and turns him into a legend. Back home to his wife and kids after four tours of duty, however, Chris finds that it is the war he can\"t leave behind."
    ]
]
print(movies[0]["name"]!)

func makeMovieArray(dict: [[String:Any]]) -> [Movie] {
    var movieArray = [Movie]()
    
    for i in 0..<dict.count {
        guard let name = dict[i]["name"]! as? String else {
            fatalError()
        }
        guard let year = dict[i]["year"]! as? Int else {
            fatalError()
        }
        guard let genre = dict[i]["genre"]! as? String else {
            fatalError()
        }
        guard let cast = dict[i]["cast"]! as? [String] else {
            fatalError()
        }
        guard let description = dict[i]["description"]! as? String else {
            fatalError()
        }
        let newMovie = Movie(name: name, year: year, genre: genre, cast: cast, description: description)
        movieArray.append(newMovie)
    }
    
    return movieArray
}

dump(makeMovieArray(dict: movies))

if 4 as? Int != nil {
    print("Ok")
}
