//
//  AvatarView.swift
//  Wiz
//
//  Created by brian은석 on 30/08/2019.
//  Copyright © 2019 brian. All rights reserved.
//

import UIKit

class AvatarView: UIView {
    let imageView = UIImageView()
    let nameLabel = UILabel()
 
    override func layoutSubviews() {
        super.layoutSubviews()
        setupUI()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
//        setupUI()
    }
    func setupUI() {
        self.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 25).isActive = true
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 13
//        imageView.image = UIImage(named: "character")
      
        self.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor,constant: 10).isActive = true
        nameLabel.trailingAnchor.constraint(lessThanOrEqualTo: self.trailingAnchor).isActive = true

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func settingAvatar(image:String, name:String) {
        imageView.image = UIImage(named: image)
        imageView.contentMode = .scaleAspectFit
        nameLabel.text = name
        nameLabel.font = UIFont.systemFont(ofSize: 12, weight: .ultraLight)
    }
    
}
