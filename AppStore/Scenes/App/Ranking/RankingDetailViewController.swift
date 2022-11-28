//
//  RankingDetailViewController.swift
//  AppStore
//
//  Created by 양성혜 on 2022/11/22.
//

import UIKit
import SnapKit

class RankingDetailViewController : UIViewController {
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate  = self
        collectionView.dataSource = self
        collectionView.isPagingEnabled = true
        collectionView.backgroundColor = .systemBackground
        collectionView.showsHorizontalScrollIndicator = false
        
        collectionView.register(RankingFeatureCollectionViewCell.self, forCellWithReuseIdentifier: "RankingFeatureCollectionViewCell")
        
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupNavigationController()
        
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
        
    }
    
}

extension RankingDetailViewController: UICollectionViewDelegateFlowLayout {
    
}

extension RankingDetailViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RakingFeatureCollectionViewCell", for: indexPath) as? RankingFeatureCollectionViewCell else {return UICollectionViewCell()}
      
        return cell
    }
}

private extension RankingDetailViewController {
    
    @objc func didTapBackButton(){
        print("return")
    }
    
    func setupNavigationController(){
        navigationItem.title = "앱"
        navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let tabBarItem = UIBarButtonItem(image: UIImage(systemName: "arrow_left"),
                                         style: .plain,
                                         target: self,
                                         action: #selector(didTapBackButton))

        navigationItem.leftBarButtonItem = tabBarItem
    }
                
}
