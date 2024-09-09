package js.neutralino;

import js.lib.Promise;

/** Provides application debugging utilities. **/
extern class Debug {

	/** Writes a message to `neutralinojs.log` file and/or standard output streams. **/
	function log(message: String, ?type: LogType): Promise<Void>;
}

/** The type of a log message. **/
enum abstract LogType(String) from String to String {

	/** An error message. **/
	var Error = "ERROR";

	/** An informative message. **/
	var Info = "INFO";

	/** A warning message. **/
	var Warning = "WARNING";
}
