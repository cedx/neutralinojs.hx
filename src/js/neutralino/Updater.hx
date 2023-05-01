package js.neutralino;

import js.lib.Promise;

/** Provides methods related to built-in automatic updater. **/
extern class Updater {

	/** Checks the latest updates from the given URL. **/
	function checkForUpdates(url: String): Promise<Manifest>;

	/** Installs updates from the downloaded update manifest. **/
	function install(): Promise<Void>;
}

/** An update manifest. **/
typedef Manifest = {

	/** The application identifier. **/
	final applicationId: String;

	/** The link to download the `resources.neu` file. **/
	final resourcesURL: String;

	/** The application version. **/
	final version: String;
}
