//
//  main.swift
//  preClass
//
//  Created by 刀子叉子勺 on 2025/3/6.
//

import Fakery
import Foundation

let faker = Faker()

let SEPERATOR: String = String(repeatElement("-", count: 30))

let directions: [Direction] = [
    Direction.east, Direction.west, Direction.north, Direction.south,
]
if let dir: Direction = directions.randomElement() {
    print("The direction is \(dir)")
    switch dir {
    case .east:
        print("You are moving towards EAST.")
    case .west:
        print("You are moving towards WEST.")
    case .north:
        print("You are moving towards NORTH.")
    case .south:
        print("You are moving towards SOUTH.")
    }
} else {
    print("No directions available.")
}
print(SEPERATOR)

print(Gender.male.rawValue)
print(Gender.female.rawValue)
print(Gender.other.rawValue)
print(SEPERATOR)

print(Colour.red.rawValue)
print(SEPERATOR)

let HPMax: Int = 10
let HPCur: Int = Int.random(in: 0...HPMax)
var HPChanges: RoleStatus = RoleStatus.healthPoints(current: HPCur, max: HPMax)

switch HPChanges {
case .healthPoints(let current, _) where current == 0:
    print("You have died!")
case .healthPoints(let current, let max)
where Double(current) / Double(max) <= 0.3:
    print("Warning! You health points is very low: \(current) !")
case .healthPoints(let current, _):
    print("You health point is \(current).")
default:
    break
}
print(SEPERATOR)

let width: Double = Double.random(in: 1...10)
let height: Double = Double.random(in: 1...10)
let other: Double = Double.random(in: 1...10)
print(ShapeArea.retangle(width: width, height: height).description)
print(ShapeArea.circle(radius: other).description)
print(ShapeArea.triangle(sideA: width, sideB: height, sideC: other).description)
print(SEPERATOR)

// struct
var students: Array<Student> = []
for _ in 1...3 {
    let name: String = faker.name.firstName()
    let age: Int = Int.random(in: 6...24)
    let gender
}
