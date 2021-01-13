<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buttons.aspx.cs" Inherits="SoundPlayer.Buttons"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        let interval;
        function Play() {
            interval = setInterval(() => {
                let audio = new Audio("CarHornAlarm.mp3");
                audio.loop = true;
                audio.fastSeek(0);
                audio.play();
            }, 10 * 1000);
        }
        function Stop() {
            if (interval !== undefined)
                clearInterval(interval);
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
