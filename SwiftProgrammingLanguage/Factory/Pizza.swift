
protocol Pizza {
  var name: String { get set }
  var price: Float { get set }
  func prepare()
  func bake()
  func cut()
  func box()
}

extension Pizza {
  func prepare(){
    print("preparing \(self.name)")
  }
  func bake(){
    print("baking \(self.name)")
  }
  func cut(){
    print("cutting \(self.name)")
  }
  func box(){
    print("boxing \(self.name)")
  }
}


struct CheesePizza: Pizza {
  var name: String = "Cheese"
  var price: Float = 2.49
}


struct ClamPizza: Pizza {
  var name: String = "Clam"
  var price: Float = 2.99
}
