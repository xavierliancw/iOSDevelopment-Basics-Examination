//
//  VwTire.swift
//  Swiftly Test Your Might
//
//  Created by Xavier Lian on 4/6/18.
//  Copyright © 2018 BinaryFuel. All rights reserved.
//

import UIKit

class VwTire: NibView
{
    //MARK:- Properties
    
    @IBOutlet var tire1Vw: UIView!
    @IBOutlet var tire2Vw: UIView!
    @IBOutlet var tire3Vw: UIView!
    @IBOutlet var tire4Vw: UIView!
    @IBOutlet var lbl1: UILabel!
    @IBOutlet var lbl2: UILabel!
    @IBOutlet var lbl3: UILabel!
    @IBOutlet var lbl4: UILabel!
    @IBOutlet var makeModelLbl: UILabel!
    
    //MARK:- Functions
    
    func populate(using auto: Automobile)
    {
        makeModelLbl.text = "Tires for:\n\(auto.make)\n\(auto.model)"
        for x in 0 ..< lbls.count
        {
            lbls[x].text = String(describing: auto.wheels[x].dateChanged)
        }
    }
    
    //MARK:- Private Properties
    
    private var lbls = [UILabel]()
    
    //MARK:- UI Business
    
    override func setup()
    {
        super.setup()
        
        lbls.append(lbl1)
        lbls.append(lbl2)
        lbls.append(lbl3)
        lbls.append(lbl4)
    }
}
