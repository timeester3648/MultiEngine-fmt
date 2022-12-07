include "../../premake/common_premake_defines.lua"

project "fmt"
	kind "StaticLib"
	language "C++"
	cppdialect "C++latest"
	cdialect "C17"
	targetname "%{prj.name}"
	inlining "Auto"

	files {
		"./include/**.h",

		"./src/os.cc",
		"./src/format.cc"
	}

	includedirs {
		"%{IncludeDir.fmt}"
	}