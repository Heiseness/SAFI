If Not IsObject(application) Then
   Set SapGuiAuto  = GetObject("SAPGUI")
   Set application = SapGuiAuto.GetScriptingEngine
End If
If Not IsObject(connection) Then
   Set connection = application.Children(0)
End If
If Not IsObject(session) Then
   Set session    = connection.Children(0)
End If
If IsObject(WScript) Then
   WScript.ConnectObject session,     "on"
   WScript.ConnectObject application, "on"
End If
session.findById("wnd[0]").maximize
session.findById("wnd[0]/tbar[0]/okcd").text = "mb51"
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/usr/ctxtMATNR-LOW").text = "XDDD"
session.findById("wnd[0]/usr/ctxtWERKS-LOW").text = "XD"
session.findById("wnd[0]/usr/ctxtLGORT-LOW").text = "XD"
session.findById("wnd[0]/usr/ctxtLGORT-LOW").setFocus
session.findById("wnd[0]/usr/ctxtLGORT-LOW").caretPosition = 2
