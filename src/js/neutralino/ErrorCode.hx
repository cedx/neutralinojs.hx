package js.neutralino;

/** The error codes. **/
enum abstract ErrorCode(String) to String {
	// NE_FS_NOPATHE	No file or directory.	filesystem.getStats, filesystem.readDirectory
	// NE_FS_NOWATID	Unable to find watcher.	filesystem.removeWatcher
	// NE_FS_UNLCWAT	Unable to create watcher.	filesystem.createWatcher
	// NE_FS_UNLTFOP	Unable to find opened file id.	filesystem.getOpenedFileInfo
	// NE_FS_UNLTOUP	Unable to update opened file id.	filesystem.updateOpenedFile
	// NE_OS_INVKNPT	Invalid platform path name.	os.getPath
	// NE_OS_INVMSGA	Invalid message box arguments.	os.showMessageBox
	// NE_OS_TRAYIER	Unable to initialize the tray menu. This error is typically thrown when GNU/Linux systems don"t contain an app indicator library.	os.setTray
	// NE_OS_UNLTOUP	Unable to update the spawned process due to an invalid process identifier or action.	os.updateSpawnedProcess
	// NE_RT_APIPRME	No permission to use the native API.	all
	// NE_RT_INVTOKN	Invalid access token.	all
	// NE_RT_NATNTIM	Native method is not implemented.	internal
	// NE_RT_NATPRME	No permission to execute the provided native method.	all,
	// NE_RT_NATRTER	Native method runtime error. Mostly occured due to missing parameters.	all
	// NE_ST_INVSTKY	Invalid storage key.	storage.getData, storage.setData
	// NE_ST_STKEYWE	Storage write error.	storage.setData
	// NE_UP_CUPDERR	Unable to fetch update manifest	updater.checkForUpdates
	// NE_UP_CUPDMER	Invalid update manifest or mismatching applicationId	updater.checkForUpdates
	// NE_UP_UPDINER	Update installation error	updater.install
	// NE_UP_UPDNOUF	No update manifest loaded	updater.install

	/** The Neutralinojs server is not reachable. **/
	var ClNeutralinoServerOff = "NE_CL_NSEROFF";

	/** The extension is not connected yet. **/
	var ExExtensionNotConnected = "NE_EX_EXTNOTC";

	/** Unable to copy the file. **/
	var FsCopyFileError = "NE_FS_COPYFER";

	/** Unable to create the directory. **/
	var FsCreateDirectoryError = "NE_FS_DIRCRER";

	/** Unable to find an opened file. **/
	var FsFindOpenedFileError = "NE_FS_UNLTFOP";

	/** Unable to move the file. **/
	var FsMoveFileError = "NE_FS_MOVEFER";

	/** TODO **/
	var FsNoPathError = "NE_FS_NOPATHE";

	/** Unable to open the file. **/
	var FsOpenFileError = "NE_FS_FILOPER";

	/** Unable to read the file. **/
	var FsReadFileError = "NE_FS_FILRDER";

	/** Unable to remove the directory. **/
	var FsRemoveDirectoryError = "NE_FS_RMDIRER";

	/** Unable to remove the file. **/
	var FsRemoveFileError = "NE_FS_FILRMER";

	/** Unable to update an opened file. **/
	var FsUpdateOpenedFileError = "NE_FS_UNLTOUP";

	/** Unable to write the file. **/
	var FsWriteFileError = "NE_FS_FILWRER";

	var OsTrayInitError = "NE_OS_TRAYIER";
	var OsUnableToUpdate = "NE_OS_UNLTOUP";
	var OsINVKNPT = "NE_OS_INVKNPT";
	var OsInvalidMessageBoxArguments = "NE_OS_INVMSGA";

	var RT_APIPRME = "NE_RT_APIPRME";
	var RT_INVTOKN = "NE_RT_INVTOKN";
	var RT_NATNTIM = "NE_RT_NATNTIM";
	var RT_NATPRME = "NE_RT_NATPRME";
	var RT_NATRTER = "NE_RT_NATRTER";

	var ST_INVSTKY = "NE_ST_INVSTKY";
	var ST_STKEYWE = "NE_ST_STKEYWE";

	var UP_CUPDERR = "NE_UP_CUPDERR";
	var UP_CUPDMER = "NE_UP_CUPDMER";
	var UP_UPDINER = "NE_UP_UPDINER";
	var UP_UPDNOUF = "NE_UP_UPDNOUF";
}
