//
//  VCTireModal.swift
//  Swiftly Test Your Might
//
//  Created by Xavier Lian on 4/6/18.
//  Copyright © 2018 BinaryFuel. All rights reserved.
//

import UIKit

class VCTireModal: UIViewController
{
    //MARK:- Properties
    
    var automobile: Automobile?
    
    //MARK:- Private Properties
    
    @IBOutlet private var tireVw: VwTire!
    
    //MARK:- UI Business

    override func viewDidLoad()
    {
        super.viewDidLoad()
        if let auto = automobile
        {
            tireVw.populate(using: auto)
        }
    }
}
