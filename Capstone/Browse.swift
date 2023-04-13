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
    
    @State private var search = ""
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 230/255, green: 190/255, blue: 150/255).opacity(0.6)
                    .ignoresSafeArea()
                
                ScrollView {
                    Spacer()
                        .frame(height: 30)
                    
                    VStack {
                        Text("Browse")
                            .frame(maxWidth: .infinity, alignment: .center)
                            .font(.largeTitle).bold()
                        
                        Spacer()
                            .frame(height: 20)
                        
                        HStack {
                            TextField("Search by item, organization, ...                    ", text: $search)
                                .font(.headline)
                                .padding(20)
                                .border(Color.black, width: 1)
                                .frame(maxWidth: 300)
                                .padding()
                            
                            NavigationLink(destination: Results().navigationBarBackButtonHidden(true)) {
                                Image(systemName: "arrow.right.circle")
                                    .font(.system(size: 35))
                                    .foregroundColor(.black)
                                    .padding(.trailing, 20)
                            }
                            
                        }
                        
                        Spacer()
                            .frame(height: 30)
                        
                        NavigationLink(destination: OrganizationListView().navigationBarBackButtonHidden(true)) {
                            HStack {
                                Text("Browse Organizations").bold()
                                    .font(.headline)
                                    .foregroundColor(Color.black)
                                    .offset(x: -75)
                                Image(systemName: "arrow.forward")
                                    .foregroundColor(.black)
                                    .font(.system(size: 20))
                                    .offset(x: -75)
                            }
                        }
                        
                    }
                    Spacer()
                        .frame(height: 50)
                    
                    VStack {
                        HStack {
                            
                            // to do: remove tag code and replace with for loop
                            // change destination to tag view
                            
                            
                            // tag 1
                            NavigationLink(destination: TagView().navigationBarBackButtonHidden(true)) {
                                Text("Men's Clothing")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                    .border(Color.black, width: 1)
                            } // end tag 1
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // tag 2
                            NavigationLink(destination: TagView().navigationBarBackButtonHidden(true)) {
                                Text("Women's Clothing")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                    .border(Color.black, width: 1)
                            } // end tag 2
                            
                        }
                        
                        Spacer()
                            .frame(height: 25)
                        
                        HStack {
                            
                            // tag 3
                            NavigationLink(destination: TagView().navigationBarBackButtonHidden(true)) {
                                Text("School Supplies")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                    .border(Color.black, width: 1)
                            } // end tag 3
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // tag 4
                            NavigationLink(destination: TagView().navigationBarBackButtonHidden(true)) {
                                Text("Home")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                    .border(Color.black, width: 1)
                            } // end tag 4
                            
                        }
                        
                        Spacer()
                            .frame(height: 25)
                        
                        HStack {
                            
                            // tag 5
                            NavigationLink(destination: TagView().navigationBarBackButtonHidden(true)) {
                                Text("Accessories")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                    .border(Color.black, width: 1)
                            } // end tag 5
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // tag 6
                            NavigationLink(destination: TagView().navigationBarBackButtonHidden(true)) {
                                Text("Arts & Crafts")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                    .border(Color.black, width: 1)
                            } // end tag 6
                            
                        }
                        
                        Spacer()
                            .frame(height: 25)
                        
                        HStack {
                            
                            // tag 7
                            NavigationLink(destination: TagView().navigationBarBackButtonHidden(true)) {
                                Text("Toys & Games")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                    .border(Color.black, width: 1)
                            } // end tag 7
                            
                            Spacer()
                                .frame(width: 35)
                            
                            // tag 8
                            NavigationLink(destination: TagView().navigationBarBackButtonHidden(true)) {
                                Text("Kitchen")
                                    .frame(minWidth: 170,  maxWidth: 170, minHeight: 85,  maxHeight: 85)
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                                    .border(Color.black, width: 1)
                            } // end tag 8
                        }
                    }
                }
                
                
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: ImagesView().navigationBarBackButtonHidden(true)) {
                            Image(systemName: "photo.on.rectangle.angled")
                                .font(.system(size: 35))
                                .foregroundColor(.black)
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarLeading) {
                        NavigationLink(destination: DonorProfile().navigationBarBackButtonHidden(true)) {
                            Image(systemName: "person.circle")
                                .font(.system(size: 35))
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
