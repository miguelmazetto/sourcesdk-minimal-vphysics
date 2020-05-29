local current_dir = _SCRIPT_DIR

function IncludeSDKBitmap()
	local refcount = IncludePackage("sdkbitmap")

	local _project = project()

	links("bitmap")

	if refcount == 1 then
		include(current_dir .. "/premake5_create_project.lua")
		project(_project.name)
	end
end