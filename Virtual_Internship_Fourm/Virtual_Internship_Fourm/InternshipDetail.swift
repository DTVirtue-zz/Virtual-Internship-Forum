//
//  InternshipDetail.swift
//  Virtual_Internship_Fourm
//
//  Created by D Virtue on 1/26/20.
//  Copyright © 2020 D Virtue. All rights reserved.
//

import SwiftUI

struct InternshipDetail: View {

    var Internship: Internship
    //initalize internship
    
    @State private var scale: CGFloat = 1.0
     //setting up scale variable for tap zoom

    var body: some View {
      
        ScrollView {
            //allows view to be scrollable
            
            VStack {
                //places elements in a vertical stack
                
                RectangleView(image: Internship.image)
                    //initizalize view within vetical stack, pass image to the view
                    
                    .frame(width: UIScreen.main.bounds.width, height: 250)
                    //set frame constraints to the width of the device x 250 pixels
                    
                    .scaledToFit()
                    //scale image to fit frame
    
                CircleImage(image2: Internship.image2)
                //initizalize view within vetical stack, pass image2 to the view
               
                    .offset(x: 0, y: -130)
                    //offset image2 from image so the two are layered
                    
                    .padding(.bottom, -130)
                    //create space between the new Vstack and the view CircleImage

                VStack(alignment: .leading) {
                    //create another Vstack to contain the text
                    
                    Text(Internship.internship)
                        //add in name of internship
                      
                        .font(.title)
                        //changes font
                        
                        .offset(x: 15, y: 0)
                        //moves text away from edge

                    HStack(alignment: .top) {
                    //places elements in a horizontal stack
                        
                        Text(Internship.name)
                            //intert intern's name
                            
                            .font(.subheadline)
                            //change font
                            
                            .offset(x: 20, y: 0)
                            //moves text away from edge
                            
                        
                        Spacer()
                        //fills up all avaible space on the axis of expansion
                        
                        .padding()
                        //fills in space around the view
                        
                    //Text(Internship.link)
                    //.font(.subheadline)
                    //basic addition of links
                        
                    }
                    
                    Divider()
                    //adds in a line (a literal divider)
                    
                    Text(Internship.description)
                        //adds in descriptiom
                        
                        .font(.subheadline)
                        //changes font
                       
                        .offset(x: 15, y: 0)
                        //moves dexcription away from screen
                       
                        .lineLimit(nil)
                        //lets description goes as long as you want
                    
                }
                .padding()
                //fills in space around the view
               
                Spacer()
                //fills up all avaible spacew on the axis of expansion
             
                    .frame(height: 45)
                    //creates even more space inbetween Vstack and MapView
                
           
                MapView(image3: Internship.image3)
                //initizalize view within vetical stack, pass image to the view
                  
                    .frame(width: UIScreen.main.bounds.width, height: 350)
                    //set frame constraints to the width of the device x 350 pixels
                    
                    .scaledToFit()
                    //scales image to fit frame
                    
                    .scaleEffect(scale)
                    //scales image to 1.0 x its size
                    
                    .gesture(
                    //adds a gesture sensor to view
                       
                        TapGesture()
                        //waits for tap
                           
                            .onEnded { _ in
                                
                                self.scale += 0.1
                                //when gesture ends zoom in
                               
                            }
                        
                    )
                    
                    .gesture(
                    //adds a gesture sensor to view
                      
                        LongPressGesture(minimumDuration: 0.5)
                        //waits for long tap
                            
                            .onEnded { _ in
                              
                                self.scale -= 0.1
                                //when gesture ends zoom out
                           
                            }
                        
                    )
                
            }
            
        }
            .navigationBarTitle(Text(Internship.internship), displayMode: .inline)
            //add a title to the top of the page
    }
}

struct InternshipDetail_Previews: PreviewProvider {
    
    static var previews: some View {
        
        InternshipDetail(Internship: InternshipData[0])
        
    }
    
}
