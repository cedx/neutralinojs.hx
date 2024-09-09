package js.neutralino;

import haxe.DynamicAccess;
import js.lib.Promise;

/** Prvides methods related to the current application instance. **/
extern class App {

	/** Dispatches a new event to all application instances. **/
	function broadcast(event: String, ?data: Any): Promise<Void>;

	/** Terminates the running application. **/
	function exit(?code: Int): Promise<Void>;

	/** Returns the current application configuration as a JSON object. **/
	function getConfig(): Promise<DynamicAccess<Dynamic>>;

	/** Kills the application process. **/
	function killProcess(): Promise<Void>;

	/** Reads string data from the standard input stream of the application process. **/
	function readProcessInput(?readAll: Bool): Promise<String>;

	/** Restarts the current application instance. **/
	function restartProcess(?options: RestartOptions): Promise<Void>;

	/** Writes string data to the standard error stream of the application process. **/
	function writeProcessError(data: String): Promise<Void>;

	/** Writes string data to the standard output stream of the application process. **/
	function writeProcessOutput(data: String): Promise<Void>;
}

/** The options of the `App.restartProcess()` method. **/
typedef RestartOptions = {

	/** The additional command-line arguments. **/
	var ?args: String;
}
