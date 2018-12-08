
protocol Observer {
  func update(temp: Float, humidity: Float, pressure: Float)
}

protocol DisplayElement{
  func display()
}

class CurrentConditionsDisplay: Observer, DisplayElement {
  
  private var temperature: Float = 0
  private var humididty: Float = 0
  private var weatherData: Subject
  
  init(weatherData: Subject) {
    self.weatherData = weatherData
    weatherData.register(observer: self)
  }
  
  func update(temp: Float, humidity: Float, pressure: Float) {
    self.temperature = temp
    self.humididty = humidity
    display()
  }
  func display() {
    print("Current conditions: temperature: \(temperature), humidity: \(humididty)")
  }
}
