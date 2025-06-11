import 'package:flutter_test/flutter_test.dart';
import 'package:good_ui_video_player/good_ui_video_player.dart';
import 'package:good_ui_video_player/good_ui_video_player_platform_interface.dart';
import 'package:good_ui_video_player/good_ui_video_player_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockGoodUiVideoPlayerPlatform
    with MockPlatformInterfaceMixin
    implements GoodUiVideoPlayerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final GoodUiVideoPlayerPlatform initialPlatform = GoodUiVideoPlayerPlatform.instance;

  test('$MethodChannelGoodUiVideoPlayer is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelGoodUiVideoPlayer>());
  });

  test('getPlatformVersion', () async {
    GoodUiVideoPlayer goodUiVideoPlayerPlugin = GoodUiVideoPlayer();
    MockGoodUiVideoPlayerPlatform fakePlatform = MockGoodUiVideoPlayerPlatform();
    GoodUiVideoPlayerPlatform.instance = fakePlatform;

    expect(await goodUiVideoPlayerPlugin.getPlatformVersion(), '42');
  });
}
