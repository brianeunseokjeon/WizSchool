//
//  BookMarkGameCell.swift
//  Wiz
//
//  Created by brian은석 on 05/09/2019.
//  Copyright © 2019 brian. All rights reserved.
//

import UIKit

class BookMarkGameCell: UICollectionViewCell {
    let gameImage = UIImageView()
    let gameTitleLabel = UILabel()
    let avatarView = AvatarView()
    let bottomLabel = UILabel()
    let partitionView = UIView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        let topPadding: CGFloat = 10
        let leadingPadding: CGFloat = 20
        let imageframe: CGFloat = self.frame.height - 20
        let views = [gameImage,gameTitleLabel,avatarView,bottomLabel,partitionView]
        views.forEach{
            self.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        gameImage.topAnchor.constraint(equalTo: self.topAnchor,constant: topPadding).isActive = true
        gameImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: leadingPadding).isActive = true
        gameImage.heightAnchor.constraint(equalToConstant: imageframe).isActive = true
        gameImage.widthAnchor.constraint(equalToConstant: imageframe).isActive = true
        gameImage.layer.masksToBounds = true
        gameImage.layer.cornerRadius = 10
        gameImage.image = UIImage(named: "sea")
        
        gameTitleLabel.topAnchor.constraint(equalTo: self.topAnchor,constant: topPadding).isActive = true
        gameTitleLabel.leadingAnchor.constraint(equalTo: gameImage.trailingAnchor, constant: 20).isActive = true
        gameTitleLabel.font = UIFont.systemFont(ofSize: 20, weight: .light)
        gameTitleLabel.text = "웨스턴슈팅"
        
        avatarView.topAnchor.constraint(equalTo: gameTitleLabel.bottomAnchor,constant: 5).isActive = true
        avatarView.leadingAnchor.constraint(equalTo: gameImage.trailingAnchor, constant: 20).isActive = true
        avatarView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true

        avatarView.heightAnchor.constraint(equalToConstant: self.frame.height/6).isActive = true
        
        partitionView.leadingAnchor.constraint(equalTo: gameImage.trailingAnchor, constant: 20).isActive = true
        partitionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5).isActive = true
        partitionView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        partitionView.heightAnchor.constraint(equalToConstant: 2).isActive = true
        partitionView.backgroundColor = #colorLiteral(red: 0.9520927072, green: 0.9562107921, blue: 0.9590254426, alpha: 1)
        
        bottomLabel.leadingAnchor.constraint(equalTo: gameImage.trailingAnchor, constant: 20).isActive = true
        bottomLabel.bottomAnchor.constraint(equalTo: partitionView.topAnchor, constant: -4).isActive = true
        bottomLabel.text = "Game"
        bottomLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        bottomLabel.textColor = #colorLiteral(red: 0.1229970381, green: 0.8766855597, blue: 0.7636540532, alpha: 1)
        
        avatarView.settingAvatar(image: "user1", name: "크리스")
    }
    func settingUI(gameImage:String,gameTitle:String,
                   avatarImage:String,avatarName:String) {
        self.gameImage.image = UIImage(named: gameImage)
        self.gameTitleLabel.text = gameTitle
        avatarView.settingAvatar(image: avatarImage, name: avatarName)
    }
   
    
    
}
