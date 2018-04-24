//
//  Algorithms.swift
//  Swiftly Test Your Might
//
//  Created by Xavier Lian on 4/10/18.
//  Copyright © 2018 BinaryFuel. All rights reserved.
//

import Foundation

func algorithm1(_ str: String) -> Character?
{
    print("Running algorithm1!")
    return nil
}

func algorithm2(_ wheels: [Wheel?]) -> [Wheel?]
{
    print("Running algorithm2!")
    return [Wheel]()
}

func algorithm3(_ wheels: [Wheel?]) -> [Date]
{
    print("Running algorithm3!")
    return [Date]()
}

func algorithm4(_ json: Data) -> [Spinach]
{
    print("Running algorithm4!")
    return [Spinach]()
}
struct Spinach: Codable
{
    let fresh: Bool
    let variety: String
}

func lastAlgorithm(_ data: Data) -> [Wheel]
{
    print("Running last algorithm!")
    return [Wheel]()
}
