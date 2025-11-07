// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "NFCIdentiaReaderSDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "NFCIdentiaReader",
            targets: ["NFCIdentiaReader", "OpenSSL"])
    ],
    targets: [
        .binaryTarget(
            name: "NFCIdentiaReader",
            url: "https://github.com/digiyoid/NFCIdentiaReader-iOS/releases/download/1.0.6/NFCIdentiaReader.xcframework.zip",
            checksum: "99000f37e6de47e14675fbfb97621311bcb8ff04467aa7ed6d68f85da38300e2"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://github.com/digiyoid/NFCIdentiaReader-iOS/releases/download/1.0.0/OpenSSL.xcframework.zip",
            checksum: "3459173e58e3679e992cbdf1b5e021cfe22307e940c8c3ba28a562211b2bd5e0"
        )
    ]
)
