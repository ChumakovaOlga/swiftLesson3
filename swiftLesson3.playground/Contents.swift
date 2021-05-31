import UIKit
//1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
//2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.

struct SportCar {
    let carBrand: String
    let yearOfProduction: Int
    let trunkVolume: Double
    var engine: Bool
    var windowsState: Bool
    var trunkState: Bool
    
//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
    enum Order {
        case startEngine
        case stopEngine
        case openWindows
        case closeWindows
        case fillTrunk
        case emptyTrunk
    }
    //5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.

    init(carBrand: String, yearOfProduction: Int, trunkVolume: Double, engine: Bool, windowsState: Bool, trunkState: Bool) {
        self.carBrand = carBrand
        self.yearOfProduction = yearOfProduction
        self.trunkVolume = trunkVolume
        self.engine = engine
        self.windowsState = windowsState
        self.trunkState = trunkState
    }
    
    init(carBrand: String) {
        self.carBrand = "Mazda"
        yearOfProduction = 2019
        trunkVolume = 70.0
        engine = false
        windowsState = false
        trunkState = false
    }
    
    init() {
        carBrand = "Volvo"
        yearOfProduction = 2021
        trunkVolume = 65.0
        engine = true
        windowsState = false
        trunkState = true
    }
    //4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
    func stateCar(action: Order) {
        switch action {
        
        case .startEngine:
            print( "Engine started")
        case .stopEngine:
            print("Engine stopped")
        case .openWindows:
            print("Windows opened")
        case .closeWindows:
            print("Windows closed")
        case .fillTrunk:
            print("Trunk filled")
        case .emptyTrunk:
            print("Trunk empty")
        }
    }
    func info() {
        print("Brand - \(self.carBrand)")
        print("Year - \(self.yearOfProduction)")
        print("TrunkVolume - \(self.trunkVolume)")
        print("Engine - \(self.engine ? "Started" : "Stopped")")
        print("WindowsState - \(self.windowsState ? "Open" : "Close")")
        print("TrunkState - \(self.trunkState ? "Filled" : "Empty")")
    }
}
    //6. Вывести значения свойств экземпляров в консоль.


var ford = SportCar(carBrand: "Ford", yearOfProduction: 2020, trunkVolume: 60.0, engine: true, windowsState: true, trunkState: true)
ford.info()
ford.stateCar(action: .emptyTrunk)
print("--------------------")

var mazda = SportCar(carBrand: "Mazda")
mazda.info()
mazda.stateCar(action: .openWindows)
print("--------------------")

var volvo = SportCar()
volvo.info()
volvo.stateCar(action: .stopEngine)

