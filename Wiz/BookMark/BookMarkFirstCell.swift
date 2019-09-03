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
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let layout = UICollectionViewFlowLayout()
        userCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        userCollectionView.backgroundColor = .white
        layout.scrollDirection = .vertical
        
        self.addSubview(userCollectionView)
        userCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        userCollectionView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        userCollectionView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
        userCollectionView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor).isActive = true
        userCollectionView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor).isActive = true
        
        userCollectionView.dataSource = self
        userCollectionView.delegate = self
        userCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "user")
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension BookMarkFirstCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return singleton.user.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "user", for: indexPath)
        
        return cell
    }
    
    
}

extension BookMarkFirstCell: UICollectionViewDelegateFlowLayout {
    
}