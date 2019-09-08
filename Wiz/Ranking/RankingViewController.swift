//
//  RankingViewController.swift
//  WizSchool
//
//  Created by brian은석 on 30/08/2019.
//  Copyright © 2019 brian. All rights reserved.
//

import UIKit

class RankingViewController: UIViewController {
    
    lazy var rankingCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = #colorLiteral(red: 0.9411043525, green: 0.9412171841, blue: 0.9410660267, alpha: 1)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(RankingCollectionViewCell.self, forCellWithReuseIdentifier: "ranking")
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    private func setupUI() {
        view.addSubview(rankingCollectionView)
        rankingCollectionView.translatesAutoresizingMaskIntoConstraints = false
        rankingCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        rankingCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        rankingCollectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        rankingCollectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
    }
    
    
}

extension RankingViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ranking", for: indexPath) as! RankingCollectionViewCell
        cell.setting(indexPathRow: indexPath.row)
        cell.backgroundColor = .white
        return cell
        
    }
    
}

extension RankingViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height/6 * 2.5)
        
    }
}
