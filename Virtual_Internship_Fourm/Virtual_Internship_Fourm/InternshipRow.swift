//
//  InternshipRow.swift
//  Virtual_Internship_Fourm
//
//  Created by D Virtue on 1/26/20.
//  Copyright © 2020 D Virtue. All rights reserved.
//

import SwiftUI

struct InternshipRow: View {
  
    var Internship: Internship
        //initalize internship

    var body: some View {
     
        HStack {
        //horizontal stack, places elements horizontally
            
            Internship.image
            //the internship's image (imageName) is placed within the Hstack
                
               
                .resizable()
                //allows the image to be resized into frame's constraints
                
                .frame(width: 50, height: 50)
                //sets frame's constraints to 50x50 pixels
               
                .scaledToFit()
                //scales image to fit the frame
          
            Text(Internship.internship)
            //places internship name within Hstack
           
            Spacer()
            //adds space to the Hstack (for asthetics)
            
            Text(Internship.name)
            //add intern's name to Hstack
             
                .foregroundColor(.gray)
                //changes text color
        
        }
    
    }

}


struct InternshipRow_Previews: PreviewProvider {
  
    static var previews: some View {
      
        Group {
         
            InternshipRow(Internship: InternshipData[0])
           
            InternshipRow(Internship: InternshipData[1])
      
        }
        
        .previewLayout(.fixed(width: 300, height: 100))
    
    }
}
