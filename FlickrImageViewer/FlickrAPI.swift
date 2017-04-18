//
//  FlickrAPI.swift
//  FlickrImageViewer
//
//  Created by iwritecode on 4/17/17.
//  Copyright © 2017 iwritecode. All rights reserved.
//

import Foundation


enum FlickrMethod: String {
    
    case
        GetPhotos = "flickr.galleries.getPhotos",
        GetRecentPhotos = "flickr.photos.getRecent"
    
}

// MARK: - FlickrAPI

struct FlickrAPI {
    
    
    // MARK: Method types
    
    
    
    // MARK: API Constants
    
    private static let baseURLString = "https://api.flickr.com/services/rest"
    private static let APIKey = ""
    
    
    // MARK: API methods

    static func recentPhotosURL() -> URL {
        
        let parameters = ["extras" : "url_m,date_taken"]
        return flickrURL(method: .GetRecentPhotos, parameters: parameters)
        
    }
    
    static func photosURL() -> URL {
        
        let parameters = [
            "extras" : "url_m",
            "galleryID" : "5704-72157622566655097"
        ]
        
        return flickrURL(method: .GetPhotos, parameters: parameters)
    }
    
    private static func flickrURL(method: FlickrMethod, parameters: [String : String]?) -> URL {
        
        var components = URLComponents(string: baseURLString)!
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
        
        components.queryItems = queryItems
        
        return components.url!
        
    }
    
}
