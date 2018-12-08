



protocol FlyBehavior {
  func fly()
}

class FlyWithWings: FlyBehavior {
  func fly() {
    print("I'm flying")
  }
}

class FlyNoWay: FlyBehavior {
  func fly() {
    print("I can't fly")
  }
}
