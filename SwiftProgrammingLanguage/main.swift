// Strategy

//let mallardDuck = MallardDuck()
//mallardDuck.performFly()
//mallardDuck.performQuack()
//mallardDuck.display()


// Observer

//let weatherData = WeatherData()
//let currentConditionDisplat = CurrentConditionsDisplay(weatherData: weatherData)
//weatherData.setMeasurements(temp: 15, humidity: 56, pressure: 32)

// Decorator (it doesn't work)
//let beverage = Espresso()
//let beverage2 = MochoCoffee(beverage: beverage)
//let beverage3 = MochoCoffee(beverage: beverage2)
//print(beverage3.getDescription())


// Factory

let pizzaStore: PizzaStore = ChicagoPizzaStore()
let pizza = pizzaStore.orederPizza(type: .clam)
print("price = \(pizza.price)")
