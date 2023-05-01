package js.neutralino;

import js.lib.Promise;

/** Provides access to the system clipboard. **/
extern class Clipboard {

	/** Reads text from the system clipboard. **/
	function readText(): Promise<String>;

	/** Writes text into the system clipboard. **/
	function writeText(data: String): Promise<Void>;
}
