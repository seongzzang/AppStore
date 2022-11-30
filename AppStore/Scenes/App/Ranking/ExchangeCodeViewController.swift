//
//  ExchangeCodeViewController.swift
//  AppStore
//
//  Created by 양성혜 on 2022/11/30.
//

import UIKit
import SnapKit

class ExchangeCodeViewController: UIViewController {
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
       // iamgeView.setImage(<#T##CIImage#>)
        imageView.contentMode = .scaleAspectFill
        
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
        
        view.backgroundColor = .systemBackground
    }
    
    
}
