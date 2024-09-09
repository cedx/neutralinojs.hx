package js.neutralino;

import js.lib.Promise;

/** Provides a shared key-value storage. **/
extern class Storage {

	/** Reads data for the specified storage key. **/
	function getData(key: String): Promise<String>;

	/** Returns all storage keys. **/
	function getKeys(): Promise<Array<String>>;

	/** Writes data into the storage. **/
	function setData(key: String, data: Null<String>): Promise<Void>;
}
