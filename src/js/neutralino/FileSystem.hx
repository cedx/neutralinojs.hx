package js.neutralino;

import js.lib.ArrayBuffer;
import js.lib.Promise;

/** Provides methods for handling files. **/
extern class FileSystem {

	/** Appends binary data to a file. **/
	function appendBinaryFile(path: String, data: ArrayBuffer): Promise<Void>;

	/** Appends text content to a file. **/
	function appendFile(path: String, data: String): Promise<Void>;

	/** Copies a file to a new destination. **/
	function copyFile(source: String, destination: String): Promise<Void>;

	/** Creates a new directory. **/
	function createDirectory(path: String): Promise<Void>;

	/** Creates a filesystem watcher. **/
	function createWatcher(path: String): Promise<Int>;

	/** Returns details about a file stream. **/
	function getOpenedFileInfo(id: Int): Promise<OpenedFile>;

	/** Returns file statistics for the specified path. **/
	function getStats(path: String): Promise<Stats>;

	/** Moves a file to a new destination. **/
	function moveFile(source: String, destination: String): Promise<Void>;

	/** Creates a readable file stream. **/
	function openFile(path: String): Promise<Int>;

	/** Reads a binary file. **/
	function readBinaryFile(path: String, ?options: FileReaderOptions): Promise<ArrayBuffer>;

	/** Reads the contents of the specified directory. **/
	function readDirectory(path: String): Promise<Array<DirectoryEntry>>;

	/** Reads a text file. **/
	function readFile(path: String, ?options: FileReaderOptions): Promise<String>;

	/** Removes the specified directory. **/
	function removeDirectory(path: String): Promise<Void>;

	/** Removes the specified file. **/
	function removeFile(path: String): Promise<Void>;

	/** Removes a filesystem watcher. **/
	function removeWatcher(id: Int): Promise<Int>;

	/** Invokes an action on the specified file stream. **/
	function updateOpenedFile(id: Int, action: OpenedFileAction, ?data: Any): Promise<Void>;

	/** Writes a binary file. **/
	function writeBinaryFile(path: String, data: ArrayBuffer): Promise<Void>;

	/** Writes a text file. **/
	function writeFile(path: String, data: String): Promise<Void>;
}

/** A directory entry. **/
typedef DirectoryEntry = {

	/** The file name. **/
	final entry: String;

	/** The entry type. **/
	final type: DirectoryEntryType;
}

/** The type of a directory entry. **/
enum abstract DirectoryEntryType(String) to String {

	/** The entry is a directory. **/
	var Directory = "DIRECTORY";

	/** The entry is a file. **/
	var File = "FILE";
}

/** The options of the `FileSystem.readBinaryFile()` and `FileSystem.readFile()` methods. **/
typedef FileReaderOptions = {

	/** The file cursor position in bytes. **/
	var ?pos: Int;

	/** The file reader buffer size in bytes. **/
	var ?size: Int;
}

/** Details about a file stream. **/
typedef OpenedFile = {

	/** Value indicating whether the stream reached `EOF`. **/
	final eof: Bool;

	/** The file stream identifier. **/
	final id: Int;

	/** The number of last read bytes. **/
	final lastRead: Int;

	/** The file stream cursor position. **/
	final pos: Int;
}

/** An action to invoke on an opened file. **/
enum abstract OpenedFileAction(String) to String {

	/** Closes and frees file handler resources. **/
	var Close = "close";

	/** Reads a bytes segment from the file stream. **/
	var Read = "read";

	/** Triggers the `Read` action until file stream cursor position reaches `EOF`. **/
	var ReadAll = "readAll";

	/** Sets the file cursor position. **/
	var Seek = "seek";
}

/** Statistics about a file system entity. **/
typedef Stats = {

	/** The Unix milliseconds of the entity creation time. **/
	final createdAt: Float;

	/** Value indicating whether the entity represents a directory. **/
	final isDirectory: Bool;

	/** Value indicating whether the entity represents a file. **/
	final isFile: Bool;

	/** The Unix milliseconds of the last entity modification time. **/
	final modifiedAt: Float;

	/** The size in bytes. **/
	final size: Int;
}
