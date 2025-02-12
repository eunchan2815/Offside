import ProjectDescription

let dependencies = Dependencies(
    carthage: nil,
    swiftPackageManager: [
        .remote(url: "https://github.com/Moya/Moya.git",
                requirement: .upToNextMajor(from: "15.0.0")),
        .remote(url: "https://github.com/Alamofire/Alamofire",
                requirement: .upToNextMajor(from: "5.9.1")),
        .remote(url: "https://github.com/onevcat/Kingfisher",
                requirement: .upToNextMajor(from: "8.1.4")),
        .remote(url: "https://github.com/markiv/SwiftUI-Shimmer",
                requirement: .upToNextMajor(from: "1.5.1"))
    ],
    platforms: [.iOS]
)

