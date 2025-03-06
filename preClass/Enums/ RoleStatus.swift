//
//   RoleStatus.swift
//  preClass
//
//  Created by 刀子叉子勺 on 2025/3/6.
//

enum RoleStatus {
    case toon(name: String)
    case healthPoints(current: Int, max: Int)
    case manaPoints(current: Int, max: Int)
    case walk(speed: Int)
    case run(speed: Int)
    case fly(speed: Int, Y: Int, Z: Int)
    case die
}
