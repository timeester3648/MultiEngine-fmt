void main(MultiBuild::Workspace& workspace) {	
	auto project = workspace.create_project(".");
	auto properties = project.properties();

	project.name("fmt");
	properties.binary_object_kind(MultiBuild::BinaryObjectKind::eStaticLib);
	project.license("./LICENSE");
	properties.tags("utf8");

	project.include_own_required_includes(true);
	project.add_required_project_include({
		"./include"
	});

	properties.files({
		"./include/**.h",

		"./src/os.cc",
		"./src/format.cc"
	});
}