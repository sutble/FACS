//
//  Library.swift
//  FACS
//
//  Created by Aditya Garg on 8/14/17.
//  Copyright © 2017 garg. All rights reserved.
//

import Foundation


class AU: NSObject, NSCoding {
    
    required init(name: String, pdf: String, pictures: [String], videos: [String]){
        
        self.name = name
        self.pdf = pdf
        self.pictures = pictures
        self.videos = videos
    }
    
   
    
    var name : String
    var pdf : String
    var pictures : [String]
    var videos : [String]
    
    func encode(with aCoder: NSCoder){
        aCoder.encode(self.pdf, forKey: "pdf")
    }
    
    required init(coder aDecoder: NSCoder) {
        
        name = aDecoder.decodeObject(forKey: "name") as! String
        pdf = aDecoder.decodeObject(forKey: "pdf") as! String
        pictures = aDecoder.decodeObject(forKey: "pictures") as! [String]
        videos = aDecoder.decodeObject(forKey: "videos") as! [String]
    }

}
