//
//  Students.swift
//  preClass
//
//  Created by 刀子叉子勺 on 2025/3/6.
//

struct Student {
    private var name: String
    private var age: Int {
        // attribute watching
        willSet { print("The new value: \(newValue)") }
        didSet { print("The previous value: \(oldValue)") }
    }
    private var gender: String
    private var chinese: Int
    private var math: Int
    private var english: Int

    private var isAdult: Bool {
        return age >= 18
    }

    static var school: String = "Home University"

    init(
        name: String, age: Int, gender: String,
        chinese: Int, math: Int, english: Int
    ) {
        self.name = name
        self.age = age
        self.gender = gender
        self.chinese = chinese
        self.math = math
        self.english = english
    }

    // internal is default setting
    internal func getName() -> String {
        return self.name
    }
    func getIsAdult() -> Bool {
        return self.isAdult
    }
    mutating func ageIncrease() {
        age += 1
    }

    subscript(subject: String, operation: String) -> Int? {
        get {
            switch subject {
            case "chinese": return self.chinese
            case "math": return self.math
            case "english": return self.english
            default: return nil
            }
        }
        set {
            guard let newValue = newValue else { return }
            switch subject {
            case "chinese":
                if operation == "add" {
                    chinese += newValue
                } else if operation == "sub" {
                    chinese -= newValue
                }
            case "math":
                if operation == "add" {
                    math += newValue
                } else if operation == "sub" {
                    math -= newValue
                }
            case "english":
                if operation == "add" {
                    english += newValue
                } else if operation == "sub" {
                    english -= newValue
                }
            default:
                break
            }
        }
    }

    static func schoolDescription() {
        print("The school is named \(school)")
    }
}
