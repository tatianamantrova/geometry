import XCTest
@testable import Geometry

final class GeometryTests: XCTestCase {
    
    func testCircleAreaPositiveRadius() throws {
        let circle = Circle(radius: 5)
        let actualArea = try Geometry.calculateArea(figure: circle)
        let expectedArea = Double.pi * 25
        
        XCTAssertEqual(actualArea, expectedArea)
    }
    
    func testCircleAreaZeroRadius() throws {
        let circle = Circle(radius: 0)
        
        do {
            _ = try Geometry.calculateArea(figure: circle)
            XCTFail("Должна быть ошибка для нулевого радиуса")
        } catch FigureError.circleRadius(let message) {
            XCTAssertEqual(message, "Радиус должен быть > 0")
        }
    }
    
    func testCircleAreaNegativeRadius() throws {
        let circle = Circle(radius: -5)
        
        do {
            _ = try Geometry.calculateArea(figure: circle)
            XCTFail("Должна быть ошибка для отрицательного радиуса")
        } catch FigureError.circleRadius(let message) {
            XCTAssertEqual(message, "Радиус должен быть > 0")
        }
    }
    
    func testTriangleAreaPositiveSides() throws {
        let triangle = Triangle(a: 3, b: 4, c: 5)
        let actualArea = try Geometry.calculateArea(figure: triangle)
        let expectedArea = 6.0
        
        XCTAssertEqual(actualArea, expectedArea)
    }
    
    func testTriangleAreaZeroSide() throws {
        let triangle1 = Triangle(a: 0, b: 4, c: 5)
        let triangle2 = Triangle(a: 3, b: 0, c: 5)
        let triangle3 = Triangle(a: 3, b: 4, c: 0)
        
        for triangle in [triangle1, triangle2, triangle3] {
            do {
                _ = try Geometry.calculateArea(figure: triangle)
                XCTFail("Должна быть ошибка для нулевой стороны")
            } catch FigureError.triangleSide(let message) {
                XCTAssertEqual(message, "Все стороны треугольника должны быть > 0")
            }
        }
    }

    func testTriangleAreaNegativeSide() throws {
        let triangle1 = Triangle(a: -3, b: 4, c: 5)
        let triangle2 = Triangle(a: 3, b: -4, c: 5)
        let triangle3 = Triangle(a: 3, b: 4, c: -5)
        
        for triangle in [triangle1, triangle2, triangle3] {
            do {
                _ = try Geometry.calculateArea(figure: triangle)
                XCTFail("Должна быть ошибка для отрицательной стороны")
            } catch FigureError.triangleSide(let message) {
                XCTAssertEqual(message, "Все стороны треугольника должны быть > 0")
            }
        }
    }
    
    func testIsTriangleRight() {
        let rightTriangle1 = Triangle(a: 3, b: 4, c: 5)
        let rightTriangle2 = Triangle(a: 5, b: 12, c: 13)
        let notRightTriangle = Triangle(a: 3, b: 4, c: 6)
        
        XCTAssertTrue(rightTriangle1.isRightTriangle)
        XCTAssertTrue(rightTriangle2.isRightTriangle)
        XCTAssertFalse(notRightTriangle.isRightTriangle)
    }
}
