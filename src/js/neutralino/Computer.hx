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

/** The processor architecture. **/
enum abstract CpuArchitecture(String) to String {

	/** The processor architecture is ARM. **/
	var Arm = "arm";

	/** The processor architecture is IA-32 (32-bit x86). **/
	var Ia32 = "ia32";

	/** The processor architecture is IA-64 (Itanium). **/
	var Itanium = "itanium";

	/** The processor architecture is unknown. **/
	var Unknown = "unknown";

	/** The processor architecture is x64 (64-bit x86 or ARM64). **/
	var X64 = "x64";
}

/** The CPU information. **/
typedef CpuInfo = {

	/** The CPU architecture name. **/
	final architecture: CpuArchitecture;

	/** The current CPU frequency in hertz (Hz). **/
	final frequency: Int;

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

/** Information about a connected display. **/
typedef Display = {

	/** The BPP (Bits Per Pixel) value. **/
	final bpp: Int;

	/** The DPI (Dots Per Inch) value. **/
	final dpi: Int;

	/** The virtual display identifier. **/
	final id: Int;

	/** The refresh rate in hertz (Hz). **/
	final refreshRate: Int;

	/** The display resolution information. **/
	final resolution: Resolution;
}

/** Operating system kernel information. **/
typedef KernelInfo = {

	/** The kernel type. **/
	final variant: KernelType;

	/** The kernel version. **/
	final version: String;
}

/** The kernel type. **/
enum abstract KernelType(String) to String {

	/** The kernel is Darwin. **/
	var Darwin = "Darwin";

	/** The kernel is Linux. **/
	var Linux = "Linux";

	/** The kernel is unknown. **/
	var Unknown = "Unknown";

	/** The kernel is Windows NT. **/
	var WindowsNT = "Windows NT";
}

/** System memory statistics. **/
typedef MemoryInfo = {

	/** The available memory. **/
	final available: Int;

	/** The total memory. **/
	final total: Int;
}

/** The coordinates of the mouse cursor. **/
typedef MousePosition = {

	/** The distance from the left edge of the screen in pixels. **/
	final x: Int;

	/** The distance from the top edge of the screen in pixels. **/
	final y: Int;
}

/** Operating system information. **/
typedef OsInfo = {

	/** The operating system description. **/
	final description: String;

	/** The operating system name. **/
	final name: String;

	/** The operating system version. **/
	final version: String;
}

/** The display resolution. **/
typedef Resolution = {

	/** The display height. **/
	final height: Int;

	/** The display width. **/
	final width: Int;
}
