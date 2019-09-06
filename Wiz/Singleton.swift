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
    let avatarImage: String
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
    var user = [User(name: "크리스",avatarImage: "user1", game: [Game(gameImage: "sea", gameTitle: "바다로1", avatarName: "크리스", avatarImage: "user1"),Game(gameImage: "sea", gameTitle: "구랭구랭바다", avatarName: "구랭1", avatarImage: "user1"),Game(gameImage: "sea", gameTitle: "gogoSea", avatarName: "씨씨고씨", avatarImage: "user1")]),User(name: "두번째",avatarImage: "user1", game: [Game(gameImage: "sea", gameTitle: "바다로2", avatarName: "크리스", avatarImage: "user1")]),User(name: "세번째",avatarImage: "user1", game: [Game(gameImage: "sea", gameTitle: "바다로3", avatarName: "크리스", avatarImage: "user1"),Game(gameImage: "sea", gameTitle: "구랭구랭바다", avatarName: "구랭2", avatarImage: "character"),Game(gameImage: "sea", gameTitle: "gogoSea", avatarName: "구랭22", avatarImage: "user1")]),User(name: "네번째",avatarImage: "user1", game: [Game(gameImage: "sea", gameTitle: "구랭구랭바다", avatarName: "구랭3", avatarImage: "user1"),Game(gameImage: "sea", gameTitle: "gogoSea", avatarName: "씨씨고씨네번째", avatarImage: "user1")]),User(name: "", avatarImage: "add", game: [Game(gameImage: "", gameTitle: "", avatarName: "", avatarImage: "")])]
}

var singleton = InfoSingleton.standard
