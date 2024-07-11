import 'package:dotenv/dotenv.dart';
import 'package:nyxx_commands/nyxx_commands.dart';
import 'package:nyxx/nyxx.dart';

import 'commands/bot_commands.dart';
import 'etc/pre_checks.dart';

void main() async {
  var env = DotEnv()..load();
  prechecks(env);
  
  String secret = env['SECRET']!;
  Snowflake guild = Snowflake.parse(env['GUILD']!);

  final commands = CommandsPlugin(prefix: mentionOr((_) => '~'), guild: guild, options: CommandsOptions(logErrors: true));
  BotCommands.addAll(commands);
  final client = await Nyxx.connectGateway(secret, GatewayIntents.allUnprivileged | GatewayIntents.messageContent, options: GatewayClientOptions(plugins: [commands, logging]));
}