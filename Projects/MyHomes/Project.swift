import ProjectDescription
import ProjectDescriptionHelpers

let appTarget = Target(
  name: "MyHomes",
  platform: .iOS,
  product: .app,
  bundleId: "com.myhomes",
  deploymentTarget: .iOS(targetVersion: "15.0", devices: .iphone),
  infoPlist: .file(path: "MyHomes/Supporting Files/Info.plist"),
  sources: [
    "MyHomes/Sources/**"
  ],
  resources: [
    "MyHomes/Resources/**",
  ],
  dependencies: []
)

let testTarget = Target(
  name: "MyHomesTests",
  platform: .iOS,
  product: .unitTests,
  bundleId: "com.myhomesTests",
  deploymentTarget: .iOS(targetVersion: "15.0", devices: .iphone),
  infoPlist: .default,
  sources: ["MyHomes/Tests/**"],
  dependencies: [
    .xctest,
    .target(name: "MyHomes"),
  ]
)

let project = Project.project(
  name: "MyHomes",
  packages: [],
  targets: [
    appTarget,
    testTarget,
  ],
  schemes: [
    Scheme(
      name: "MyHomes",
      buildAction: .buildAction(targets: ["MyHomes"]),
      testAction: .targets(["MyHomesTests"]),
      runAction: .runAction(configuration: .debug)
    )
  ]
)
