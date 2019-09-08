//
//  TopCollectionViewCell.swift
//  Wiz
//
//  Created by brian은석 on 30/08/2019.
//  Copyright © 2019 brian. All rights reserved.
//

import UIKit

class TopCollectionViewCell: UICollectionViewCell {
    var topcollectionView :UICollectionView!
    var total = 3

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCollectionView()
    }
    func setupCollectionView() {
        let layout = UICollectionViewFlowLayout()
        topcollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        topcollectionView.backgroundColor = #colorLiteral(red: 0.9411043525, green: 0.9412171841, blue: 0.9410660267, alpha: 1)
        layout.scrollDirection = .horizontal
        self.addSubview(topcollectionView)
        topcollectionView.translatesAutoresizingMaskIntoConstraints = false
        topcollectionView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        topcollectionView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
        topcollectionView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor).isActive = true
        topcollectionView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor).isActive = true
        topcollectionView.showsHorizontalScrollIndicator = false
        topcollectionView.dataSource = self
        topcollectionView.delegate = self
        topcollectionView.register(TopCollectionViewCellOfCell.self, forCellWithReuseIdentifier: "top")
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}


extension TopCollectionViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return total
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "top", for: indexPath) as! TopCollectionViewCellOfCell
        cell.settingUI(indexPathRow: indexPath.row)
        return cell
    }
    
    
}


extension TopCollectionViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return Metric.topEdgeInsets
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let width = (collectionView.frame.width - Metric.topCellHorizontalPadding - Metric.itemSpacing - Metric.nextOffSet) / 2
        let height = collectionView.frame.height - Metric.topCellVerticalPadding

        return CGSize(width: width.rounded(.down), height: height.rounded(.down))
    }
    
    enum Index:Int {
        case startVideoSite = 0
        case blog
        case youTube
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let indexPathRow = Index.init(rawValue: indexPath.row) else {return}
        switch indexPathRow{
        case .startVideoSite:
            if let url = URL(string: "https://wizschool.io/#/classBasic/1") {
                UIApplication.shared.open(url, options: [:])
            }
        case .blog:
            if let url = URL(string: "https://m.blog.naver.com/PostList.nhn?permalink=permalink&blogId=wizschool_inc&proxyReferer=&proxyReferer=https:%2F%2Fblog.naver.com%2Fwizschool_inc") {
                UIApplication.shared.open(url, options: [:])
            }
        case .youTube:
                if let url = URL(string:"https://www.youtube.com/channel/UC8copJ0_PZWEVQ1GK9LwPpQ" ) {
                UIApplication.shared.open(url, options: [:])
            }
        }
        
    }
    
}
