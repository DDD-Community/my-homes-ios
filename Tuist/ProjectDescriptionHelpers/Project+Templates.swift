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
      packages: packages,
      settings: settings,
      targets: targets,
      schemes: schemes,
      additionalFiles: additionalFiles
    )
  }
}
