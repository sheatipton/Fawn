//
//  Authenticate.swift
//  Capstone
//
//  Created by Matthew Gayle on 3/16/23.
//

import Foundation
import Firebase
import FirebaseAuth

func signInDonor (email: String, password: String) -> Bool {
    var success = false
    Auth.auth().signIn(withEmail: email, password: password) { result, error in
        print("test")
        if error != nil {
            print(error!.localizedDescription)
            success = false
        } else {
            success = true
        }
    }
    return success
}
