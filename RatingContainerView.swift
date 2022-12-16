//
//  RatingContainerView.swift
//  AirBnbViews2.0
//
//  Created by Reuben Simphiwe Kuse on 2022/12/16.
//

import Foundation
import UIKit

class RatingContainerView: UIView {
    
    lazy var ratingImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "star_icon")?.withTintColor(UIColor.black)
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var ratingLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "4.95"
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        addSubview(ratingImageView)
        addSubview(ratingLabel)
        
        ratingImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 5).isActive = true
        ratingImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        ratingImageView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        ratingImageView.widthAnchor.constraint(equalToConstant: 20).isActive = true
        
        ratingLabel.leftAnchor.constraint(equalTo: ratingImageView.rightAnchor).isActive = true
        ratingLabel.centerYAnchor.constraint(equalTo: ratingImageView.centerYAnchor).isActive = true
    }
}
