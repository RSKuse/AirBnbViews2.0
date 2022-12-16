//
//  BookingAndPricingContainerView.swift
//  AirBnbViews2.0
//
//  Created by Reuben Simphiwe Kuse on 2022/12/16.
//

import Foundation
import UIKit

class BookingAndPricingContainerView: UIView {
    
    lazy var reserveButton: UIButton = {
        let button = UIButton()
        button.setTitle("Reserve", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
        button.layer.cornerRadius = 8
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.medium)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    lazy var pricingTitleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "R2,450 ZAR"
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var durationTitleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "night"
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var datesTitleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "20-25 Jan"
        label.font = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUIReserveAndCostConstraint()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUIReserveAndCostConstraint () {
        
        addSubview(reserveButton)
        addSubview(pricingTitleLabel)
        addSubview(durationTitleLabel)
        addSubview(datesTitleLabel)
        
        reserveButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        reserveButton.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        reserveButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        reserveButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        pricingTitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        pricingTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        
        durationTitleLabel.leftAnchor.constraint(equalTo: pricingTitleLabel.rightAnchor, constant: 2).isActive = true
        durationTitleLabel.centerYAnchor.constraint(equalTo: pricingTitleLabel.centerYAnchor).isActive = true
        
        datesTitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        datesTitleLabel.topAnchor.constraint(equalTo: pricingTitleLabel.topAnchor, constant: 30).isActive = true
       //pricingTitldatesTitleLabel.centerXAnchor.constraint(equalTo: pricingTitleLabel.centerXAnchor, constant: 0).isActive = true
        
    }
    
}
