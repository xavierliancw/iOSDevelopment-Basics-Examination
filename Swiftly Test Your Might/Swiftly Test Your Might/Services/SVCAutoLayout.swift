//
//  SVCAutoLayout.swift
//  Swiftly Test Your Might
//
//  Created by Xavier Lian on 4/6/18.
//  Copyright © 2018 BinaryFuel. All rights reserved.
//

import UIKit

/// Can you tell what this service does?
struct SVCAutoLayout
{
    static func embed(thisVw: UIView, withinThisVw: UIView, withInset: CGFloat = 0)
    {
        thisVw.translatesAutoresizingMaskIntoConstraints = false
        withinThisVw.addSubview(thisVw)
        thisVw.centerXAnchor.constraint(equalTo: withinThisVw.centerXAnchor).isActive = true
        thisVw.centerYAnchor.constraint(equalTo: withinThisVw.centerYAnchor).isActive = true
        thisVw.heightAnchor.constraint(equalTo: withinThisVw.heightAnchor,
                                       constant: -withInset).isActive = true
        thisVw.widthAnchor.constraint(equalTo: withinThisVw.widthAnchor,
                                      constant: -withInset).isActive = true
    }
    
    static func embed(thisVw: UIView, withinThisVw: UIView, usingConstraintsFromVw other: UIView,
                      withInset: CGFloat = 0)
    {
        thisVw.translatesAutoresizingMaskIntoConstraints = false
        withinThisVw.addSubview(thisVw)
        thisVw.centerXAnchor.constraint(equalTo: other.centerXAnchor).isActive = true
        thisVw.centerYAnchor.constraint(equalTo: other.centerYAnchor).isActive = true
        thisVw.heightAnchor.constraint(equalTo: other.heightAnchor,
                                       constant: -withInset).isActive = true
        thisVw.widthAnchor.constraint(equalTo: other.widthAnchor,
                                      constant: -withInset).isActive = true
    }
    
    static func pin(thisVw: UIView, withinVw: UIView, top: NSLayoutYAxisAnchor?,
                    bot: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?,
                    right: NSLayoutXAxisAnchor?) -> [NSLayoutConstraint]
    {
        var retAr = [NSLayoutConstraint]()
        thisVw.translatesAutoresizingMaskIntoConstraints = false
        withinVw.addSubview(thisVw)
        if top != nil
        {
            retAr.append(thisVw.topAnchor.constraint(equalTo: top!))
        }
        if bot != nil
        {
            retAr.append(thisVw.bottomAnchor.constraint(equalTo: bot!))
        }
        if left != nil
        {
            retAr.append(thisVw.leftAnchor.constraint(equalTo: left!))
        }
        if right != nil
        {
            retAr.append(thisVw.rightAnchor.constraint(equalTo: right!))
        }
        for con in retAr
        {
            con.isActive = true
        }
        return retAr
    }
}
