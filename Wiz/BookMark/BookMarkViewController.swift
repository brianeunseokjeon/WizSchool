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
    var haveItem = 5
    
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
//        bookMarkCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "bookMark")
        bookMarkCollectionView.register(BookMarkFirstCell.self, forCellWithReuseIdentifier: "bookMarkFirstCell")

    }
    

}
extension BookMarkViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    enum Partition {
        case users
        case games
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let partition = Partition.init(rawValue: indexPath.row) {
            print("ㅎㅎㅎ",indexPath.row)

            switch partition {
            case .유저:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bookMarkFirstCell", for: indexPath) as! BookMarkFirstCell
                cell.backgroundColor = .green
                return cell
            default:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bookMark", for: indexPath)
                cell.backgroundColor = .blue
                return cell
            }
        } else {
            print("else로 빠진후",indexPath.row)
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bookMarkFirstCell", for: indexPath) as! BookMarkFirstCell
            cell.backgroundColor = .gray
            return cell
        }
    }
}

extension BookMarkViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width
        let height = collectionView.frame.height/5.7
        return CGSize(width: width, height: height)
    }
}
