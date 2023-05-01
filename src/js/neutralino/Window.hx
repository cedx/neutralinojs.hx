package js.neutralino;

import haxe.extern.EitherType;
import js.html.Element;
import js.lib.Promise;
import js.neutralino.Os.Process;

/** Provides methods related to the current native window instance. **/
extern class Window {

	/** Creates a native window. **/
	function create(url: String, ?options: WindowOptions): Promise<Process>;

	/** Exits from the full screen mode. **/
	function exitFullScreen(): Promise<Void>;

	/** Focuses the native window. **/
	function focus(): Promise<Void>;

	/** Returns the window position coordinates. **/
	function getPosition(): Promise<WindowPosition>;

	/** Returns the window size information. **/
	function getSize(): Promise<WindowSizeOptions>; // TODO options ??? or everything is "final"?

	/** Returns the title of the native window. **/
	function getTitle(): Promise<String>;

	/** Hides the native window. **/
	function hide(): Promise<Void>;

	/** Gets a value indicating whether the native window is in the full screen mode. **/
	function isFullScreen(): Promise<Bool>;

	/** Gets a value indicating whether the native window is maximized. **/
	function isMaximized(): Promise<Bool>;

	/** Gets a value indicating whether the native window is visible. **/
	function isVisible(): Promise<Bool>;

	/** Maximizes the native window. **/
	function maximize(): Promise<Void>;

	/** Minimizes the native window. **/
	function minimize(): Promise<Void>;

	/** Moves the native window into the specified coordinates. **/
	function move(x: Int, y: Int): Promise<Void>;

	/** Activates or deactivates the always on top mode. **/
	function setAlwaysOnTop(value: Bool): Promise<Void>;

	/** Converts the specified DOM element to a draggable region. **/
	function setDraggableRegion(elementOrId: EitherType<Element, String>): Promise<Void>;

	/** Enables the full screen mode. **/
	function setFullScreen(): Promise<Void>;

	/** Sets an icon for the native window. **/
	function setIcon(icon: String): Promise<Void>;

	/** Sets the size of the window. **/
	function setSize(options: WindowSizeOptions): Promise<Void>;

	/** Sets the title of the native window. **/
	function setTitle(title: String): Promise<Void>;

	/** Shows the native window. **/
	function show(): Promise<Void>;

	/** Restores the native window. **/
	function unmaximize(): Promise<Void>;

	/** Converts a draggable region to a normal DOM element by removing drag event handlers. **/
	function unsetDraggableRegion(elementOrId: EitherType<Element, String>): Promise<Void>;
}

/** The options of the `Window.create()` method. **/
typedef WindowOptions = WindowSizeOptions & {

	/** Value indicating whether to activate the top-most mode. **/
	var ?alwaysOnTop: Bool;

	/** Value indicating whether to make the window borderless. **/
	var ?borderless: Bool;

	/** Value indicating whether to activate the developer tools and open the web inspector window. **/
	var ?enableInspector: Bool;

	/** Value indicating whether to exit the application process when the user clicks the window's close button. **/
	var ?exitProcessOnClose: Bool;

	/** Value indicating whether to set the full screen mode. **/
	var ?fullScreen: Bool;

	/** Value indicating whether to hide the window. **/
	var ?hidden: Bool;

	/** The path of the window icon. **/
	var ?icon: String;

	/** Value indicating whether to make the window maximizable. **/
	var ?maximizable: Bool;

	/** Value indicating whether to launch the window maximized. **/
	var ?maximize: Bool;

	/** Additional command line arguments for the new window process. **/
	var ?processArgs: String;

	/** The window title. **/
	var ?title: String;
}

/** The options of the `Window.create()` method. **/
typedef WindowSizeOptions = {

	/** The height in pixels. **/
	var ?height: Int;

	/** The maximum height in pixels. **/
	var ?maxHeight: Int;

	/** The maximum width in pixels. **/
	var ?maxWidth: Int;

	/** The minimum height in pixels. **/
	var ?minHeight: Int;

	/** The minimum width in pixels. **/
	var ?minWidth: Int;

	/** Value indicating wether the window is resizable or fixed. **/
	var ?resizable: Bool;

	/** The width in pixels. **/
	var ?width: Int;
}

/** The coordinates of a native window. **/
typedef WindowPosition = {

	/** The horizontal position. **/
	final x: Int;

	/** The vertical position. **/
	final y: Int;
}
