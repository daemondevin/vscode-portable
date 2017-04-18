${SegmentFile}
${Segment.OnInit}
	Push $0
	ReadRegDWORD $0 HKLM `SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full` `Release`
	IfErrors +2
	IntCmp $0 378389 +4 0 +4 ;= Check to see if user has dotNet 4.5 or greater installed.
	MessageBox MB_ICONSTOP|MB_TOPMOST `You must have v4.5 or greater of the .NET Framework installed. Launcher aborting!`
	Call Unload
	Quit
	Pop $0
!macroend
${SegmentInit}
	${If} ${IsNT}
		${IfNot} ${AtLeastWin7}
			MessageBox MB_ICONSTOP|MB_TOPMOST `You must have atleast Windows 7 or better. Launcher aborting!`
			Call Unload
			Quit
		${EndIf}
	${Else}
		MessageBox MB_ICONSTOP|MB_TOPMOST `You must have atleast Windows 7 or better. Launcher aborting!`
		Call Unload
		Quit
	${EndIf}
!macroend
