# Geometry

## Использование

### Подключение

```swift
import Geometry
```

### Создание новой фигуры

Класс или структура новой фигуры должны реализовывать протокол `Figure`

```swift
struct Square: Figure {
    ...
}
```

### Вычисление площади

Для получения площади фигуры можно или получить поле `.area` фигуры, или вызвать статический метод `Geometry.calculateArea`:

```swift
let circle = Circle(radius: 5)
let circleArea = try? Geometry.calculateArea(figure: circle)

print(circleArea) // ~ 78.5
print(circle.area) // ~ 78.5
```

### Встроенные фигуры

В библиотеке есть встроенные фигуры:

```swift
let circle = Circle(radius: 5)
let triangle = Triangle(a: 3, b: 4, c: 5)
```

### Обработка исключений

При вычислении площади фигур могут бросаться исключения (например, если у круга радиус не положительный или у треугольника есть не положительная сторона)

### Треугольник

У треугольника есть дополнительное свойство для определения, является ли он прямоугольным.

```swift
let rightTriangle1 = Triangle(a: 3, b: 4, c: 5)
let rightTriangle2 = Triangle(a: 5, b: 12, c: 13)
let notRightTriangle = Triangle(a: 3, b: 4, c: 6)

print(rightTriangle1.isRightTriangle) // true
print(rightTriangle2.isRightTriangle) // true
print(notRightTriangle.isRightTriangle) // false
```

## Автор

Татьяна Мантрова <tatiana.mantrova@gmail.com>
