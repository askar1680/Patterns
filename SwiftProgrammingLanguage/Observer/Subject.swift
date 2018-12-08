
protocol Subject {
  func register(observer: Observer)
  func remove(observer: Observer)
  func notify(observer: Observer)
}

class WeatherData: Subject {
  
  private var observers: Array<Observer> = []
  private var temperature: Float = 0
  private var humidity: Float = 0
  private var pressure: Float = 0
  
  func register(observer: Observer) {
    observers.append(observer)
  }
  func remove(observer: Observer) {
//    observers.filter({ $0 != observer })
  }
  func notify(observer: Observer) {
    observer.update(temp: temperature, humidity: humidity, pressure: pressure)
    
  }
  
  func notifyAll(){
    for observer in observers{ notify(observer: observer) }
  }
  
  func measurmentsChanged(){
    notifyAll()
  }
  
  func setMeasurements(temp: Float, humidity: Float, pressure: Float){
    self.temperature = temp
    self.humidity = humidity
    self.pressure = pressure
    measurmentsChanged()
  }
  
}
