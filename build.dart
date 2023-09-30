import 'package:logging/logging.dart';
import 'package:native_assets_cli/native_assets_cli.dart';
import 'package:native_toolchain_c/native_toolchain_c.dart';

const packageName = 'llama_dart';

void main(List<String> args) async {
  final buildConfig = await BuildConfig.fromArgs(args);
  final buildOutput = BuildOutput();
  final cbuilder = CBuilder.library(
      name: packageName,
      assetId: 'package:$packageName/$packageName.dart',
      std: 'c++11',
      language: Language.cpp,
      dartBuildFiles: [
        'lib/$packageName.dart',
      ],
      ndebugDefine: false,
      sources: [
        'src/llama_cpp/llama.h',
      ]);
  await cbuilder.run(
    buildConfig: buildConfig,
    buildOutput: buildOutput,
    logger: Logger('')..onRecord.listen((record) => print(record.message)),
  );
  await buildOutput.writeToFile(outDir: buildConfig.outDir);
}
