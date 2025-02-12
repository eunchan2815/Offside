import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Soccer",
    product: .app,
    dependencies: [
        .Moya,
        .Alamofire,
        .Kingfisher,
        .Shimmer
    ],
    resources: ["Resources/**"],
    infoPlist: .file(path: "Support/info.plist")
)

