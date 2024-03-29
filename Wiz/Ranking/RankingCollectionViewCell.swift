//
//  RankingCollectionViewCell.swift
//  Wiz
//
//  Created by brian은석 on 01/09/2019.
//  Copyright © 2019 brian. All rights reserved.
//

import UIKit

class RankingCollectionViewCell: UICollectionViewCell {
    let titleLabel = UILabel()
    let showingButton = UIButton()
    let firstGradeButton = RankingUI()
    let secondGradeButton = RankingUI()
    let thirdGradeButton = RankingUI()
    var indexPathRow = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    private func setupUI() {
        let padding: CGFloat = 10
        let width:CGFloat = self.frame.width / 5
        let height:CGFloat = self.frame.height / 2
        
        self.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: self.topAnchor,constant: 20).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: padding).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 22).isActive = true
        titleLabel.text = "최고의 크리에이터"
        titleLabel.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        
        self.addSubview(showingButton)
        showingButton.translatesAutoresizingMaskIntoConstraints = false
        showingButton.topAnchor.constraint(equalTo: self.topAnchor,constant: 20).isActive = true
        showingButton.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -padding).isActive = true
        showingButton.heightAnchor.constraint(equalToConstant: 22).isActive = true
        showingButton.setTitle("모두 보기", for: .normal)
        showingButton.setTitleColor(.black, for: .normal)
        showingButton.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .ultraLight)
        showingButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        self.addSubview(firstGradeButton)
        firstGradeButton.translatesAutoresizingMaskIntoConstraints = false
        firstGradeButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        firstGradeButton.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        firstGradeButton.widthAnchor.constraint(equalToConstant: width).isActive = true
        firstGradeButton.heightAnchor.constraint(equalToConstant: height).isActive = true
        
        self.addSubview(secondGradeButton)
        secondGradeButton.translatesAutoresizingMaskIntoConstraints = false
        secondGradeButton.trailingAnchor.constraint(equalTo: firstGradeButton.leadingAnchor,constant: -width/2).isActive = true
        secondGradeButton.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant: -20).isActive = true
        secondGradeButton.widthAnchor.constraint(equalToConstant: width).isActive = true
        secondGradeButton.heightAnchor.constraint(equalToConstant: height).isActive = true
        
        self.addSubview(thirdGradeButton)
        thirdGradeButton.translatesAutoresizingMaskIntoConstraints = false
        thirdGradeButton.leadingAnchor.constraint(equalTo: firstGradeButton.trailingAnchor,constant: width/2).isActive = true
        thirdGradeButton.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant: -20).isActive = true
        thirdGradeButton.widthAnchor.constraint(equalToConstant: width).isActive = true
        thirdGradeButton.heightAnchor.constraint(equalToConstant: height).isActive = true
        
    }
    func setting(indexPathRow:Int) {
        self.indexPathRow = indexPathRow
        if indexPathRow == 0 {
            firstGradeButton.setting(avatarImage: "ranking1", name: "KHL", heartNumber: "512")
            secondGradeButton.setting(avatarImage: "ranking2", name: "박윤서", heartNumber: "462")
            thirdGradeButton.setting(avatarImage: "ranking3", name: "레이", heartNumber: "330")
        } else {
            firstGradeButton.setting(avatarImage: "gameRanking1", name: "물고기 피하기2(수정버전)", heartNumber: "512")
            secondGradeButton.setting(avatarImage: "gameRanking2", name: "타타!치미를 구해줘!", heartNumber: "462")
            thirdGradeButton.setting(avatarImage: "gameRanking3", name: "<SAVE MJ>", heartNumber: "330")
        }
    }
    
    @objc func buttonAction() {
        if indexPathRow == 0 {
            print("첫번째 셀 눌렀당")
        } else {
            print("두번째 셀")
        }
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
