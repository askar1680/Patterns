

protocol PizzaStore {
  func orederPizza(type: PizzaType) -> Pizza
  func createPizza(type: PizzaType) -> Pizza
}

extension PizzaStore{
  func orederPizza(type: PizzaType) -> Pizza {
    let pizza = createPizza(type: type)
    pizza.prepare()
    pizza.bake()
    pizza.cut()
    pizza.box()
    return pizza
  }
}

class NYPizzaStore: PizzaStore {
  func createPizza(type: PizzaType) -> Pizza{
    switch type {
    case .cheese:
      return CheesePizza() // NYStyle (new class)
    case .clam:
      return ClamPizza()
    }
  }
  init() {
    print("NewYork Pizza")
  }
}

class ChicagoPizzaStore: PizzaStore {
  func createPizza(type: PizzaType) -> Pizza {
    switch type {
    case .cheese:
      return CheesePizza() // ChicagoStyle (new class)
    case .clam:
      return ClamPizza()
    }
  }
  
  init() {
    print("Chicago Pizza")
  }
}

enum PizzaType {
  case cheese
  case clam
}

