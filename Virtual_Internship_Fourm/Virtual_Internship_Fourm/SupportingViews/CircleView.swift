//
//  CircleView.swift
//  Virtual_Internship_Fourm
//
//  Created by D Virtue on 1/26/20.
//  Copyright © 2020 D Virtue. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    
    var image2: Image
    //calls image2, reserved for FaceShot

    var body: some View {
    //creates a view to contain the image
       
        image2
        //calls image2 to be edited
            
            .clipShape(Circle())
            //clips image into a circle
            
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            //creates a circle under the original image
            
            .shadow(radius: 10)
            //creates a shadow for the image
            
            
    }
}

struct CircleImage_Previews: PreviewProvider {
   
    static var previews: some View {
       
        CircleImage(image2: Image("faceShot"))
        
    }
}

