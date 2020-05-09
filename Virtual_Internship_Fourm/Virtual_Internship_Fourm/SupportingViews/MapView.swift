//
//  MapView.swift
//  Virtual_Internship_Fourm
//
//  Created by D Virtue on 1/26/20.
//  Copyright © 2020 D Virtue. All rights reserved.
//

import SwiftUI

struct MapView: View {
    
      var image3: Image
        //calls image3, reserved for mapLocation
    
        var body: some View {
        //creates a view to contain the image
            
            image3
            //calls image3 to be edited
                
            .clipShape(Rectangle())
            //clips image into a rectangle
            
        }
    
    }

struct MapView_Previews: PreviewProvider {
    
       static var previews: some View {
        
           MapView(image3: Image("mapLocation"))
        
    }
    
}

