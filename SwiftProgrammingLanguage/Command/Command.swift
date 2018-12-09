
protocol Command {
  func execute()
}

enum CommandType {
  case light
}

class SimpleRemoteControl {
  
  var onCommands = Dictionary<CommandType, Command>()
  var offCommands = Dictionary<CommandType, Command>()
  
  init() {}
  
  func addCommand(type: CommandType, commandOn: Command, commandOff: Command){
    onCommands[type] = commandOn
    offCommands[type] = commandOff
  }
  
  func onButtonPressed(type: CommandType){
    onCommands[type]?.execute()
  }
  
  func offButtonPressed(type: CommandType){
    offCommands[type]?.execute()
  }
}


