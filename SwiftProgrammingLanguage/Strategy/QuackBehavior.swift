
protocol QuackBehavior {
  func quack()
}

class Quack: QuackBehavior {
  func quack() {
    print("Quack")
  }
}
class Squeak: QuackBehavior {
  func quack() {
    print("Squeak")
  }
}

class MuteQuack: QuackBehavior {
  func quack() {
    print("< Silence >")
  }
}

