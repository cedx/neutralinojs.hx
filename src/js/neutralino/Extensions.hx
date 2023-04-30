package js.neutralino;

import js.lib.Promise;

/** Provides methods related to Neutralinojs extensions. **/
extern class Extensions {

	/** Dispatches a new event to all connected extensions. **/
	function broadcast(event: String, ?data: Any): Promise<Void>;

	/** Dispatches a new event to an extension instance. **/
	function dispatch(extensionId: String, event: String, ?data: Any): Promise<Void>;

	/** Returns details about connected and loaded extensions. **/
	function getStats(): Promise<ExtensionStats>;
}

/** Provides details about connected and loaded extensions. **/
typedef ExtensionStats = {

	/** The list of connected extensions. **/
	final connected: Array<String>;

	/** The list of loaded extensions. **/
	final loaded: Array<String>;
}
