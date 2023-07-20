
import PackageDescription

let package = Package(
  name: "JJException",
  platforms: [.iOS(.v9), .macOS(.v10_10), .watchOS(.v3), .tvOS(.v9)],
  products: ([
    [
      .library(name: "JJException", targets: ["JJException"]),
    ],
  ] as [[Product]]).flatMap { $0 },
  targets: ([
    [
        .target(
            name: "JJException",
            dependencies: [],
            path: "JJException/Source",
            exclude: ["Info.plist","README.md"],
            publicHeadersPath: "JJException/Source/JJException.h"
        ),
    ],
  ] as [[Target]]).flatMap { $0 }
)
