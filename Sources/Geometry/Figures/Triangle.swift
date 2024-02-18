//
//  Triangle.swift
//  
//
//  Created by Tatiana Mantrova on 18.02.2024.
//

import Foundation

public struct Triangle: Figure {
    
    // MARK: - Properties
    
    private(set) var a: Double
    private(set) var b: Double
    private(set) var c: Double

    public var area: Double {
        get throws {
            guard a > 0 && b > 0 && c > 0 else { throw FigureError.triangleSide("Все стороны треугольника должны быть > 0") }
            
            let semiPerimeter = (a + b + c) / 2
            return sqrt(semiPerimeter * (semiPerimeter - a) * (semiPerimeter - b) * (semiPerimeter - c))
        }
    }
    
    /// Является ли треугольник прямоугольным
    public var isRightTriangle: Bool {
        return a.squared + b.squared == c.squared ||
               a.squared + c.squared == b.squared ||
               b.squared + c.squared == a.squared
    }
}
