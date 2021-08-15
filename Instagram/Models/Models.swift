//
//  Models.swift
//  Instagram
//
//  Created by Nat Nat on 08.08.2021.
//

import Foundation


public enum Gender {
    case male, female, other
}

struct User {
    let username: String
    let name: (first: String, last: String)
    let birthDate: Date
    let gender: Gender
    let counts: UserCount
    let joinDate: Date
}

struct UserCount {
    let followers: Int
    let following: Int
    let posts: Int
}

public enum UserPostType {
    case photo, video
    
}

///Represents user posts

public struct UserPost {
    let identifier: String
    let postType: UserPostType
    let thumbnailImage: URL
    let postURL: URL //either video or full res photo
    let caption: String?
    let likeCount: [PostLike]
    let comments: [PostComment]
    let createdDate: Date
    let taggedUsers: [String]
}

struct PostLike {
    let username: String
    let postIdentifier:String
}

struct CommentLike {
    let username: String
    let commentIdentifier:String
}

struct PostComment {
    let username: String
    let text: String
    let createdDate: Date
    let likes: [CommentLike]
    
}
