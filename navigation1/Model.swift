//
//  Model.swift
//  navigation1
//
//  Created by Гегель Наталия on 30.04.2023.
//

import Foundation

struct Post {
    var title: String
}

func main() {

    let myPost = Post(title: "Мой новый пост")

    let postViewController = PostViewController()

    postViewController.post = myPost
}
