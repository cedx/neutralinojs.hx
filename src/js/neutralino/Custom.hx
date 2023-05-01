package js.neutralino;

import js.lib.Promise;

/** Provides access to the extensions API. **/
extern class Custom {

	/** Returns all custom methods added by the application developer. **/
	function getMethods(): Promise<Array<String>>;
}
