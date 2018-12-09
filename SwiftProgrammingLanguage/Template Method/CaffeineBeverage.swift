
protocol CaffeineBeverage {
  
  func prepareRecipe()
  
  func boilWater()
  
  func brew()
  
  func pourInCup()
  
  func addCondiments()
  
  func customerWantsCondiments() -> Bool
}

extension CaffeineBeverage{
  
  func prepareRecipe() {
    boilWater()
    brew()
    pourInCup()
    if customerWantsCondiments() {
      addCondiments()
    }
  }
  
  func boilWater() {
    print("boilin water")
  }
  
  func pourInCup() {
    print("pouring into cup")
  }
  
  func customerWantsCondiments() -> Bool {
    return true
  }
}





class Tea: CaffeineBeverage {
  
  func brew() {
    print("steeping the tea")
  }
  
  func addCondiments() {
    print("adding lemon")
  }
}

class Coffee: CaffeineBeverage {
  
  func brew() {
    print("dripping coffee through filter")
  }
  
  func addCondiments() {
    print("adding sugar and milk")
  }
}
