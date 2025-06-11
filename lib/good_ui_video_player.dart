
import 'good_ui_video_player_platform_interface.dart';

class GoodUiVideoPlayer {
  Future<String?> getPlatformVersion() {
    return GoodUiVideoPlayerPlatform.instance.getPlatformVersion();
  }
}
