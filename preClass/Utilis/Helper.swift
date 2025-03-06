//
//  Utilis.swift
//  preClass
//
//  Created by 刀子叉子勺 on 2025/3/6.
//

import Foundation

enum Direction {
    case west
    case east
    case north
    case south
}

enum Gender: Int {
    case male
    case female
    case other
}

enum Colour: String {
    case red = "#FFAAAA"
    case yellow = "#FFEEAA"
    case blue = "#88EEFE"
    case green = "#AAFFAA"
    case gray = "#525352"
}

enum RoleStatus {
    case toon(name: String)
    case healthPoints(current: Int, max: Int)
    case manaPoints(current: Int, max: Int)
    case walk(speed: Int)
    case run(speed: Int)
    case fly(speed: Int, Y: Int, Z: Int)
    case die
}

enum ShapeArea {
    case retangle(width: Double, height: Double)
    case circle(radius: Double)
    case triangle(sideA: Double, sideB: Double, sideC: Double)

    var description: String {
        switch self {
        case .retangle(let width, let height):
            return
                "The area of retangle is \(String(format: "%.2f", width * height))."
        case .circle(let radius):
            return
                "THe are of circle is \(String(format: "%.2f", Double.pi * radius * radius))."
        case .triangle(let sideA, let sideB, let sideC):
            let s = (sideA + sideB + sideC) / 2
            return
                "The area of triangle is \(String(format: "%.2f", sqrt(s * (s - sideA) * (s - sideB) * (s - sideC)))) based on Heron’s formula."
        }
    }
}
