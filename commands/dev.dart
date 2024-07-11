import 'command_module.dart';
import 'package:nyxx/nyxx.dart';
import 'package:nyxx_commands/nyxx_commands.dart';

class Dev implements CommandModule {
    final ping = ChatCommand(
      'ping',
      'Get the bot\'s latency.',
      id('ping', (ChatContext context) async {
        final latency = context.client.httpHandler.latency;
        final formattedLatency = (latency.inMicroseconds / Duration.microsecondsPerMillisecond).toStringAsFixed(3);

        await context.respond(MessageBuilder(content: 'pong! ${formattedLatency}ms'));
      }));

  @override
  List<ChatCommand> getCommands() {
    return [ping];
  }
}