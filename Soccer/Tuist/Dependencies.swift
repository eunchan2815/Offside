import ProjectDescription

let dependencies = Dependencies(
    carthage: nil,
    swiftPackageManager: [
        .remote(url: "https://github.com/Moya/Moya.git",
                requirement: .upToNextMajor(from: "15.0.0")),
        .remote(url: "https://github.com/Alamofire/Alamofire",
                requirement: .upToNextMajor(from: "5.9.1"))
    ],
    platforms: [.iOS]
)

