package js.neutralino;

import js.lib.ArrayBuffer;
import js.lib.Promise;

/** Provides access to the system clipboard. **/
extern class Clipboard {

	/** Returns the current data format of the system clipboard. **/
	function getFormat(): Promise<ClipboardFormat>;

	/** Reads an image from the system clipboard. **/
	function readImage(): Promise<ClipboardImage>;

	/** Reads text from the system clipboard. **/
	function readText(): Promise<String>;

	/** Writes an image into the system clipboard. **/
	function writeImage(image: ClipboardImageOptions): Promise<Void>;

	/** Writes text into the system clipboard. **/
	function writeText(text: String): Promise<Void>;
}

/** The format of the current clipboard data. **/
enum abstract ClipboardFormat(String) from String to String {

	/** The clipboard contains an image. **/
	var Image = "image";

	/** The clipboard contains text. **/
	var Text = "text";

	/** The format of the clipboard data is unknown. **/
	var Unknown = "unknown";
}

/** Represents an image stored into the system clipboard. **/
typedef ClipboardImage = {

	/** The blue mask. **/
	final blueMask: Int;

	/** The blue shift. **/
	final blueShift: Int;

	/** The number of bits per pixel (BPP). **/
	final bpp: Int;

	/** The number of bytes per row (BPR). **/
	final bpr: Int;

	/** The raw RGBA binary data of the image in an array buffer. **/
	final data: ArrayBuffer;

	/** The green mask. **/
	final greenMask: Int;

	/** The green shift. **/
	final greenShift: Int;

	/** The image height. **/
	final height: Int;

	/** The red mask. **/
	final redMask: Int;

	/** The red shift. **/
	final redShift: Int;

	/** The image width. **/
	final width: Int;
}

/** The options of the `Clipboard.writeImage()` method. **/
typedef ClipboardImageOptions = {

	/** The blue mask. **/
	var ?blueMask: Int;

	/** The blue shift. **/
	var ?blueShift: Int;

	/** The number of bits per pixel (BPP). **/
	var ?bpp: Int;

	/** The number of bytes per row (BPR). **/
	var ?bpr: Int;

	/** The raw RGBA binary data of the image in an array buffer. **/
	var ?data: ArrayBuffer;

	/** The green mask. **/
	var ?greenMask: Int;

	/** The green shift. **/
	var ?greenShift: Int;

	/** The image height. **/
	var ?height: Int;

	/** The red mask. **/
	var ?redMask: Int;

	/** The red shift. **/
	var ?redShift: Int;

	/** The image width. **/
	var ?width: Int;
}
