//
//  ExchangeCodeButtonView.swift
//  AppStore
//
//  Created by 양성혜 on 2022/11/02.
//

import UIKit
import SnapKit

final class ExchangeCodeButtonView: UIView {
    
    private lazy var exchangeCodeButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("코드 교환", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15.0,weight: .semibold)
        button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(self, action: #selector(didTappedExchange), for: .touchUpInside)
        
        button.backgroundColor = .tertiarySystemGroupedBackground
        button.layer.cornerRadius = 7.0
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(exchangeCodeButton)
        
        exchangeCodeButton.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(16.0)
            $0.trailing.equalToSuperview().inset(16.0)
            $0.top.equalToSuperview().inset(32.0)
            $0.bottom.equalToSuperview().inset(32.0)
            $0.height.equalTo(40.0)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension ExchangeCodeButtonView {
    @objc func didTappedExchange() {
        print("exchang button clicked")
    }
}
