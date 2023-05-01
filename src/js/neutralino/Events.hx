package js.neutralino;

import js.html.CustomEvent;
import js.lib.Promise;

/** Provides methods related to the native events handling. **/
extern class Events {

	/** Dispatches a new event to all clients (both application and extension clients). **/
	function broadcast(event: String, ?data: Any): Promise<Void>;

	/** Dispatches a new event to the current application instance. **/
	function dispatch(event: String, ?data: Any): Promise<Void>;

	/** Unregisters an event handler. **/
	function off(event: String, handler: CustomEvent -> Void): Promise<Void>;

	/** Registers a new event handler. **/
	function on(event: String, handler: CustomEvent -> Void): Promise<Void>;
}

/** The type of an event. **/
enum abstract EventType(String) to String {

	/** Occurs when a new application instance starts. **/
	var AppClientConnect = "appClientConnect";

	/** Occurs when an application instance ends. **/
	var AppClientDisconnect = "appClientDisconnect";

	/** Occurs when a new client access the application. **/
	var ClientConnect = "clientConnect";

	/** Occurs when a connected client leaves the application. **/
	var ClientDisconnect = "clientDisconnect";

	/** Occurs when a new extension connects. **/
	var ExtClientConnect = "extClientConnect";

	/** Occurs when an extension disconnects. **/
	var ExtClientDisconnect = "extClientDisconnect";

	/** Occurs when an extension is ready to communicate with the application. **/
	var ExtensionReady = "extensionReady";

	/** Occurs when the application is about to be reloaded after a resource modification. **/
	var NeuDevReloadApp = "neuDev_reloadApp";

	/** Occurs for each read action and whenever stream cursor reaches `EOF`. **/
	var OpenedFile = "openedFile";

	/** Occurs when the client library connects with the Neutralinojs server. **/
	var Ready = "ready";

	/** Occurs when the Neutralinojs server is offline. **/
	var ServerOffline = "serverOffline";

	/** Occurs then there is an update in a spawned process. **/
	var SpawnedProcess = "spawnedProcess";

	/** Occurs when the user clicks on a tray menu item. **/
	var TrayMenuItemClicked = "trayMenuItemClicked";

	/** Occurs for each filesystem change events based on watchers. **/
	var WatchFile = "watchFile";

	/** Occurs when the window focus state is gone. **/
	var WindowBlur = "windowBlur";

	/** Occurs when the user closes the window. **/
	var WindowClose = "windowClose";

	/** Occurs when the window gets focused. **/
	var WindowFocus = "windowFocus";
}
