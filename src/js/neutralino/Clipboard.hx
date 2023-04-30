package js.neutralino;

import js.lib.Promise;

/** Provides access to the system clipboard. **/
extern class Clipboard {

	/** Reads text from the system clipboard. **/
	function readText(key: String, data: String): Promise<Void>;

	/** Writes text into the system clipboard. **/
	function writeText(data: String): Promise<String>;
}
