//
//  APIFunctions.swift
//  Note-App
//
//  Created by Alan Chiem on 8/3/22.
//

import Foundation
import Alamofire

struct Note: Decodable {
    var title: String
    var date: String
    var _id: String
    var note: String
    
}

class APIFunctions{
    
    
    var delegate: DataDelegate?
    
    // allows View controller to access the fuctions by creating an instance
    static let functions = APIFunctions()
    
    func fetchNotes() {
        
        AF.request("http://172.20.20.20:8081/fetch").response { response in
            
            print(response.data!)
            
            
            let data = String(data: response.data!, encoding: .utf8)
            
            self.delegate?.updateArray(newArray: data!)
            
        }
    }

    
    
}
