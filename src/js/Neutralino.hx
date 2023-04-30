package js;

import js.neutralino.Clipboard;
import js.neutralino.Debug;
import js.neutralino.Extensions;
import js.neutralino.Storage;
import js.neutralino.Updater;

/** The top-level Neutralinojs object. **/
@:native("Neutralino")
extern class Neutralino {

	/** The system clipboard. **/
	static final clipboard: Clipboard;

	/** The debugging utility. **/
	static final debug: Debug;

	/** The extension manager. **/
	static final extensions: Extensions;

	/** The shared key-value storage. **/
	static final storage: Storage;

	/** The automatic updater. **/
	static final updater: Updater;

	/** Initializes the client library. **/
	static function init(?options: NeutralinoOptions): Void;
}

/** Defines the options of the `Neutralino.init()` method. **/
typedef NeutralinoOptions = {

	/** Value indicating whether to export the custom methods. **/
	var ?exportCustomMethods: Bool;
}
