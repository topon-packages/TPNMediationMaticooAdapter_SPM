# TopOn - iOS zMaticoo Mediation Adapter

The TopOn zMaticoo mediation adapter for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 12.0+
- Xcode 15.0+
- TopOn iOS Core SDK (`TPNiOS`) 6.5.85+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/topon-packages/TPNMediationMaticooAdapter_SPM.git
   ```
3. Select **Exact Version** and enter the target version (e.g. `x.x.x`).
4. Add the `TPNMediationMaticooAdapter` product to your app target.
5. In your target's **Build Settings**, add `-ObjC` to **Other Linker Flags**.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/topon-packages/TPNMediationMaticooAdapter_SPM.git",
        exact: "x.x.x"
    )
]
```

## Included dependencies

- [`TPNiOS`](https://github.com/topon-packages/TPNiOS_SPM.git) (>= 6.5.85, < 7.0.0)
- [`MaticooSDK`](https://github.com/cloudadrd/zMaticooPodSpec.git) (pinned to `2.3.2`), including the official `MaticooSDK.bundle` resources

## More information

- [TopOn iOS Integration Guide](https://docs.toponad.com)
