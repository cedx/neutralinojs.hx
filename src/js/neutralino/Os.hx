package js.neutralino;

import js.lib.Promise;

/** TODO **/
@:native("Neutralino.os")
extern class Os {
	// TODO
}

/** TODO **/
enum abstract OsName(String) to String {
	var Darwin = "Darwin";
	var Linux = "Linux";
	var Windows = "Windows";
}
