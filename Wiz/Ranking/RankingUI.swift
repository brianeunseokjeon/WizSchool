//
//  RankingUI.swift
//  Wiz
//
//  Created by brian은석 on 01/09/2019.
//  Copyright © 2019 brian. All rights reserved.
//

import UIKit

class RankingUI: UIButton {
    let avatarImageView = UIImageView()
    let nameLabel = UILabel()
    let numberOfLikeView = AvatarView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    private func setupUI() {
        self.addSubview(avatarImageView)
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        avatarImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        avatarImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        let height = avatarImageView.heightAnchor.constraint(greaterThanOrEqualToConstant: 90)
        height.priority = .init(500)
        height.isActive = true
        
        self.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor,constant: 10).isActive = true
        nameLabel.centerXAnchor.constraint(equalTo: avatarImageView.centerXAnchor).isActive = true
        nameLabel.text = "KHL"
        
        nameLabel.font = UIFont.boldSystemFont(ofSize: 20)
        

        self.addSubview(numberOfLikeView)
        numberOfLikeView.translatesAutoresizingMaskIntoConstraints = false
        numberOfLikeView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 3).isActive = true
        numberOfLikeView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        numberOfLikeView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        numberOfLikeView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true

    }
    
    func setting(avatarImage:String,name:String,heartNumber:String) {
        print("RankingUIWidth",self.frame.width)
        avatarImageView.image = UIImage(named: avatarImage)
         nameLabel.text = name
        nameLabel.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        numberOfLikeView.settingAvatar(image: "heart", name: heartNumber)
        numberOfLikeView.nameLabel.font = UIFont.systemFont(ofSize: 17, weight: .medium)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
