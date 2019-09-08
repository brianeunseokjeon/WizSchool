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
    
    // 이때 시점이 superview 레이아웃 잡힘 ㅠㅠ
    override func layoutSubviews() {
        super.layoutSubviews()
        setupUI()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
 
    private func setupUI() {
        guard let superView = superview as? RankingCollectionViewCell else {return print("가드문 오류")}
        
        let nameLabelHeight = superView.frame.height / 10
        let avatarImageViewHeight = superView.frame.width / 5
        let numberOfLikeViewHeight = superView.frame.height / 12
        self.addSubview(avatarImageView)
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        avatarImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        avatarImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        avatarImageView.heightAnchor.constraint(equalToConstant: avatarImageViewHeight).isActive = true
        
        self.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor,constant: 5).isActive = true
        nameLabel.centerXAnchor.constraint(equalTo: avatarImageView.centerXAnchor).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: nameLabelHeight).isActive = true
        nameLabel.widthAnchor.constraint(equalToConstant: avatarImageViewHeight).isActive = true
        nameLabel.textAlignment = .center

        nameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        

        self.addSubview(numberOfLikeView)
        numberOfLikeView.translatesAutoresizingMaskIntoConstraints = false
        numberOfLikeView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        numberOfLikeView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        numberOfLikeView.heightAnchor.constraint(equalToConstant: numberOfLikeViewHeight).isActive = true
        numberOfLikeView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true

    }
    
    func setting(avatarImage:String,name:String,heartNumber:String) {
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
