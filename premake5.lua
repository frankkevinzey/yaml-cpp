project "yaml-cpp"
	kind "StaticLib"
	language "C++"
	cppdialect "C++20"

	targetdir (BIN .. "/%{prj.name}")
	objdir (OBJ .. "/%{prj.name}")

	files
	{
		"src/**.h",
		"src/**.cpp",

		"include/**.h"
	}

	includedirs
	{
		"include"
	}

	filter "system:windows"
		systemversion "latest"
		staticruntime "On"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
