

protocol DuckForAdapter{
  func quack()
  func fly()
}

class MallardDuckForAdapter: DuckForAdapter {
  func quack() {
    print("quack")
  }
  func fly() {
    print("fly")
  }
}

protocol Turkey {
  func gobble()
  func fly()
}

class WildTurkey: Turkey {
  func gobble() {
    print("gobble")
  }
  
  func fly() {
    print("fly a short dictance")
  }
}

class TurkeyAdapter: DuckForAdapter {
  let turkey: Turkey
  init(turkey: Turkey) {
    self.turkey = turkey
  }
  func quack() {
    turkey.gobble()
  }
  
  func fly() {
    turkey.fly()
  }
}
