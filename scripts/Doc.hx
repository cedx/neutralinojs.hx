//! --class-path src
import neutralinojs.Version;
import sys.FileSystem;
import sys.io.File;
using Lambda;

/** Builds the documentation. **/
function main() {
	["CHANGELOG.md", "LICENSE.md"].iter(file -> File.copy(file, 'docs/${file.toLowerCase()}'));
	if (FileSystem.exists("docs/api")) Tools.removeDirectory("docs/api");

	Sys.command("haxe --define doc-gen --no-output --xml var/api.xml build.hxml");
	Sys.command("lix", ["run", "dox",
		"--define", "description", "Type definitions for using Neutralinojs with Haxe.",
		"--define", "source-path", "https://github.com/cedx/neutralinojs.hx/blob/main/src",
		"--define", "themeColor", "0xea8220",
		"--define", "version", Version.packageVersion,
		"--define", "website", "https://docs.belin.io/neutralinojs.hx",
		"--input-path", "var",
		"--output-path", "docs/api",
		"--title", "Haxe Externs for Neutralinojs",
		"--toplevel-package", "js.neutralino"
	]);

	File.copy("docs/favicon.ico", "docs/api/favicon.ico");
}
