project "yaml-cpp"
	kind "StaticLib"
	language "C++"
	cppdialect "C++20"
	staticruntime "off"
	exceptionhandling "off"

	characterset "Unicode"

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

	defines
	{
		'YAML_CPP_STATIC_DEFINE'
	}

	filter "system:windows"
		systemversion "latest"

	filter "system:linux"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
