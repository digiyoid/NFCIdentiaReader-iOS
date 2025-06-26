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
            url: "https://github.com/digiyoid/NFCIdentiaReader-iOS/releases/download/1.0.0/NFCIdentiaReader.xcframework.zip",
            checksum: "48b92e044953cbc763deb15955ec16486ae56bd2dc94494256f3833b98122f18"
        ),
        .binaryTarget(
            name: "OpenSSL",
            url: "https://github.com/digiyoid/NFCIdentiaReader-iOS/releases/download/1.0.0/OpenSSL.xcframework.zip",
            checksum: "3459173e58e3679e992cbdf1b5e021cfe22307e940c8c3ba28a562211b2bd5e0"
        )
    ]
)
