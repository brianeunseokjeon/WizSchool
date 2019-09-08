//
//  TopCollectionViewCellOfCell.swift
//  Wiz
//
//  Created by brian은석 on 06/09/2019.
//  Copyright © 2019 brian. All rights reserved.
//

import UIKit
// 이미지뷰와 바텀에 타이틀 만 적용
class TopCollectionViewCellOfCell: UICollectionViewCell {
    let imageView = UIImageView()
    let titleLabel = UILabel()
    let imageAndTitleArray = [
        MainTopCell(image: "image1", title: "위즈랩 시작하기 영상보기"),
        MainTopCell(image: "image2", title: "WizSchool 블로그 구경하기"),
        MainTopCell(image: "image3", title: "WizSchool 유튜브 보러가기")]
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
//         setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupUI() {
        self.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        imageView.image = UIImage(named: "image1")
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 15

        
        self.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: self.frame.height/4.5).isActive = true
        titleLabel.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).withAlphaComponent(0.3)
        titleLabel.text = "위즈랩 시작하기 영상보기"
        titleLabel.font = UIFont.systemFont(ofSize: 12)
        titleLabel.textAlignment = .center
        titleLabel.textColor = .white
        titleLabel.layer.masksToBounds = true
        titleLabel.layer.cornerRadius = 15
        // 아래만 코너라디우스
        titleLabel.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]


    }
    func settingUI(indexPathRow:Int) {
        imageView.image = UIImage(named: imageAndTitleArray[indexPathRow].image)
        titleLabel.text = imageAndTitleArray[indexPathRow].title
    }
    
}
