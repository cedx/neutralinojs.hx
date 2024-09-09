package js.neutralino;

import js.lib.ArrayBuffer;
import js.lib.Promise;

/** Provides methods for handling files. **/
extern class FileSystem {

	/** Appends binary data to a file. **/
	function appendBinaryFile(path: String, data: ArrayBuffer): Promise<Void>;

	/** Appends text content to a file. **/
	function appendFile(path: String, data: String): Promise<Void>;

	/** Copies a file or directory to a new destination. **/
	function copy(source: String, destination: String, ?options: CopyOptions): Promise<Void>;

	/** Creates a new directory. **/
	function createDirectory(path: String): Promise<Void>;

	/** Creates a filesystem watcher. **/
	function createWatcher(path: String): Promise<Int>;

	/** Returns the absolute path for a given path. **/
	function getAbsolutePath(path: Sring): Promise<String>;

	/** Returns details about a file stream. **/
	function getOpenedFileInfo(id: Int): Promise<OpenedFile>;

	/** Parses a given path and returns its parts. **/
	function getPathParts(path: String): Promise<PathParts>;

	/** Returns the relative path for a given path and base. **/
	function getRelativePath(path: Sring, ?base: String): Promise<String>;

	/** Returns file statistics for the specified path. **/
	function getStats(path: String): Promise<Stats>;

	/** Returns information about created file watchers. **/
	function getWatchers(): Promise<Array<FileWatcher>>;

	/** Moves a file or directory to a new destination. **/
	function move(source: String, destination: String): Promise<Void>;

	/** Creates a readable file stream. **/
	function openFile(path: String): Promise<Int>;

	/** Reads a binary file. **/
	function readBinaryFile(path: String, ?options: FileReaderOptions): Promise<ArrayBuffer>;

	/** Reads the contents of the specified directory. **/
	function readDirectory(path: String, ?options: DirectoryReaderOptions): Promise<Array<DirectoryEntry>>;

	/** Reads a text file. **/
	function readFile(path: String, ?options: FileReaderOptions): Promise<String>;

	/** Removes the specified file or directory. **/
	function remove(path: String): Promise<Void>;

	/** Removes a filesystem watcher. **/
	function removeWatcher(id: Int): Promise<Int>;

	/** Invokes an action on the specified file stream. **/
	function updateOpenedFile(id: Int, action: OpenedFileAction, ?data: Any): Promise<Void>;

	/** Writes a binary file. **/
	function writeBinaryFile(path: String, data: ArrayBuffer): Promise<Void>;

	/** Writes a text file. **/
	function writeFile(path: String, data: String): Promise<Void>;
}

/** The options of the `FileSystem.copy()` method. **/
typedef CopyOptions = {

	/** Value indicating whether to overwrite an existing file with the same name. **/
	var ?overwrite: Bool;

	/** Value indicating whether to copy sub-directories recursively. **/
	var ?recursive: Bool;

	/** Value indicating whether to skip an existing file with the same name. **/
	var ?skip: Bool;
}

/** A directory entry. **/
typedef DirectoryEntry = {

	/** The file name. **/
	final entry: String;

	/** The entry type. **/
	final type: DirectoryEntryType;
}

/** The type of a directory entry. **/
enum abstract DirectoryEntryType(String) from String to String {

	/** The entry is a directory. **/
	var Directory = "DIRECTORY";

	/** The entry is a file. **/
	var File = "FILE";
}

/** The options of the `FileSystem.readDirectory()` method. **/
typedef DirectoryReaderOptions = {

	/** Value indicating whether to read sub-directories recursively. **/
	var ?recursive: Bool;
}

/** The options of the `FileSystem.readBinaryFile()` and `FileSystem.readFile()` methods. **/
typedef FileReaderOptions = {

	/** The file cursor position in bytes. **/
	var ?pos: Int;

	/** The file reader buffer size in bytes. **/
	var ?size: Int;
}

/** Represents a file watcher. **/
typedef FileWatcher = {

	/** The watcher identifier. **/
	final id: Int;

	/** The file watcher path. **/
	final path: String;
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
enum abstract OpenedFileAction(String) from String to String {

	/** Closes and frees file handler resources. **/
	var Close = "close";

	/** Reads a bytes segment from the file stream. **/
	var Read = "read";

	/** Reads a bytes segment from the file stream, using the binary read mode. **/
	var ReadBinary = "readBinary";

	/** Triggers the `Read` action until file stream cursor position reaches `EOF`. **/
	var ReadAll = "readAll";

	/** Triggers the `Read` action until file stream cursor position reaches `EOF`, using the binary read mode. **/
	var ReadAllBinary = "readAllBinary";

	/** Sets the file cursor position. **/
	var Seek = "seek";
}

/** Represents the different parts of a file path. **/
typedef PathParts = {

	/** The file extension. **/
	final extension: String;

	/** The file name. **/
	final filename: String;

	/** The parent path or the directory path without filename. **/
	final parentPath: String;

	/** The path relative to the root path. **/
	final relativePath: String;

	/** The root path directory. **/
	final rootDirectory: String;

	/** The root path name. **/
	final rootName: String;

	/** The root path. **/
	final rootPath: String;

	/** The filename segment without extension. **/
	final stem: String;
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
