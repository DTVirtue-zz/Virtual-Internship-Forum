//
//  RectangleView.swift
//  Virtual_Internship_Fourm
//
//  Created by D Virtue on 1/26/20.
//  Copyright © 2020 D Virtue. All rights reserved.
//

import SwiftUI

struct RectangleView: View {
    
    var image: Image
    //calls image, reserved for imageName

    
    var body: some View {
    //creates a view to contain the image
        
        image
        //calls image to be edited
            
        .clipShape(Rectangle())
        //clips photo into a rectangle
    }
}

struct RectangleView_Previews: PreviewProvider {
    
    static var previews: some View {
        
          RectangleView(image: Image("imageName"))
        
    }
}

