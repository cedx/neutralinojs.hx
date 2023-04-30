package js.neutralino;

/** Provides global variables. **/
@:native("")
extern class Globals {

	/** The application identifier. **/
	static final NL_APPID: String;

	/** The application version. **/
	static final NL_APPVERSION: String;

	/** The command line arguments. **/
	static final NL_ARGS: Array<String>;

	/** The client library's release commit hash. **/
	static final NL_CCOMMIT: String;

	/** The custom method identifiers. **/
	static final NL_CMETHODS: Array<String>;

	/** The framework binary's release commit hash. **/
	static final NL_COMMIT: String;

	/** The Neutralinojs client version. **/
	static final NL_CVERSION: String;

	/** The current working directory. **/
	static final NL_CWD: String;

	/** Value indicating whether extensions are enabled. **/
	static final NL_EXTENABLED: Bool;

	/** The application mode. **/
	static final NL_MODE: AppMode;

	/** The operating system name. **/
	static final NL_OS: OsName;

	/** The application path. **/
	static final NL_PATH: String;

	/** The identifier of the current process. **/
	static final NL_PID: Int;

	/** The application port. **/
	static final NL_PORT: Int;

	/** The source of application resources. **/
	static final NL_RESMODE: ResourceMode;

	/** The Neutralinojs framework version. **/
	static final NL_VERSION: String;
}

/** TODO **/
enum abstract ResourceMode(String) to String {
	var Bundle = "bundle";
	var Directory = "directory";
}