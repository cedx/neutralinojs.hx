package js.neutralino;

import js.lib.ArrayBuffer;
import js.lib.Promise;

extern class FileSystem {
	/*
	function appendBinaryFile(path: String, data: ArrayBuffer): Promise<Void>;
	function appendFile(path: String, data: String): Promise<Void>;
	function copyFile(source: String, destination: String): Promise<Void>;
	function createDirectory(path: String): Promise<Void>;
	function createWatcher(path: String): Promise<number>;
	function getOpenedFileInfo(id: number): Promise<OpenedFile>;
	function getStats(path: String): Promise<Stats>;
	function moveFile(source: String, destination: String): Promise<Void>;
	function openFile(path: String): Promise<number>;
	function readBinaryFile(path: String, ?options: FileReaderOptions): Promise<ArrayBuffer>;
	function readDirectory(path: String): Promise<DirectoryEntry[]>;
	function readFile(path: String, ?options: FileReaderOptions): Promise<String>;
	function removeDirectory(path: String): Promise<Void>;
	function removeFile(path: String): Promise<Void>;
	function removeWatcher(id: number): Promise<number>;
	function updateOpenedFile(id: number, event: String, ?data: Any): Promise<Void>;
	function writeBinaryFile(path: String, data: ArrayBuffer): Promise<Void>;
	function writeFile(path: String, data: String): Promise<Void>;*/
}

/*

typedef DirectoryEntry = {
	entry: String;
	type: String;
}

typedef FileReaderOptions = {
	pos: number;
	size: number;
}

typedef OpenedFile = {
	eof: Bool;
	id: number;
	lastRead: number;
	pos: number;
}

typedef Stats = {
	createdAt: number;
	isDirectory: Bool;
	isFile: Bool;
	modifiedAt: number;
	size: number;
}
*/
