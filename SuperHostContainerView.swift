//
//  SuperHostContainerView.swift
//  AirBnbViews2.0
//
//  Created by Reuben Simphiwe Kuse on 2022/12/16.
//

import Foundation
import UIKit

class SuperHostContainerView: UIView {
    
    lazy var hostIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "user_icon")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var informationTitleLabel2 : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Monika is a Superhost"
        label.numberOfLines = 3
        label.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.medium)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var superHostExplainationTitleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.text = "Superhosts are experienced,highly rated host who are committed to providing great stays for their guests"
        label.numberOfLines = 4
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var dividerView3: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUIHostConstraint()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUIHostConstraint () {
        
        addSubview(hostIconImageView)
        addSubview(informationTitleLabel2)
        addSubview(superHostExplainationTitleLabel)
        addSubview(dividerView3)
                
        hostIconImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        hostIconImageView.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        hostIconImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        hostIconImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        informationTitleLabel2.leftAnchor.constraint(equalTo: hostIconImageView.rightAnchor ,constant: 20).isActive = true
        informationTitleLabel2.centerYAnchor.constraint(equalTo: hostIconImageView.centerYAnchor).isActive = true
        informationTitleLabel2.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        
        superHostExplainationTitleLabel.centerXAnchor.constraint(equalTo: informationTitleLabel2.centerXAnchor).isActive = true
        superHostExplainationTitleLabel.topAnchor.constraint(equalTo:informationTitleLabel2.bottomAnchor, constant: 3).isActive = true
        superHostExplainationTitleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        
        dividerView3.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        dividerView3.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        dividerView3.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        dividerView3.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        
    }
    
}
