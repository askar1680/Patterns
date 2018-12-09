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

//let pizzaStore: PizzaStore = ChicagoPizzaStore()
//let pizza = pizzaStore.orederPizza(type: .clam)
//print("price = \(pizza.price)")


// Command

//let remoteControl = SimpleRemoteControl()
//let light = Light()
//let lightOffCommand = LightOffCommand(light: light)
//let lightOnCommand = LightOnCommand(light: light)
//remoteControl.addCommand(type: .light, commandOn: lightOnCommand, commandOff: lightOffCommand)
//remoteControl.onButtonPressed(type: .light)
//remoteControl.offButtonPressed(type: .light)


// Adapter

//let turkey = WildTurkey()
//let turkeyAdapter = TurkeyAdapter(turkey: turkey)
//turkeyAdapter.quack()
//turkeyAdapter.fly()


// Template method

//let tea = Tea()
//tea.prepareRecipe()



