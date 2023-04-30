package js.neutralino;

import js.lib.Promise;

/** TODO **/
@:native("Neutralino.app")
extern class App {
	// TODO
}

/** TODO **/
enum abstract AppMode(String) to String {
	var Browser = "browser";
	var Chrome = "chrome";
	var Cloud = "cloud";
	var Window = "window";
}
