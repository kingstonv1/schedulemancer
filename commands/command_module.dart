import 'package:nyxx_commands/nyxx_commands.dart';

abstract class CommandModule {
  List<ChatCommand> getCommands();
}