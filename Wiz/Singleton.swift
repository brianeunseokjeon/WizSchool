//
//  Singleton.swift
//  Wiz
//
//  Created by brian은석 on 03/09/2019.
//  Copyright © 2019 brian. All rights reserved.
//

import Foundation

struct User {
    let name: String
    let game: [Game]
}

struct Game {
    let gameImage: String
    let gameTitle: String
    let avatarName: String
    let avatarImage: String
}

class InfoSingleton {
    static let standard = InfoSingleton()
    private init(){}
    var user = [User(name: "크리스", game: [Game(gameImage: "sea", gameTitle: "바다로", avatarName: "크리스", avatarImage: "character"),Game(gameImage: "sea", gameTitle: "구랭구랭바다", avatarName: "구랭", avatarImage: "character"),Game(gameImage: "sea", gameTitle: "gogoSea", avatarName: "씨씨고씨", avatarImage: "character")])]
}

var singleton = InfoSingleton.standard
