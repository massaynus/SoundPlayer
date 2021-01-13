<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SoundPlayer.aspx.cs" Inherits="SoundPlayer.SoundPlayer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        let audio = new Audio("CarHornAlarm.mp3");
        function Play() {
            audio.loop = true;
            audio.fastSeek(0);
            audio.play();
        }
        function Stop() {
            audio.pause();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button Text="Play" runat="server" ID="btnPlay" OnClick="btnPlay_Click" />
        <asp:Button Text="Stop" runat="server" ID="btnStop" OnClick="btnStop_Click" />
    </form>
</body>
</html>
