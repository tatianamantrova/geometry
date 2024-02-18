//
//  Geometry.swift
//
//
//  Created by Tatiana Mantrova on 18.02.2024.
//

import Foundation

public class Geometry {
    
    // MARK: - Public functions
    
    /// Вычисляет площадь фигуры
    /// - Parameter figure: фигура, реализующая протокола Figure
    /// - Returns: возвращает площадь фигуры или выбрасывает исключение
    public static func calculateArea(figure: Figure) throws -> Double {
        try figure.area
    }
}
