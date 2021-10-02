import ProjectDescription

extension Project {
  public static func project(
    name: String,
    packages: [Package] = [],
    settings: Settings? = nil,
    targets: [Target],
    schemes: [Scheme],
    additionalFiles: [FileElement] = []
  ) -> Project {
    return Project(
      name: name,
      organizationName: "MyHomes",
      options: [
        .textSettings(
          indentWidth: 2,
          tabWidth: 2
        )
      ],
      packages: packages,
      settings: settings,
      targets: targets,
      schemes: schemes,
      additionalFiles: additionalFiles
    )
  }
}
