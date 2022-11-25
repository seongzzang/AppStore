//
//  RankingDetailViewCell.swift
//  AppStore
//
//  Created by 양성혜 on 2022/11/25.
//

import UIKit
import SnapKit

final class RankingDetailViewCell: UICollectionViewCell {
    
    private lazy var numberLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.font = .systemFont(ofSize: 12.0, weight: .semibold)
        
        return label
    }()

    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .tertiarySystemGroupedBackground
        imageView.layer.borderColor = UIColor.tertiaryLabel.cgColor
        imageView.layer.borderWidth = 0.5
        imageView.layer.cornerRadius = 1.0
        
        return imageView
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.font = .systemFont(ofSize: 14.0, weight: .bold)
        
        return label
    }()
    
    private lazy var typeLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.font = .systemFont(ofSize: 14.0, weight: .semibold)
        
        return label
    }()
    
    private lazy var starLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.font = .systemFont(ofSize: 14.0, weight: .semibold)
        
        return label
    }()
    
    func setup(){
        setupLayout()
    }

}

private extension RankingDetailViewCell {
    func setupLayout() {
        [numberLabel, imageView, nameLabel, typeLabel, starLabel].forEach {addSubview($0)}
        
        let insetnum: CGFloat = 20.0
        
        numberLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(insetnum)
            $0.top.equalToSuperview().inset(insetnum)
            $0.centerX.equalTo(imageView.center)
        }
        
        imageView.snp.makeConstraints {
            $0.leading.equalTo(numberLabel).offset(10.0)
            $0.width.equalTo(insetnum)
            $0.top.equalToSuperview().inset(4.0)
        }
        
        nameLabel.snp.makeConstraints {
            $0.leading.equalTo(imageView).offset(5.0)
            $0.top.equalTo(imageView)
        }
        
        typeLabel.snp.makeConstraints {
            $0.leading.equalTo(nameLabel)
            $0.top.equalTo(nameLabel).offset(5.0)
        }
        
        starLabel.snp.makeConstraints {
            $0.leading.equalTo(typeLabel)
            $0.top.equalTo(typeLabel).offset(5.0)
            $0.bottom.equalTo(imageView)
        }
        
    }
}
