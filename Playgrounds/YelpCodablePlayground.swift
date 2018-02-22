//: Playground - noun: a place where people can play

import UIKit

let jsonData = """
{
    "businesses": [
        {
            "id": "red-pipe-cafe-forest-hills",
            "name": "Red Pipe Cafe",
            "image_url": "https://s3-media2.fl.yelpcdn.com/bphoto/GzQE9_YSSJKOXFii9qfasA/o.jpg",
            "is_closed": false,
            "url": "https://www.yelp.com/biz/red-pipe-cafe-forest-hills?adjust_creative=T98A-w8Eh-Gm3_VZM9lk9g&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=T98A-w8Eh-Gm3_VZM9lk9g",
            "review_count": 346,
            "categories": [
                {
                    "alias": "coffee",
                    "title": "Coffee & Tea"
                },
                {
                    "alias": "breakfast_brunch",
                    "title": "Breakfast & Brunch"
                },
                {
                    "alias": "vegan",
                    "title": "Vegan"
                }
            ],
            "rating": 4,
            "coordinates": {
                "latitude": 40.7193307280619,
                "longitude": -73.8427593914795
            },
            "transactions": [
                "delivery",
                "pickup",
                "restaurant_reservation"
            ],
            "price": "$",
            "location": {
                "address1": "71-60 Austin St",
                "address2": "",
                "address3": "",
                "city": "Forest Hills",
                "zip_code": "11375",
                "country": "US",
                "state": "NY",
                "display_address": [
                    "71-60 Austin St",
                    "Forest Hills, NY 11375"
                ]
            },
            "phone": "+17182248359",
            "display_phone": "(718) 224-8359",
            "distance": 249.941873918308
        }
    ]
}
""".data(using: .utf8)!

struct Category: Codable {
    let alias: String
    let title: String
}

struct Location: Codable {
    let address1: String
    let address2: String
    let address3: String
    let city: String
    let zipCode: String
    let country: String
    let state: String
    let displayAddress: [String]
    
    enum CodingKeys: String, CodingKey {
        case address1
        case address2
        case address3
        case city
        case zipCode = "zip_code"
        case country
        case state
        case displayAddress = "display_address"
    }
}

struct Coordinate: Codable {
    let latitude: Double
    let longitude: Double
}

struct Place: Codable {
    let id: String
    let name: String
    let imageURL: URL
    let isClosed: Bool
    let url: URL
    let reviewCount: Int
    let categories: [Category]
    let rating: Int
    let transactions: [String]
    let price: String
    let location: Location
    let phone: String
    let displayPhone: String
    let distance: Double
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case imageURL = "image_url"
        case isClosed = "is_closed"
        case url
        case reviewCount = "review_count"
        case categories
        case rating
        case transactions
        case price
        case location
        case phone
        case displayPhone = "display_phone"
        case distance
    }
}

struct Results: Codable {
    let businesses: [Place]
}

do {
    let decoder = JSONDecoder()
    let results = try decoder.decode(Results.self, from: jsonData)
    let businesses = results.businesses
    businesses.forEach{print($0.imageURL)}
} catch {
    print("decoding error: \(error)")
}
