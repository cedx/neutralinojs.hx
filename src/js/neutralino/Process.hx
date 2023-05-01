package js.neutralino;

/** Represents a process. **/
typedef Process = {

	/** The exit code of the process. **/
	final exitCode: Int;

	/** The process identifier. **/
	final pid: Int;

	/** The standard error. **/
	final stdErr: String;

	/** The standard output. **/
	final stdOut: String;
}
