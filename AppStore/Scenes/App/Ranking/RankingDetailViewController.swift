//
//  RankingDetailViewController.swift
//  AppStore
//
//  Created by 양성혜 on 2022/11/22.
//

import UIKit
import SnapKit

class RankingDetailViewController : UIViewController {
    
    let typeButtonView = UIView()
    let rankingDetailView = RankingDetailView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        setup()
    }
}

extension RankingDetailViewController {
    func setup() {
        
        [typeButtonView,rankingDetailView].forEach {
            view.addSubview($0)
        }
        
        typeButtonView.snp.makeConstraints {
            $0.top.equalToSuperview().inset(8.0)
            $0.centerX.equalToSuperview()
        }
        
        rankingDetailView.snp.makeConstraints {
            $0.top.equalTo(typeButtonView).inset(5.0)
            $0.leading.equalToSuperview().inset(5.0)
        }
    }
    
}
