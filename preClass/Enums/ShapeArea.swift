//
//  ShapeArea.swift
//  preClass
//
//  Created by 刀子叉子勺 on 2025/3/6.
//

import Foundation

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
