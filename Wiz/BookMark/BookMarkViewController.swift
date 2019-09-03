//
//  BookMarkViewController.swift
//  WizSchool
//
//  Created by brian은석 on 30/08/2019.
//  Copyright © 2019 brian. All rights reserved.
//

import UIKit

class BookMarkViewController: UIViewController {

    var bookMarkCollectionView: UICollectionView!
    var haveItem = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = UICollectionViewFlowLayout()
        bookMarkCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        bookMarkCollectionView.backgroundColor = .white
        layout.scrollDirection = .vertical
        
        view.addSubview(bookMarkCollectionView)
        bookMarkCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        bookMarkCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        bookMarkCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        bookMarkCollectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        bookMarkCollectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        
        bookMarkCollectionView.dataSource = self
        bookMarkCollectionView.delegate = self
        bookMarkCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "bookMark")
    }
    

}
extension BookMarkViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1 + haveItem
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bookMark", for: indexPath)
        
        return cell
    }
    
    
}

extension BookMarkViewController: UICollectionViewDelegateFlowLayout {
    
}
