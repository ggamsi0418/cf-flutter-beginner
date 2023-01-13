# [코드팩토리][초급] WebView

## webview_flutter 플러그인 사용

- https://pub.dev/packages/webview_flutter
- WebView에서 javascript 허용하기

  ```dart
  controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
        Uri.parse(
          'https://blog.codefactory.ai',
        ),
      );
  ```

  <img height="500" src="https://user-images.githubusercontent.com/58096698/212424150-111693b2-79f0-4b85-ab96-e48c48e0f9be.png"></img>
  <img height="500" src="https://user-images.githubusercontent.com/58096698/212424230-c560ca71-25f5-474e-818a-b5458452a5f9.png"></img>

- WebView를 제어하기 위해 Controller를 사용
- iOS와 Android는 기본적으로 http 사용을 제한하고 있으므로 이를 해제하기 위해서는 다음과 같은 설정이 필요

  ```xml
  # ios/Runner/info.plist

  <?xml version="1.0" encoding="UTF-8"?>
  <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
  <plist version="1.0">
  <dict>
      :
      :
      :
    <key>NSAppTransportSecurity</key> # 추가
    <dict>
        <key>NSAllowsLocalNetworking</key>
        <true/>
        <key>NSAllowsArbitraryLoadsInWebContent</key>
        <true/>
    </dict>
  </dict>
  </plist>
  ```

  ```xml
  # android/app/src/main/AndroidManifest.xml

  <manifest xmlns:android="http://schemas.android.com/apk/res/android"
      package="com.example.web_view">
      <uses-permission android:name="android.permission.INTERNET"/> # 안드로이드에서 인터넷을 사용할 수 있는 권한을 부여 (실제 앱 배포시에 반드시 적용 필요)
    <application
          android:label="web_view"
          android:name="${applicationName}"
          android:icon="@mipmap/ic_launcher"
          android:usesCleartextTraffic="true" # "HTTP 사용 허용"
          >
      :
      :
      :
    </application>
  </manifest>
  ```

## 결과

<img src="https://user-images.githubusercontent.com/58096698/212430558-c9af7070-6e5d-4951-bcaa-a93343296908.gif"> </img>
