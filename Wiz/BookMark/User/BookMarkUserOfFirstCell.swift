//
//  BookMarkUserOfFirstCell.swift
//  Wiz
//
//  Created by brian은석 on 05/09/2019.
//  Copyright © 2019 brian. All rights reserved.
//

import UIKit

class BookMarkUserOfFirstCell: UICollectionViewCell {
    
    let userImageView = UIImageView()
    let userNameLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
   private func setupUI() {
        self.addSubview(userImageView)
    userImageView.translatesAutoresizingMaskIntoConstraints = false
    userImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
    userImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
    userImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    userImageView.heightAnchor.constraint(equalToConstant: self.frame.width).isActive = true
    userImageView.layer.masksToBounds = true
    userImageView.layer.cornerRadius = userImageView.frame.width / 2
    
    self.addSubview(userNameLabel)
    userNameLabel.translatesAutoresizingMaskIntoConstraints = false
    userNameLabel.topAnchor.constraint(equalTo: userImageView.bottomAnchor,constant: 3).isActive = true
    userNameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
    userNameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    userNameLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    userNameLabel.textAlignment = .center
    userNameLabel.font = UIFont.systemFont(ofSize: 13, weight: .ultraLight)
    
    

    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setting(userImage:String,userName:String,indexPath:Int) {
            userImageView.image = UIImage(named: userImage)
            userNameLabel.text = userName
    }
    
}
