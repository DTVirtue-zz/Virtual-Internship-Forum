//
//  InternshipList.swift
//  Virtual_Internship_Fourm
//
//  Created by D Virtue on 1/26/20.
//  Copyright © 2020 D Virtue. All rights reserved.
//

import SwiftUI

struct InternshipList: View {
    
    //do not touch unless you need to or completley understand the tutorial provided in the google doc
   
    var body: some View {
       
        NavigationView {
        // a stack of views, represented as rows. Each row links to another page: InternshipDetail
        
            VStack {
            //allows rows (can be used for other data besides views) to be stacked vertically
          
                List(InternshipData) { Internship in
                    //initializes list and calls internship object
                
                    NavigationLink(destination: InternshipDetail(Internship: Internship)) {
                        //sets destination as Internship Detail
              
                    InternshipRow(Internship: Internship)
                        //sets up a link inbetween destination and each view (Internshiprow)
               
                    }
            
                }
             
                .navigationBarTitle(Text("Virtual Internship Forum"))
                //places text box above the list
           
            }
        
        }
    
    }
}

struct InternshipList_Previews: PreviewProvider {
  
    static var previews: some View {
      
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
          
            InternshipList()
             
                .previewDevice(PreviewDevice(rawValue: deviceName))
               
                .previewDisplayName(deviceName)
       
        }
   
    }

}
