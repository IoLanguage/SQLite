AddonBuilder clone do(
	dependsOnLib("sqlite")
	dependsOnHeader("sqlite.h")
    if(platform == "darwin",
        appendHeaderSearchPath("/usr/local/opt/sqlite2/include")
        appendHeaderSearchPath("/usr/local/opt/sqlite2/lib")
        appendHeaderSearchPath("/usr/local/opt/sqlite/include")
        appendHeaderSearchPath("/usr/local/opt/sqlite/lib")
    )

	debs    atPut("sqlite", "libsqlite0-dev")
	ebuilds atPut("sqlite", "sqlite")
	pkgs    atPut("sqlite", "sqlite2")
	rpms    atPut("sqlite", "sqlite-devel")
)
