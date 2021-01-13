<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AJAX.aspx.cs" Inherits="SoundPlayer.AJAX"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        let audio = new Audio("CarHornAlarm.mp3");
        function Play() {
            audio.fastSeek(0);
            audio.play();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server"/>
        <asp:Timer ID="soundTimer" runat="server" Interval="10000" OnTick="soundTimer_Tick" />
    </form>
</body>
</html>
