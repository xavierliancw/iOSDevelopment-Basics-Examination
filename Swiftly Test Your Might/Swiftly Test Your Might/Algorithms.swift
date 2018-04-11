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
    print("Running algorithm 1 for task kale!")
    return nil
}

func algorithm2(_ wheels: [Wheel?]) -> [Wheel?]
{
    print("Running algorithm 2 for task lettuce!")
    return [Wheel]()
}

func algorithm3(_ wheels: [Wheel?]) -> [Date]
{
    print("Running algorithm 3 for task carrot!")
    return [Date]()
}

func algorithm4(_ json: Data) -> [Spinach]
{
    print("Running algorithm 4 for task spinach!")
    return [Spinach]()
}
struct Spinach: Codable
{
    let fresh: Bool
    let variety: String
}

func lastAlgorithm(_ data: Data) -> [Wheel]
{
    print("Running the last algorithm!")
    return [Wheel]()
}
