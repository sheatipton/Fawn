//
//  Browse.swift
//  Capstone
//
//  Created by Shea Tipton on 2/23/23.
//

import SwiftUI
import FirebaseStorage
import FirebaseFirestore

struct Browse: View {
    
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 235/255, green: 252/255, blue: 208/255)
                    .ignoresSafeArea()
                
                ScrollView {
                    Spacer()
                        .frame(height: 25)
                    VStack {
                        
                        // create for each using all nonprofit accounts in our database
                        Text("Browse Nonprofits")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.largeTitle).bold()
                            .padding(.leading, 25)
  
                        HStack {
                            NavigationLink(destination: Profile()) {
                                Image("ProfilePlaceholder")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .padding()
                                    .frame(width: 100, height: 100)
                            }
                                           
                                Text("Nonprofit A")
                                    .font(.system(size: 25)).bold()
                            
                            Spacer()
                                .frame(width: .infinity, height: 0)
                            }
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua")
                            .font(.headline)
                            .padding(.leading, 40)
                            .padding(.trailing, 25)
                            .padding(.bottom, 20)
                        
                        HStack {
                                Image("ProfilePlaceholder")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .padding()
                                    .frame(width: 100, height: 100)
                                
                                Text("Nonprofit B")
                                    .font(.system(size: 25)).bold()
                            
                            Spacer()
                                .frame(width: .infinity, height: 0)
                            }
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua")
                            .font(.headline)
                            .padding(.leading, 40)
                            .padding(.trailing, 25)
                            .padding(.bottom, 20)
                        
                        HStack {
                                Image("ProfilePlaceholder")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .padding()
                                    .frame(width: 100, height: 100)
                                
                                Text("Nonprofit C")
                                    .font(.system(size: 25)).bold()
                            
                            Spacer()
                                .frame(width: .infinity, height: 0)
                            }
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua")
                            .font(.headline)
                            .padding(.leading, 40)
                            .padding(.trailing, 25)
                            .padding(.bottom, 20)
                        
                        HStack {
                                Image("ProfilePlaceholder")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .padding()
                                    .frame(width: 100, height: 100)
                                
                                Text("Nonprofit D")
                                    .font(.system(size: 25)).bold()
                            
                            Spacer()
                                .frame(width: .infinity, height: 0)
                            }
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua")
                            .font(.headline)
                            .padding(.leading, 40)
                            .padding(.trailing, 25)
                            .padding(.bottom, 20)
                        
                        
                    }
                }
                
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        NavigationLink(destination: ImagesView()) {
                            Image(systemName: "photo.on.rectangle.angled")
                                .font(.system(size: 35))
                                .foregroundColor(.black)
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: Login()) {
                            Image(systemName: "person.circle")
                                .font(.system(size: 40))
                                .font(.headline)
                                .foregroundColor(.black)
                            
                        }
                    }
                }
            }
        }
        
    }
    
}

struct Browse_Previews: PreviewProvider {
    static var previews: some View {
        Browse()
    }
}
