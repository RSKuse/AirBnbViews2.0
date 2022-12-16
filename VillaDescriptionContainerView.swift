//
//  File.swift
//  AirBnbViews2.0
//
//  Created by Reuben Simphiwe Kuse on 2022/12/16.
//

import Foundation
import UIKit

class VillaDescriptionContainerView: UIView {
    
    lazy var informationTitleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Entire villa hosted by Monika"
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 25, weight: UIFont.Weight.medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var hostProfileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "monika")
        imageView.layer.cornerRadius = 30
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var villaDescriptionTitleLabel : UILabel = {
         let label = UILabel()
         label.textColor = .black
         label.text = "2 guest・1 bedroom・1 bed 1 bedroom"
         label.numberOfLines = 4
         label.font = UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.regular)
         label.translatesAutoresizingMaskIntoConstraints = false
         return label
     }()
    
    lazy var dividerView2: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
         setupUIDescriptionView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        func setupUIDescriptionView () {
            
            addSubview(informationTitleLabel)
            addSubview(hostProfileImageView)
            addSubview(villaDescriptionTitleLabel)
            addSubview(dividerView2)
            
            informationTitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
            informationTitleLabel.rightAnchor.constraint(equalTo: hostProfileImageView.leftAnchor, constant: -20).isActive = true
            informationTitleLabel.centerYAnchor.constraint(equalTo: hostProfileImageView.centerYAnchor).isActive = true
            
            hostProfileImageView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
            hostProfileImageView.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
            hostProfileImageView.heightAnchor.constraint(equalToConstant: 60).isActive = true
            hostProfileImageView.widthAnchor.constraint(equalToConstant: 60).isActive = true
            
            villaDescriptionTitleLabel.topAnchor.constraint(equalTo: informationTitleLabel.bottomAnchor, constant: 1).isActive = true
            villaDescriptionTitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
            villaDescriptionTitleLabel.rightAnchor.constraint(equalTo: hostProfileImageView.leftAnchor, constant: -20).isActive = true
            villaDescriptionTitleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5).isActive = true
            
            dividerView2.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
            dividerView2.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
            dividerView2.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
            dividerView2.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
            
    }

}
