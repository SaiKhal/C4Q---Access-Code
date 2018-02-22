//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

class NetworkHelper {
    private init() {
        urlSession.configuration.requestCachePolicy = .returnCacheDataElseLoad
    }
    static let manager = NetworkHelper()
    private let urlSession = URLSession(configuration: URLSessionConfiguration.default)
    func performDataTask(with request: URLRequest, completionHandler: @escaping (Data) -> Void, errorHandler: @escaping (Error) -> Void) {
        
        if let cachedResponse = URLCache.shared.cachedResponse(for: request) {
            completionHandler(cachedResponse.data)
            return
        }
        
        self.urlSession.dataTask(with: request){(data: Data?, response: URLResponse?, error: Error?) in
            DispatchQueue.main.async {
                
                guard let data = data else { return }
                if let error = error {
                    errorHandler(error)
                }
                if let responseHTTP = response as? HTTPURLResponse {
                    switch responseHTTP.statusCode {
                    case 401:
                        print("401")
                    default:
                        "Wow"
                    }
                }
                completionHandler(data)
                
            }
            }.resume()
    }
}

struct VenueSearchAPIClient {
    private init() {}
    static let manager = VenueSearchAPIClient()
    func getSearchResults(from urlStr: String, completionHandler: @escaping (VenueSearchResults) -> Void, errorHandler: (Error) -> Void) {
        guard let url = URL(string: urlStr) else {return}
        
//        if let cachedImage = ImageCache.manager.getImage(urlStr: urlStr) {
//            completionHandler(cachedImage)
//            return
//        }
        
        let completion: (Data) -> Void = {(data: Data) in
            do {
                let results = try JSONDecoder().decode(VenueSearchResults.self, from: data)
                completionHandler(results)
            }
            catch {
                print(error)
            }
        }
        NetworkHelper.manager.performDataTask(with: URLRequest(url: url),
                                              completionHandler: completion,
                                              errorHandler: {print($0)})
    }
}

struct VenueSearchResults: Codable {
    let meta: Meta
    let notifications: [Notification]
    let response: Response
}

struct Meta: Codable {
    let code: Int
    let requestID: String
    
    enum CodingKeys: String, CodingKey {
        case code
        case requestID = "requestId"
    }
}

struct Notification: Codable {
    let type: String
    let item: Item
}

struct Item: Codable {
    let unreadCount: Int
}

struct Response: Codable {
    let venues: [Venue]
    let confident: Bool?
    let geocode: Geocode
}

struct Geocode: Codable {
    let what, purpleWhere: String
    let feature: Feature
    
    enum CodingKeys: String, CodingKey {
        case what
        case purpleWhere = "where"
        case feature
    }
}

struct Feature: Codable {
    let cc, name, displayName, matchedName: String
    let highlightedName: String
    let woeType: Int
    let slug, id, longID: String
    let geometry: Geometry
    
    enum CodingKeys: String, CodingKey {
        case cc, name, displayName, matchedName, highlightedName, woeType, slug, id
        case longID = "longId"
        case geometry
    }
}

struct Geometry: Codable {
    let center: Ne
    let bounds: Bounds
}

struct Bounds: Codable {
    let ne, sw: Ne
}

struct Ne: Codable {
    let lat, lng: Double
}

struct Venue: Codable {
    let id, name: String
    let contact: Contact
    let location: Location
    let categories: [Category]
    let verified: Bool
    let stats: Stats
    let allowMenuURLEdit: Bool?
    let beenHere: BeenHere
    let specials: Specials
    let hereNow: HereNow
    let referralID: String
    let venueChains: [VenueChain]
    let hasPerk: Bool
    let venueRatingBlacklisted: Bool?
    let storeID, url: String?
    let menu: Menu?
    let hasMenu: Bool?
    
    enum CodingKeys: String, CodingKey {
        case id, name, contact, location, categories, verified, stats
        case allowMenuURLEdit = "allowMenuUrlEdit"
        case beenHere, specials, hereNow
        case referralID = "referralId"
        case venueChains, hasPerk, venueRatingBlacklisted
        case storeID = "storeId"
        case url, menu, hasMenu
    }
}

struct BeenHere: Codable {
    let lastCheckinExpiredAt: Int
}

struct Category: Codable {
    let id, name, pluralName, shortName: String
    let icon: Icon
    let primary: Bool
}

struct Icon: Codable {
    let purplePrefix, suffix: String
    
    enum CodingKeys: String, CodingKey {
        case purplePrefix = "prefix"
        case suffix
    }
}

struct Contact: Codable {
    let phone, formattedPhone, twitter, instagram: String?
    let facebook, facebookName: String?
}

struct HereNow: Codable {
    let count: Int
    let summary: String
    let groups: [Group]
}

struct Group: Codable {
    let type, name: String
    let count: Int
}

struct Location: Codable {
    let lat, lng: Double
    let labeledLatLngs: [LabeledLatLng]?
    let cc, city, state, country: String
    let formattedAddress: [String]
    let postalCode, address, crossStreet, neighborhood: String?
}

struct LabeledLatLng: Codable {
    let label: String
    let lat, lng: Double
}

struct Menu: Codable {
    let type, label, anchor, url: String
    let mobileURL: String
    let externalURL: String?
    
    enum CodingKeys: String, CodingKey {
        case type, label, anchor, url
        case mobileURL = "mobileUrl"
        case externalURL = "externalUrl"
    }
}

struct Specials: Codable {
    let count: Int
}

struct Stats: Codable {
    let checkinsCount, usersCount, tipCount: Int
}

struct VenueChain: Codable {
    let id: String
}

// Endpoint for error code testing
//let endpointStr = "https://httpstat.us/401"
//let endpointReq = URLRequest(url: URL(string: endpointStr)!)

var endpoint = URLComponents(string: "https://api.foursquare.com/v2/venues/search")
endpoint?.queryItems = [
    URLQueryItem(name: "near", value: "Chicago,IL"),
    URLQueryItem(name: "oauth_token", value: "BAKSUNZT0PTGTTLTWFGGXDGYLGKFBRCPZFU1EA4221TM1DIM"),
    URLQueryItem(name: "v", value: "20180117"), //ENDPOINT USES CURRENT DAYS DATE?
    URLQueryItem(name: "query", value: "tacos")
]
let venueEndpoint = endpoint?.url?.absoluteString
print(venueEndpoint)



//VenueSearchAPIClient.manager.getSearchResults(from: venueEndpoint!,
//                                              completionHandler: {dump($0)},
//                                              errorHandler: {print($0)})

// FourSquare Error Codes
//
// 200 , Success
// 400 , Bad Request
// 401 , Unauthorized
// 410 , Gone ( No longer accept request ). WRONG DATE IN ENDPOINT
// 500 , FourSquare server error

// Get current date in correct format for API endpoint.
let date = Date()

var dateFormatterToString: DateFormatter = {
    let dateFormatterToString = DateFormatter()
    dateFormatterToString.dateFormat = "yyyyMMdd"
    return dateFormatterToString
    
}()

dateFormatterToString.string(from: date)


