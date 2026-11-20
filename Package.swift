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
        .package(url: "https://github.com/cloudadrd/zMaticooPodSpec.git", from: "2.3.3")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkMaticooAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkMaticooAdapter/20303.2.10/AnyThinkMaticooAdapter-20303.2.10.zip",
            checksum: "ae6d5ab4e677ac8c0277d72fda296c8beca9003e06150f2def1d4cc069172c9c"
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
