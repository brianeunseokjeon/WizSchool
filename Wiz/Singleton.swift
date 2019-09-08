//
//  Singleton.swift
//  Wiz
//
//  Created by brian은석 on 03/09/2019.
//  Copyright © 2019 brian. All rights reserved.
//

import Foundation

struct User {
    let avatarName: String
    let avatarImage: String
    let game: [Game]
}

struct Game {
    let gameImage: String
    let gameTitle: String
}
struct MainTopCell {
    let image: String
    let title: String
}

class InfoSingleton {
    static let standard = InfoSingleton()
    private init(){}
    var user = [
        User(avatarName: "크리스",avatarImage: "user1",
             game: [Game(gameImage: "sea", gameTitle: "바다로1"),
                    Game(gameImage: "sea", gameTitle: "구랭구랭바다"),
                    Game(gameImage: "sea", gameTitle: "gogoSea")]),
        User(avatarName: "부링",avatarImage: "user2",
             game: [Game(gameImage: "sea", gameTitle: "바다로2")]),
        User(avatarName: "자자",avatarImage: "user3",
             game: [Game(gameImage: "sea", gameTitle: "바다로3"),
                    Game(gameImage:"sea",gameTitle:"구랭구랭바다"),
                    Game(gameImage: "sea", gameTitle: "gogoSea")]),
        User(avatarName: "비물디",avatarImage: "user4",
             game: [Game(gameImage: "sea", gameTitle: "구랭구랭바다"),
                    Game(gameImage: "sea", gameTitle: "gogoSea")]),
        User(avatarName: "", avatarImage: "add",
             game: [Game(gameImage: "", gameTitle: "")])
    ]
}

var singleton = InfoSingleton.standard
