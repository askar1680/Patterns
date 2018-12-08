
protocol Duck {
  var flyBehavior: FlyBehavior { get set }
  var quackBehavior: QuackBehavior { get set }
  func performQuack()
  func performFly()
  func swim()
  func display()
}
extension Duck{
  func performQuack(){
    quackBehavior.quack()
  }
  func performFly(){
    flyBehavior.fly()
  }
  func swim(){
    print("All ducks float, even decoys")
  }  
}

class MallardDuck: Duck{
  var flyBehavior: FlyBehavior = FlyWithWings()
  var quackBehavior: QuackBehavior = Quack()
  func display() {
    print("I'm a real mallard duck")
  }
}

class RedheadDuck: Duck{
  var flyBehavior: FlyBehavior = FlyWithWings()
  var quackBehavior: QuackBehavior = MuteQuack()
  func display() {
    print("I'm a real redhead duck")
  }
}

class RubberDuck: Duck{
  var flyBehavior: FlyBehavior = FlyNoWay()
  var quackBehavior: QuackBehavior = Squeak()
  func display() {
    print("I'm a real rubber duck")
  }
}

