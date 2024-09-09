package js.neutralino;

import haxe.DynamicAccess;
import js.lib.Promise;

/** Provides methods related to the user's operating system. **/
extern class Os {

	/** Executes a command and returns the output. **/
	function execCommand(command: String, ?options: ExecOptions): Promise<Process>;

	/** Provides the value of the specified environment variable. **/
	function getEnv(key: String): Promise<String>;

	/** Returns all environment variables and their values. **/
	function getEnvs(): Promise<DynamicAccess<String>>;

	/** Returns the path to a known platform-specific folder. **/
	function getPath(name: KnownPath): Promise<String>;

	/** Returns all spawned processes. **/
	function getSpawnedProcesses(): Promise<Array<SpawnedProcess>>;

	/** Opens the specified URL with the default web browser. **/
	function open(url: String): Promise<Void>;

	/** Creates or updates the tray icon and menu. **/
	function setTray(options: TrayOptions): Promise<Void>;

	/** Shows the folder open dialog. **/
	function showFolderDialog(?title: String, ?options: FolderDialogOptions): Promise<String>;

	/** Displays a message box. **/
	function showMessageBox(title: String, content: String, ?choice: MessageBoxButtons, ?icon: Icon): Promise<MessageBoxResult>;

	/** Displays a notification message. **/
	function showNotification(title: String, content: String, ?icon: Icon): Promise<Void>;

	/** Shows the file open dialog. **/
	function showOpenDialog(?title: String, ?options: OpenDialogOptions): Promise<Array<String>>;

	/** Shows the file save dialog. **/
	function showSaveDialog(?title: String, ?options: SaveDialogOptions): Promise<String>;

	/** Spawns a process based on a command in background and let developers control it. **/
	function spawnProcess(command: String, ?cwd: String): Promise<SpawnedProcess>;

	/** Invokes an action on the specified spawned process. **/
	function updateSpawnedProcess(id: Int, action: SpawnedProcessAction, ?data: Any): Promise<Void>;
}

/** The options of the `Os.execCommand()` method. **/
typedef ExecOptions = {

	/** Value indicating whether to execute the command in background. **/
	var ?background: Bool;

	/** The current working directory. **/
	var ?cwd: String;

	/** The standard input as a string. **/
	var ?stdIn: String;
}

/** Filters a file list. **/
typedef Filter = {

	/** The file extensions. **/
	var extensions: Array<String>;

	/** The filter name. **/
	var name: String;
}

/** The options of the `Os.showFolderDialog()` method. **/
typedef FolderDialogOptions = {

	/** The initial path displayed by the dialog. **/
	var ?defaultPath: String;
}

/** The icon to display in a message box or notification. **/
enum abstract Icon(String) from String to String {

	/** A symbol consisting of white "X" in a circle with a red background. **/
	var Error = "ERROR";

	/** A symbol consisting of a lowercase letter "i" in a circle. **/
	var Info = "INFO";

	/** A symbol consisting of a question mark in a circle. **/
	var Question = "QUESTION";

	/** A symbol consisting of an exclamation point in a triangle with a yellow background. **/
	var Warning = "WARNING";
}

/** The known platform-specific folders. **/
enum abstract KnownPath(String) from String to String {

	/** The cache folder. **/
	var Cache = "cache";

	/** The configuration folder. **/
	var Config = "config";

	/** The data folder. **/
	var Data = "data";

	/** The "Documents" folder. **/
	var Documents = "documents";

	/** The "Downloads" folder. **/
	var Downloads = "downloads";

	/** The "Music" folder. **/
	var Music = "music";

	/** The "Pictures" folder. **/
	var Pictures = "pictures";

	/** The first "Saved Games" folder. **/
	var SavedGames1 = "savedGames1";

	/** The second "Saved Games" folder. **/
	var SavedGames2 = "savedGames2";

	/** The "Videos" folder. **/
	var Video = "video";
}

/** The buttons to display in a message box. **/
enum abstract MessageBoxButtons(String) from String to String {

	/** The message box contains "Abort", "Retry" and "Ignore" buttons. **/
	var AbortRetryIgnore = "ABORT_RETRY_IGNORE";

	/** The message box contains an "OK" button. **/
	var Ok = "OK";

	/** The message box contains "OK" and "Cancel" buttons. **/
	var OkCancel = "OK_CANCEL";

	/** The message box contains "Retry" and "Cancel" buttons. **/
	var RetryCancel = "RETRY_CANCEL";

	/** The message box contains "Yes" and "No" buttons. **/
	var YesNo = "YES_NO";

	/** The message box contains "Yes", "No" and "Cancel" buttons. **/
	var YesNoCancel = "YES_NO_CANCEL";
}

/** Specifies the return value of a message box. **/
enum abstract MessageBoxResult(String) from String to String {

	/** The return value of the message box is "Abort". **/
	var Abort = "ABORT";

	/** The return value of the message box is "Cancel". **/
	var Cancel = "CANCEL";

	/** The return value of the message box is "Ignore". **/
	var Ignore = "IGNORE";

	/** The return value of the message box is "No". **/
	var No = "NO";

	/** The return value of the message box is "OK". **/
	var Ok = "OK";

	/** The return value of the message box is "Retry". **/
	var Retry = "RETRY";

	/** The return value of the message box is "Yes". **/
	var Yes = "YES";
}

/** The options of the `Os.showOpenDialog()` method. **/
typedef OpenDialogOptions = {

	/** The initial path/filename displayed by the dialog. **/
	var ?defaultPath: String;

	/** An array of objects to filter the file list. **/
	var ?filters: Array<Filter>;

	/** Value indicating whether to enable multi selections. **/
	var ?multiSelections: Bool;
}

/** The options of the `Os.showSaveDialog()` method. **/
typedef SaveDialogOptions = {

	/** The initial path/filename displayed by the dialog. **/
	var ?defaultPath: String;

	/** An array of objects to filter the file list. **/
	var ?filters: Array<Filter>;

	/** Value indicating whether to skip the file overwrite warning message. **/
	var ?forceOverwrite: Bool;
}

/** A spawned process. **/
typedef SpawnedProcess = {

	/** The Neutralinojs-scoped process identifier. **/
	final id: Int;

	/** The process identifier from the operating system. **/
	final pid: Int;
}

/** An action to invoke on a spawned process. **/
enum abstract SpawnedProcessAction(String) from String to String {

	/** Terminates the process. **/
	var Exit = "exit";

	/** Sends data to the process via the standard input stream. **/
	var StdIn = "stdIn";

	/** Closes the standard input stream file descriptor. **/
	var StdInEnd = "stdInEnd";
}

/** A tray menu item. **/
typedef TrayMenuItem = {

	/** A unique identifier. **/
	var ?id: String;

	/** Value indicating whether this menu item is checked. **/
	var ?isChecked: Bool;

	/** Value indicating whether this menu item is disabled. **/
	var ?isDisabled: Bool;

	/** The label of the menu item. **/
	var text: String;
}

/** The options of the `Os.setTray()` method. **/
typedef TrayOptions = {

	/** The tray icon path. **/
	var ?icon: String;

	/** The tray menu items. **/
	var ?menu: Array<TrayMenuItem>;
}
