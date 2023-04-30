package js.neutralino;

import js.lib.Promise;

/** Prvides methods related to the current application instance. **/
extern class App {

	/** Dispatches a new event to all application instances. **/
	function broadcast(event: String, ?data: Any): Promise<Void>;

	/** Terminates the running application. **/
	function exit(?code: Int): Promise<Void>;

	/** Returns the current application configuration as a JSON object. **/
	function getConfig(): Promise<Dynamic>;

	/** Kills the application process. **/
	function killProcess(): Promise<Void>;

	/** Restarts the current application instance. **/
	function restartProcess(?options: RestartOptions): Promise<Void>;
}

/** The application mode. **/
enum abstract AppMode(String) to String {

	/** Uses the user's default browser to load the application. **/
	var Browser = "browser";

	/** Runs as a Chrome application. **/
	var Chrome = "chrome";

	/** Runs as a background server. **/
	var Cloud = "cloud";

	/** Runs on a native window. **/
	var Window = "window";
}

/** Defines the options of the `App.restartProcess()` method. **/
typedef RestartOptions = {

	/** The additional command-line arguments. **/
	var ?args: String;
}
