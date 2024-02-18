//
//  Circle.swift
//  
//
//  Created by Tatiana Mantrova on 18.02.2024.
//

import Foundation

public struct Circle: Figure {
    
    // MARK: - Properties
    
    private(set) var radius: Double
    
    // MARK: - Public functions

    public var area: Double {
        get throws {
            guard radius > 0 else { throw FigureError.circleRadius("Радиус должен быть > 0") }
            
            return Double.pi * radius.squared
        }
    }
}
