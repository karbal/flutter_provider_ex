import 'package:ex/providers/ctx.dart';
import 'package:ex/providers/user.dart';
//* Export
export 'package:ex/providers/ctx.dart';
export 'package:ex/providers/user.dart';

final Map<String, Str> plgs = {"ctx": Ctx(), "user": User()};
final providers = plgs.values.map((e) => e.initx()).toList();
