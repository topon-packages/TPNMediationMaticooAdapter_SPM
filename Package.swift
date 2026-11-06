// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "TPNMediationMaticooAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TPNMediationMaticooAdapter",
            targets: ["TPNMediationMaticooAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/topon-packages/TPNiOS_SPM.git", from: "6.5.85"),
        .package(url: "https://github.com/cloudadrd/zMaticooPodSpec.git", exact: "2.3.2")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkMaticooAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkMaticooAdapter/2.3.2.2.0/AnyThinkMaticooAdapter-2.3.2.2.0.zip",
            checksum: "e7b6fb20820517a1fa122666ff001f5518c05695f355c0540c7bd78061a53a04"
        ),
        .target(
            name: "TPNMediationMaticooAdapterTarget",
            dependencies: [
                "AnyThinkMaticooAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM"),
                .product(name: "MaticooSDK", package: "zMaticooPodSpec")
            ],
            path: "Sources/TPNMediationMaticooAdapterTarget"
        )
    ]
)
