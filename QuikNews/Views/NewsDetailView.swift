//
//  NewsDetailView.swift
//  QuikNews
//
//  Created by Wafi Choudhury on 4/12/22.
//

import SwiftUI

struct NewsDetailView: View {
    
    @EnvironmentObject var model: ContentModel
    var body: some View {
        
        let new = model.news[0]
        
        VStack (alignment: .leading){
            
            VStack (spacing: 0){
                
                ZStack(alignment: .leading){
                    
                    GeometryReader(content: { geometry in
                        
                        Image(model.news[0].image)
                            .resizable()
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .clipped()
                            .scaledToFill()
                        
                        
                    })
                    .ignoresSafeArea(.all, edges: .top)
                    

                    HStack{
                        Text(new.title).foregroundColor(.white).bold().font(.title2)
                        Spacer()
                        Button {
                            
                        } label: {
                            Image(systemName: "square.and.arrow.up")
                        }.foregroundColor(.white)
                        Spacer()
                    }.padding()                                    
                }
              
            }.preferredColorScheme(.light)
            
            Group{
                
                ZStack{

                    VStack(alignment: .leading){
                        
                        Text(new.bodyHeader ?? "").bold()
                        
                        Spacer()
                        
                        Text(new.body)
                        Spacer()
                        
                        
                    }.padding()
                    
                    
                }
                
                
            }
            
            
        }
        
    }
    struct NewsDetailView_Previews: PreviewProvider {
        static var previews: some View {
            NewsDetailView()
        }
    }
}

