import PackageDescription

let package = Package(
    name: "ProtoBuffs-Swift",

    dependencies: [
      .Package(url: "https://github.com/apple/swift-protobuf.git", Version(0,9,24))
    ]
)
