//
//  Internship.swift
//  Virtual_Internship_Fourm
//
//  Created by D Virtue on 1/26/20.
//  Copyright © 2020 D Virtue. All rights reserved.
//

import SwiftUI

//internship object class
//this allows for the creation of individual, custom internships

struct Internship: Hashable, Codable, Identifiable {
   
    //note data goes into the resources folder: including .jpgs (images) and .json (data)
    //images must be .jpg!!!!
    //For better practice in the future: have interns turn in photo of their internship (imageName) and description
    
    var id: Int
    //ID or identification corresponds with position of each internship
    //interships and their associated data are located on the .json file called InternshipData
   
    var internship: String
    //name of the internship
    //ex: LabMiami
   
    fileprivate var imageName: String
    //imageName corresponds with the a .jpg (picture) of the internship
    //image size: 850x850 (pixels)
    
    fileprivate var faceShot: String
    //corresponds with .jpg of intern's face
    //ex: Daniel_Goldstein
    //image size: 400x400 (pixels)
   
    fileprivate var mapLocation: String
    //mapLocation corresponds with location of each internship in the auditorium
    //corresponding number is in red
    //make sure id 1001 coresponds with Map1, etc.
    //Natland provides setup Map, do not fill in data pior to recieving the setup Map to eliminate confusion in the.json file
    //ex: Map1
    //image size: 850x850 (pixels)
    
    var name: String
    //Student's name
    //ex: Daniel Goldstien
    
    var link: String
    //not implemented within the program
    // >(o_o)> good luck figuring this out <(o_o)<
    //advice appears within InternshipDetail where this should be implemented
    
    var description: String
    //description of internship
    
}

extension Internship {
//extends Internship to include image variables
    
    var image: Image {
    //intizalize image
    //type Image
        
        ImageStore.shared.image(name: imageName)
        //stores imageName within var image
        
    }
    
    var image2: Image {
    //intizalize image2
    //type Image
        
          ImageStore.shared.image(name: faceShot)
           //stores faceShot within var image2
        
      }
    
    var image3: Image {
    //intizalize image3
    //type Image
        
             ImageStore.shared.image(name: mapLocation)
               //stores mapLocation within var image3
         }
    
}
