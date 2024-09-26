package js.neutralino;

import js.lib.ArrayBuffer;
import js.lib.Promise;

/** Provides methods to parse, read, and extract the loaded resource bundle (`resources.neu`). **/
extern class Resources {

	/** Extracts a file from the resource bundle to a preferred path. **/
	function extractFile(path: String, destination: String): Promise<Void>;

	/** Returns all files and directories embedded in the resource bundle. **/
	function getFiles(): Promise<Array<String>>;

	/** Reads a binary file from the resource bundle. **/
	function readBinaryFile(path: String): Promise<ArrayBuffer>;

	/** Reads a text file from the resource bundle. **/
	function readFile(path: String): Promise<String>;
}
