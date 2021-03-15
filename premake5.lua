project "yaml-cpp"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"

	targetdir ("%{prj.location}/bin/%{prj.name}-%{cfg.system}-%{cfg.architecture}/")
	objdir ("%{prj.location}/bin-int/%{prj.name}-%{cfg.system}-%{cfg.architecture}/")

	includedirs
	{
		"%{prj.location}/include/"
	}

    files
	{
		"src/**.cpp",
		"src/**.h"
	}
	
	filter "system:windows"
		systemversion "latest"
		
	filter "configurations:Debug"
		defines "DEBUG"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		defines "NDEBUG"
		runtime "Release"
		optimize "on"