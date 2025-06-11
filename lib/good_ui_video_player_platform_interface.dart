import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'good_ui_video_player_method_channel.dart';

abstract class GoodUiVideoPlayerPlatform extends PlatformInterface {
  /// Constructs a GoodUiVideoPlayerPlatform.
  GoodUiVideoPlayerPlatform() : super(token: _token);

  static final Object _token = Object();

  static GoodUiVideoPlayerPlatform _instance = MethodChannelGoodUiVideoPlayer();

  /// The default instance of [GoodUiVideoPlayerPlatform] to use.
  ///
  /// Defaults to [MethodChannelGoodUiVideoPlayer].
  static GoodUiVideoPlayerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [GoodUiVideoPlayerPlatform] when
  /// they register themselves.
  static set instance(GoodUiVideoPlayerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
