
class LightOnCommand: Command {
  var light: Light
  init(light: Light) {
    self.light = light
  }
  func execute() {
    light.on()
  }
}

class LightOffCommand: Command {
  var light: Light
  init(light: Light) {
    self.light = light
  }
  func execute() {
    light.off()
  }
}

class Light {
  var isOn = false
  func on(){
    print("light on")
    isOn = true
  }
  func off(){
    print("light off")
    isOn = false
  }
}
