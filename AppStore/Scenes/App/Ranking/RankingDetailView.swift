//
//  RankingDetailView.swift
//  AppStore
//
//  Created by 양성혜 on 2022/11/26.
//

import UIKit
import SnapKit

class RankingDetailView: UIView {
    
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate  = self
        collectionView.dataSource = self
        collectionView.isPagingEnabled = true
        collectionView.backgroundColor = .systemBackground
        collectionView.showsHorizontalScrollIndicator = false
        
        collectionView.register(RankingDetailViewCell.self, forCellWithReuseIdentifier: "RankingDetailViewCell")
        
        return collectionView
    }()
    
}

extension RankingDetailView: UICollectionViewDelegateFlowLayout {
    
}

extension RankingDetailView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RakingDetailViewCell", for: indexPath) as? RankingDetailViewCell else {return UICollectionViewCell()}
      
        return cell
    }
}
