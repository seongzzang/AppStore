//
//  ExchangeCodeViewController.swift
//  AppStore
//
//  Created by 양성혜 on 2022/11/30.
//

import UIKit
import SnapKit
import Kingfisher

class ExchangeCodeViewController: UIViewController {
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        
        if let imageURL = URL(string: "https://naver..com") {
            imageView.kf.setImage(with: imageURL)
        }
        return imageView
    }()
    
    private lazy var mainLabel: UILabel = {
       let label = UILabel()
        label.text = "기기의 카메라를 사용하여 기프트 카드를 교환하십시오"
        label.font = .systemFont(ofSize: 20.0, weight: .bold)
        label.textColor = .label
        label.numberOfLines = 2
        
        return label
    }()
    
    private lazy var secondaryLabel: UILabel = {
       let label = UILabel()
        label.text = "위 이미지에서 보이는 것처럼 코드 주변에 테두리가 쳐져있는 기프트 카드가 필요합니다"
        label.font = .systemFont(ofSize: 14.0, weight: .black)
        label.textColor = .lightGray
        label.numberOfLines = 2
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        view.backgroundColor = .systemBackground
    }
    
    
}

private extension ExchangeCodeViewController {
    func setup(){
        [imageView, mainLabel, secondaryLabel].forEach{ view.addSubview($0)}
        
        imageView.snp.makeConstraints{
            $0.centerY.equalToSuperview()
            $0.top.equalToSuperview().inset(16.0)
        }
        
        mainLabel.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(16.0)
            $0.centerY.equalTo(imageView)
            $0.top.equalTo(imageView.snp.bottom).offset(15.0)
        }
        
        secondaryLabel.snp.makeConstraints{
            $0.top.equalTo(mainLabel.snp.bottom).offset(16.0)
            $0.centerY.equalTo(mainLabel)
        }
    }
}
