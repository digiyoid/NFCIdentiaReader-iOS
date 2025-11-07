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
            url: "https://github.com/digiyoid/NFCIdentiaReader-iOS/releases/download/1.0.5/NFCIdentiaReader.xcframework.zip",
            checksum: "2a52573b11b1860115239f6ab71218e077b78104b926c51e90c2e9fd4285a134"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://github.com/digiyoid/NFCIdentiaReader-iOS/releases/download/1.0.0/OpenSSL.xcframework.zip",
            checksum: "3459173e58e3679e992cbdf1b5e021cfe22307e940c8c3ba28a562211b2bd5e0"
        )
    ]
)
