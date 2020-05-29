local current_dir = _SCRIPT_DIR

function IncludeSDKLZMA()
	local refcount = IncludePackage("sdklzma")

	local _project = project()

	sysincludedirs(current_dir)
	links("LZMA")

	if refcount == 1 then
		include(current_dir .. "/premake5_create_project.lua")
		project(_project.name)
	end
end