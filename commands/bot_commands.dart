import 'package:nyxx_commands/nyxx_commands.dart';
import 'command_module.dart';
import 'dev.dart';

class BotCommands {
  static void addAll(CommandsPlugin plugin) async {
    List<CommandModule> modules = [Dev()];
    
    for (CommandModule module in modules) {
      for (ChatCommand command in module.getCommands()) {
        plugin.addCommand(command);
      }
    }
  }
}