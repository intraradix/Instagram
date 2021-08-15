//
//  File.swift
//  Instagram
//
//  Created by Nat Nat on 29.07.2021.
//

import FirebaseDatabase

public class DatabaseManager {
    
    static let shared = DatabaseManager()
    private let database = Database.database().reference()
    let ref = Database.database(url: "https://myinstagram-fa27c-default-rtdb.europe-west1.firebasedatabase.app")
    public func canCreateNewUser(with email: String, username: String, completion: (Bool) -> Void) {
        completion(true)
        
    }
    //    Inserts new user data to database
    //    Parameters
    //    email
    //    username
    //    completion: Async callback for result if database entry succeeded
    
    public func insertNewUser(with email: String, username: String, completion: @escaping (Bool)-> Void) {
        let key = email.safeDatabaseKey()
        database.child(key).setValue(["username": username]) { error, _ in
            if error == nil {
                // succeeded
                completion(true)
                return
            }
            else {
                // failed
                completion(false)
                return
            }
        }
    }
    
    //MARK: - Private
    
   
}
