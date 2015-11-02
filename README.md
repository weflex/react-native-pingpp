
# React-Native Pingpp

A React-Native(RN) binding library for [Pingxx.com]'s iOS and Android(TODO). For more details upstream documentation, take a look at the following links:

- iOS: [PingPlusPlus/pingpp-ios](https://github.com/PingPlusPlus/pingpp-ios)
- Android: [PingPlusPlus/pingpp-android](https://github.com/PingPlusPlus/pingpp-android) Not worked currently.

中文文档请点击[此处](来读我吧.md)

## Install

```sh
$ npm install react-native-pingpp --save
```

## Working in iOS

1. So the first place is [there](https://github.com/PingPlusPlus/pingpp-ios#手动导入), those steps will be required at upstream library [PingPlusPlus/pingpp-ios](https://github.com/PingPlusPlus/pingpp-ios).

2. Added the URL handled code to your application delegate like the below:

    ```
    // for iOS 8
    - (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
      return [Pingpp handleOpenURL:url withCompletion:nil];
    }

    // for iOS 9
    - (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options {
      return [Pingpp handleOpenURL:url withCompletion:nil];
    }
    ```

3. Require `react-native-pingpp` to play around as below:

    ```js
    const { createPayment } = require('react-native-pingpp');

    // anyway, you will be able to request and get back the charge object
    var result = await createPayment(charge, schema);
    // now will redirect to corresponding application, and get back.
    ```

## Q & A

1. Why not found the libWechat.a which is able to find at PingPlusPlus/pingpp-ios?

> Because react-native use static library to build, so that we require user to link that by yourself. Or you could directly use another WeFlex's RN library [react-native-wechat](https://github.com/weflex/react-native-wechat).

2. Why not working on Android?

> That's just because I have no time to work on that platform, come soon later, Or Github pull request is also welcome :-)

## License

GPLv2 @ WeFlex, Inc.
