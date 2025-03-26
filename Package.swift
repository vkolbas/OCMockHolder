// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "OCMockHolder",
    products: [
        .library(
            name: "OCMock",
            targets: ["OCMock"]
        ),
    ],
    targets: [
        .target(
            name: "OCMock",
            path: "Sources/OCMock",
            publicHeadersPath: "include/OCMock",
            cSettings: [
                .unsafeFlags([
                    "-fno-objc-arc",
                    // "-fmodule-map-file=include/module.modulemap" // Relative to Sources/OCMock
                ])
            ]
        )
    ]
)
