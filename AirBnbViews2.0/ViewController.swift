//
//  ViewController.swift
//  AirBnbViews2.0
//
//  Created by Reuben Simphiwe Kuse on 2022/12/16.
//import Foundation
//import UIKit
//class BasicView: UIView {


import UIKit

class ViewController: UIViewController {
    
    lazy var villaView: AirBnbVillaContainerView = {
        let view = AirBnbVillaContainerView()
        //view.backgroundColor = .cyan
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var villaInformationView: VillaDescriptionContainerView = {
        let view = VillaDescriptionContainerView()
        //view.backgroundColor = .purple
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var SuperHostInformationView: SuperHostContainerView = {
        let view = SuperHostContainerView()
        //view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var BookingAndReserveView: BookingAndPricingContainerView = {
        let view = BookingAndPricingContainerView()
        //view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(villaView)
        view.addSubview(villaInformationView)
        view.addSubview(SuperHostInformationView)
        view.addSubview(BookingAndReserveView)
                
        villaView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        villaView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        villaView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        villaView.heightAnchor.constraint(equalToConstant: 500).isActive = true
        
        villaInformationView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        villaInformationView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        villaInformationView.topAnchor.constraint(equalTo: villaView.bottomAnchor).isActive = true
        villaInformationView.heightAnchor.constraint(equalToConstant: 140).isActive = true
        
        SuperHostInformationView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        SuperHostInformationView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        SuperHostInformationView.topAnchor.constraint(equalTo: villaInformationView.bottomAnchor).isActive = true
        SuperHostInformationView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        BookingAndReserveView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        BookingAndReserveView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        BookingAndReserveView.topAnchor.constraint(equalTo: SuperHostInformationView.bottomAnchor).isActive = true
        BookingAndReserveView.heightAnchor.constraint(equalToConstant: 140).isActive = true
        
    }

}

