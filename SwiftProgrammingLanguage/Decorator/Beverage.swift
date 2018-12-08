
protocol Beverage {
  var description: String { get set }
  func cost() -> Double
}

extension Beverage{
  var description: String {
    get {
      return "Unknown description"
    }
    set {
      description = newValue
    }
  }
}

class Espresso: Beverage {
  var description: String = "Espresso"
  func cost() -> Double {
    return 1.99
  }
}

class HouseBland: Beverage {
  var description: String = "House Blend Coffee"
  func cost() -> Double {
    return 0.89
  }
}

protocol CondimentDecorator: Beverage {
  func getDescription() -> String
}

class MochoCoffee: CondimentDecorator {
  func getDescription() -> String {
    return "\(beverage.description), Mocha"
  }
  
  var beverage: Beverage
  init(beverage: Beverage) {
    self.beverage = beverage
  }
  
  func cost() -> Double {
    return 0.20 + beverage.cost()
  }
  
  
}
