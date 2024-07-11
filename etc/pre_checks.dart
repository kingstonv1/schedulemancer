import 'dart:io';

void prechecks(var env) {
  if (env['SECRET'] == null) {
    print("No bot secret supplied.");
    exit(1);
  }

  if (env['GUILD'] == null) {
    print('No guild snowflake provided.');
    exit(1);
  }
}