//
//  File.swift
//  AirBnbViews2.0
//
//  Created by Reuben Simphiwe Kuse on 2022/12/16.
//

import Foundation
import UIKit

class AirBnbVillaContainerView: UIView {
    
    lazy var villaImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "guest_house")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var villaTitleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "The FAIRY FLYCATCHER (Lucky Crane Villas)"
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var ratingView: RatingContainerView = {
        let view = RatingContainerView()
        //view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var guestReviewTitleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        //label.backgroundColor = .green
        label.text = "・42 reviews・"
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var superHostView: RatingContainerView  = {
        let view = RatingContainerView()
        view.ratingLabel.text = "Superhost"
        view.ratingImageView.image = UIImage(named: "user_icon")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var locationTitleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "McGregor Coastal Lines and Beaches, Western Cape, South Africa"
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    lazy var dividerView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    setupVillaConstraints()
    
    }
        required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupVillaConstraints() {
        addSubview(villaImageView)
        addSubview(villaTitleLabel)
        addSubview(ratingView)
        addSubview(guestReviewTitleLabel)
        addSubview(superHostView)
        addSubview(locationTitleLabel)
        
        
        addSubview(dividerView)
        
        villaImageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        villaImageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        villaImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        villaImageView.heightAnchor.constraint(equalToConstant: 280).isActive = true
        
        villaTitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        villaTitleLabel.topAnchor.constraint(equalTo: villaImageView.bottomAnchor, constant: 20).isActive = true
        villaTitleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        
        ratingView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        ratingView.topAnchor.constraint(equalTo: villaTitleLabel.bottomAnchor, constant: 16).isActive = true
        ratingView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        ratingView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        guestReviewTitleLabel.centerYAnchor.constraint(equalTo: ratingView.centerYAnchor).isActive = true
        guestReviewTitleLabel.leftAnchor.constraint(equalTo: ratingView.rightAnchor).isActive = true
        guestReviewTitleLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        superHostView.leftAnchor.constraint(equalTo: guestReviewTitleLabel.rightAnchor).isActive = true
        superHostView.centerYAnchor.constraint(equalTo: ratingView.centerYAnchor).isActive = true
        
        locationTitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        locationTitleLabel.topAnchor.constraint(equalTo: ratingView.bottomAnchor, constant: 8).isActive = true
        locationTitleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        
        dividerView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        dividerView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        dividerView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        dividerView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        
        
        
    }
    
}
