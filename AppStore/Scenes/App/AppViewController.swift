//
//  AppViewController.swift
//  AppStore
//
//  Created by 양성혜 on 2022/11/01.
//

import UIKit
import SnapKit

final class AppViewController : UIViewController {
    
    private let scrollView = UIScrollView()
    private let contentView = UIView()
    
    private lazy var stackView: UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 0.0
        
        let fetchSectionView = FeatureSectionView(frame: .zero)
        let rankingFeatureSectionView = UIView()
        let exchangeCodeButtonView = UIView()
        
        rankingFeatureSectionView.backgroundColor = .blue
        exchangeCodeButtonView.backgroundColor = .yellow
        
        [fetchSectionView,rankingFeatureSectionView,exchangeCodeButtonView].forEach {
            stackView.addArrangedSubview($0)
        }
        
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationController()
        setupLayout()
    }
}

private extension AppViewController {
    func setupNavigationController(){
        navigationItem.title = "앱"
        navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func setupLayout() {
        view.addSubview(scrollView)
        scrollView.snp.makeConstraints{
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.bottom.equalToSuperview()
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
        }
        
        scrollView.addSubview(contentView)
        contentView.snp.makeConstraints{
            $0.edges.equalToSuperview()
            $0.width.equalToSuperview()
        }
        
        contentView.addSubview(stackView)
        stackView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
    }
}
