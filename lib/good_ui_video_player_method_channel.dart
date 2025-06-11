import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'good_ui_video_player_platform_interface.dart';

/// An implementation of [GoodUiVideoPlayerPlatform] that uses method channels.
class MethodChannelGoodUiVideoPlayer extends GoodUiVideoPlayerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('good_ui_video_player');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
