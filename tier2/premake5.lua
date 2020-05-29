local current_dir = _SCRIPT_DIR

function IncludeSDKTier2()
	IncludePackage("sdktier2")

	filter({})

	sysincludedirs(current_dir .. "/../public/tier2")

	filter("system:windows")
		links("tier2")

	filter("system:macosx")
		linkoptions(current_dir .. "/../lib/public/osx32/tier2.a")

	filter("system:linux")
		linkoptions(current_dir .. "/../lib/public/linux32/tier2.a")

	filter({})
end