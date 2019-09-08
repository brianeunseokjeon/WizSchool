//
//  BookMarkFirstCell.swift
//  Wiz
//
//  Created by brian은석 on 03/09/2019.
//  Copyright © 2019 brian. All rights reserved.
//

import UIKit

class BookMarkFirstCell: UICollectionViewCell {
    var userCollectionView: UICollectionView!
    let partitionView = UIView()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let layout = UICollectionViewFlowLayout()
        userCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        userCollectionView.backgroundColor = .white
        layout.scrollDirection = .horizontal

        self.addSubview(userCollectionView)
        userCollectionView.translatesAutoresizingMaskIntoConstraints = false
        userCollectionView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        userCollectionView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
        userCollectionView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor).isActive = true
        userCollectionView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor).isActive = true
        userCollectionView.dataSource = self
        userCollectionView.delegate = self
        userCollectionView.register(BookMarkUserOfFirstCell.self, forCellWithReuseIdentifier: "user")
        userCollectionView.showsHorizontalScrollIndicator = false
        
        
        self.addSubview(partitionView)
        partitionView.translatesAutoresizingMaskIntoConstraints = false
        partitionView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor).isActive = true
        partitionView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor).isActive = true
        partitionView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
        partitionView.heightAnchor.constraint(equalToConstant: 2).isActive = true
        partitionView.backgroundColor = #colorLiteral(red: 0.9520927072, green: 0.9562107921, blue: 0.9590254426, alpha: 1)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension BookMarkFirstCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return singleton.user.count
    }
    
    
    // 마지막에는 add(더 보기) 이미지 싱글톤 유저에 넣어둠!!
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "user", for: indexPath) as! BookMarkUserOfFirstCell
        let userInfo = singleton.user[indexPath.row]
        cell.setting(userImage: userInfo.avatarImage, userName: userInfo.avatarName, indexPath: indexPath.row)
     
        return cell
    }
    
    
}


extension BookMarkFirstCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width:CGFloat = (collectionView.frame.width - 30) / 5
        let height = collectionView.frame.height - 30
        return CGSize(width: width, height: height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
    }
}
