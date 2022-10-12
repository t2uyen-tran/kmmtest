// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://api.github.com/repos/t2uyen-tran/kmmtest/releases/assets/80728272.zip"
let remoteKotlinChecksum = "d813b8c184f692fe1fe0aea42be2a1abe15dcae827a6c0d224a077bd36e39dba"
let packageName = "shared"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)