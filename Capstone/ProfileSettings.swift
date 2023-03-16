//
//  ProfileSettings.swift
//  Capstone
//
//  Created by Shea Tipton on 3/16/23.
//

import SwiftUI

struct ProfileSettings: View {
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color(red: 235/255, green: 252/255, blue: 208/255)
                    .ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    Text("Settings")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.largeTitle).bold()
                        .padding(.leading, 25)
                    
                    Spacer()
                        .frame(height: 50)
                    
                    NavigationLink(destination: EditProfile()) {
                        HStack {
                            Image(systemName: "person.fill")
                                .font(.system(size: 35))
                            
                            Text("Edit Profile")
                        }
                        .foregroundColor(.black)
                        .padding(.leading, 30)
                    }
                    
                    Spacer()
                        .frame(height: 20)
                    
                    HStack {
                        Image(systemName: "bell.fill")
                            .font(.system(size: 35))
                        
                        Text("Notifications")
                    }
                    .padding(.leading, 30)
                    
                }
                
            }
        }
    }
}

struct ProfileSettings_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSettings()
    }
}