//
//  FlickrAPI.swift
//  FlickrImageViewer
//
//  Created by iwritecode on 4/17/17.
//  Copyright © 2017 iwritecode. All rights reserved.
//

import Foundation

// MARK: - FlickrAPI

struct FlickrAPI {
    
    enum Method: String {
        case
            RecentPhotos = "flickr.photos.getRecent",
            GetPhotos = "flickr.galleries.getPhotos"
    }
    
    private static let baseURLString = "https://api.flickr.com/services/rest"
    private static let APIKey = ""
    
    
    
    private static func flickrURL(method: Method, parameters: [String : String]?) -> URL? {
        
        var components = URLComponents(string: baseURLString)
        var queryItems = [URLQueryItem]()
        
        let baseParameters = [
            "api_key" : APIKey,
            "method" : method.rawValue,
            "format" : "json",
            "nojsoncallback" : "1",
        ]
        
        for (key, value) in baseParameters {
            let item = URLQueryItem(name: key, value: value)
            queryItems.append(item)
        }
        
        if let additionalParameters = parameters {
            for (key, value) in additionalParameters {
                let item = URLQueryItem(name: key, value: value)
                queryItems.append(item)
            }
        }
        
        components?.queryItems = queryItems
        
        return components?.url!
        
    }
    
}
