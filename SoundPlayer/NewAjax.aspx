<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewAjax.aspx.cs" Inherits="SoundPlayer.NewAjax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>

    <script>
        let audio = new Audio("CarHornAlarm.mp3");
        setInterval(() => {
            fetch('ServiceOne.asmx/ShouldPlay', {
                method: 'POST'
            })
                .then(data => {
                    data.text()
                        .then(t => {
                            let text = new DOMParser()
                                .parseFromString(t, "text/xml")
                                .childNodes[0]
                                .textContent;

                            console.info(text)


                            if (text.toLocaleLowerCase() === 'true' && !audio.ended) {
                                audio.fastSeek(0);
                                audio.play();
                            }
                        })
                })
                .catch(error => console.error(error));
        }, 5 * 1000)
    </script>
</body>
</html>
