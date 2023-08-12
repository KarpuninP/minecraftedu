Set oWS = WScript.CreateObject("WScript.Shell")
Set Arg = WScript.Arguments

' Paths
	installPath = ""
	if Arg.Count = 0 Then
		installPath = oWS.ExpandEnvironmentStrings("%APPDATA%")
	Else
		installPath = Arg(0)
	End If
	launcherPath = installPath + "/startlauncher.jar"
	iconPath = installPath + "/launcher_res/lib/icon.ico"

' Create the shortcut
	Set oLink = oWS.CreateShortcut(oWS.SpecialFolders("Desktop") + "/MinecraftEdu Launcher.lnk")
	oLink.WorkingDirectory = installPath
	oLink.TargetPath = launcherPath
	oLink.Description = "MinecraftEdu"
	oLink.IconLocation = iconPath
	' oLink.Arguments = ""
	' oLink.HotKey = "ALT+CTRL+F"
	'oLink.IconLocation = "C:\Program Files\MyApp\MyProgram.EXE, 2"
	'oLink.WindowStyle = "1"
	oLink.Save