//
//  NibView.swift
//  Swiftly Test Your Might
//
//  Created by Xavier Lian on 4/6/18.
//  Copyright © 2018 BinaryFuel. All rights reserved.
//

import UIKit

/// What's the point of this?
class NibView: UIView
{
    @IBOutlet var baseVw: UIView!
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        setup()
    }
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        setup()
    }
    
    internal func setup()
    {
        UINib(nibName: String(describing: type(of: self)),
              bundle: Bundle(for: type(of: self))).instantiate(withOwner: self, options: nil)
        SVCAutoLayout.embed(thisVw: baseVw, withinThisVw: self)
    }
}
