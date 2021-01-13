<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PureJavascript.aspx.cs" Inherits="SoundPlayer.PureJavascript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <%--<input type="button" id="btnPlay" onclick="Play()" value="Start" />
        <input type="button" id="btnStop" onclick="Stop()" value="Stop" />--%>
    </form>
    <script>
        let interval;
        //function Play() {
        interval = setInterval(() => {
            let audio = new Audio("CarHornAlarm.mp3");
            audio.fastSeek(0);
            audio.play();
        }, 10 * 1000);
        //}
        //function Stop() {
        //    if (interval !== undefined)
        //        clearInterval(interval);
        //}
    </script>
</body>
</html>
