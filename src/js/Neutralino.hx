package js;

import js.neutralino.*;

/** The top-level Neutralinojs object. **/
@:native("Neutralino")
extern class Neutralino {

	/** The current application instance. **/
	static final app: App;

	/** The system clipboard. **/
	static final clipboard: Clipboard;

	/** Access to the user's hardware. **/
	static final computer: Computer;

	/** The custom methods added by the application developer. **/
	static final custom: Custom;

	/** The debugging utility. **/
	static final debug: Debug;

	/** The event manager. **/
	static final events: Events;

	/** The extension manager. **/
	static final extensions: Extensions;

	/** The file system manager. **/
	static final filesystem: FileSystem;

	/** Access to the user's operating system. **/
	static final os: Os;

	/** The resource manager. **/
	static final resources: Resources;

	/** The shared key-value storage. **/
	static final storage: Storage;

	/** The automatic updater. **/
	static final updater: Updater;

	/** The native window manager. **/
	static final window: Window;

	/** Initializes the client library. **/
	static function init(?options: InitOptions): Void;
}

/** The options of the `Neutralino.init()` method. **/
typedef InitOptions = {

	/** Value indicating whether to export the custom methods. **/
	var ?exportCustomMethods: Bool;
}
