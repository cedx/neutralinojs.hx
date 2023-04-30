package js;

import js.neutralino.Debug;
import js.neutralino.Updater;

/** The top-level Neutralinojs object. **/
@:native("Neutralino")
extern class Neutralino {

	/** The debugging utility. **/
	static final debug: Debug;

	/** The built-in automatic updater. **/
	static final updater: Updater;

	/** Initializes the client library. **/
	static function init(?options: NeutralinoOptions): Void;
}

/** Defines the options of the `Neutralino.init()` method. **/
typedef NeutralinoOptions = {

	/** Value indicating whether to export the custom methods. **/
	var ?exportCustomMethods: Bool;
}
