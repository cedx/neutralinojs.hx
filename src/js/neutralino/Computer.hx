package js.neutralino;

import js.lib.Promise;

/** Provides methods related to the user's hardware. **/
extern class Computer {

	/** Returns the CPU architecture identifier. **/
	function getArch(): Promise<CpuArchitecture>;

	/** Returns the CPU information. **/
	function getCPUInfo(): Promise<CpuInfo>;

	/** Returns information about all connected displays. **/
	function getDisplays(): Promise<Array<Display>>;

	/** Returns operating system kernel information. **/
	function getKernelInfo(): Promise<KernelInfo>;

	/** Returns system memory statistics in bytes. **/
	function getMemoryInfo(): Promise<{physical: MemoryInfo, virtual: MemoryInfo}>;

	/** Returns the current mouse cursor position. **/
	function getMousePosition(): Promise<MousePosition>;

	/** Returns operating system information. **/
	function getOSInfo(): Promise<OsInfo>;
}

/** Defines the processor architecture. **/
enum abstract CpuArchitecture(String) to String {
	var Arm = "arm";
	var IA32 = "ia32";
	var Itanium = "itanium";
	var Unknown = "unknown";
	var X64 = "x64";
}

/** Provides the CPU information. **/
typedef CpuInfo = {

	/** The CPU architecture name. **/
	final architecture: CpuArchitecture;

	/** The current CPU frequency in hertz (Hz). **/
	final frequency: Float; // TODO: Int or Float

	/** The number of logical threads in the parallelism model. **/
	final logicalThreads: Int;

	/** The model name. **/
	final model: String;

	/** The number of physical cores in the CPU. **/
	final physicalCores: Int;

	/** The number of physical CPU hardware units in the motherboard. **/
	final physicalUnits: Int;

	/** The vendor name. **/
	final vendor: String;
}

/** Provides information about a connected display. **/
typedef Display = {

	/** The BPP (Bits Per Pixel) value. **/
	final bpp: Int;

	/** The DPI (Dots Per Inch) value. **/
	final dpi: Int;

	/** The virtual display identifier. **/
	final id: Int;

	/** The refresh rate in hertz (Hz). **/
	final refreshRate: Int; // TODO: Int or Float

	/** The display resolution information. **/
	final resolution: Resolution;
}

/** Provides operating system kernel information. **/
typedef KernelInfo = {
	final variant: KernelType;
	final version: String;
}

/** Defines the kernel type. **/
enum abstract KernelType(String) to String {
	var Darwin = "Darwin";
	var Linux = "Linux";
	var Unknown = "Unknown";
	var WindowsNT = "Windows NT";
}

/** Provides system memory statistics. **/
typedef MemoryInfo = {

	/** The available memory. **/
	final available: Int;

	/** The total memory. **/
	final total: Int;
}

/** Provides the coordinates of the mouse cursor. **/
typedef MousePosition = {

	/** The distance from the left edge of the screen in pixels. **/
	final x: Int;

	/** The distance from the top edge of the screen in pixels. **/
	final y: Int;
}

/** Provides operating system information. **/
typedef OsInfo = {

	/** The operating system description. **/
	final description: String;

	/** The operating system name. **/
	final name: String;

	/** The operating system version. **/
	final version: String;
}

/** Provides the display resolution. **/
typedef Resolution = {

	/** The display height. **/
	final height: Int;

	/** The display width. **/
	final width: Int;
}
