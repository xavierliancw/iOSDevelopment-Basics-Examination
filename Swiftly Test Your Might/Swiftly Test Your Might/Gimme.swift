//
//  Gimme.swift
//  Swiftly Test Your Might
//
//  Created by Xavier Lian on 4/6/18.
//  Copyright © 2018 BinaryFuel. All rights reserved.
//

import Foundation

class Gimme
{
    static let the = Gimme()
    var delegate: SouperKoolDelegate?
    
    func collectionViewDataForSection0() -> [Automobile]
    {
        var theGarage = [Automobile]()
        
        let car1 = Automobile(make: "Toyota", model: "Corolla S", wheels: [
            Wheel(dateChanged: Date(timeIntervalSince1970: 1514764800), punctured: false),
            Wheel(dateChanged: Date(timeIntervalSince1970: 1517443200), punctured: false),
            Wheel(dateChanged: Date(timeIntervalSince1970: 1517443200), punctured: true),
            Wheel(dateChanged: Date(timeIntervalSince1970: 1517443200), punctured: false)
            ], description: "This is a kool car.")
        theGarage.append(car1)
        let car2 = Automobile(make: "Kawasaki", model: "Ninja H2 SX", wheels: [
            Wheel(dateChanged: Date(timeIntervalSince1970: 1522540800), punctured: false),
            Wheel(dateChanged: Date(timeIntervalSince1970: 1522540800), punctured: false)
            ], description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur semper augue sed tellus aliquam, tristique consequat magna congue. Maecenas tincidunt aliquam est. Nulla orci est, elementum sit amet rutrum quis, maximus non sem. Aliquam fermentum vulputate fermentum. Vivamus vel lectus.")
        theGarage.append(car2)
        let car3 = Automobile(make: "Reliant", model: "Reliant Robin", wheels: [
            Wheel(dateChanged: Date(timeIntervalSince1970: 1517443200), punctured: true),
            Wheel(dateChanged: Date(timeIntervalSince1970: 1522540800), punctured: false),
            Wheel(dateChanged: Date(timeIntervalSince1970: 1517443200), punctured: false)
            ], description: "The Reliant Robin is a small three-wheeled car produced by the Reliant Motor Company in Tamworth, England. It was offered in several versions (Mk1, Mk2 and Mk3) over a period of 30 years. It is the second-most popular fibreglass car in history, with Reliant being the second-biggest UK-owned car manufacturer for a time.")
        theGarage.append(car3)
        return theGarage
    }
    
    func collectionViewDataForSection1(onDone: @escaping (Result<[Int]>) -> () = {_ in})
    {
        //Simulate a really slow api call
        Timer.scheduledTimer(withTimeInterval: 2, repeats: false)
        { (timer) in
            var values = [Int]()
            for x in 0 ..< 123000
            {
                values.append(x)
            }
            return onDone(.success(values))
        }
    }
    
    func loadingSequenceForThePushedVC()
    {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true)
        { (timer) in
            if Int(arc4random_uniform(3)) > 2
            {
                let hmmm = arc4random_uniform(2048)
                DispatchQueue(label: "laugh out loud \(hmmm)").async {
                    self.delegate?.souperDidGive(new: Int(arc4random_uniform(100)))
                }
            }
        }
    }
}

protocol SouperKoolDelegate
{
    func souperDidGive(new number: Int)
}

enum Result<X>
{
    case success(X)
    case failure()
}

struct Automobile
{
    let make: String
    let model: String
    let wheels: [Wheel]
    let description: String
}

struct Wheel: Codable
{
    let dateChanged: Date
    let punctured: Bool
}
