import PackageDescription

let package = Package(
	name: "ActiveRecord",
	targets: [
		Target(name: "Base", dependencies: ["SQLs"]),
		Target(name: "Migration", dependencies: ["SQLs"]),
		Target(name: "SQLs"),
		Target(name: "SQLite", dependencies: ["SQLs"]),
		],
	dependencies: [
		.Package(url: "https://github.com/vapor/csqlite.git",
		         majorVersion: 1)
	]
)
