<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="$safeprojectname$.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }
        .auto-style3
        {
            width: 80px;
        }
        .auto-style4
        {
            height: 23px;
        }
        .auto-style5
        {
            width: 80px;
            height: 23px;
        }
        .auto-style6
        {
            width: 279px;
        }
        .auto-style7
        {
            height: 23px;
            width: 279px;
        }
        .auto-style8
        {
        }
        .auto-style9
        {
            width: 139px;
        }
        .auto-style10
        {
            height: 23px;
            width: 139px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style8">
                   <h1 style="background-color: #C0C0C0">Müşteri İlişkileri Yönetimine Hoşgeldiniz..</h1></td>
            </tr>
            </table>
    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="6">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="6">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="6">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="3"></td>
                <td class="auto-style10">
                    <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Kullancı Adı:" Theme="PlasticBlue">
                    </dx:ASPxLabel>
                </td>
                <td class="auto-style4">
                    <dx:ASPxTextBox ID="adi" runat="server" Width="170px" Theme="PlasticBlue">
                    </dx:ASPxTextBox>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
                <td class="auto-style9">
                    <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="Şifre" Theme="PlasticBlue">
                        <DisabledStyle BackColor="Red">
                        </DisabledStyle>
                    </dx:ASPxLabel>
                </td>
                <td>
                    <dx:ASPxTextBox ID="sifre" runat="server" Password="True" Width="170px" Theme="PlasticBlue">
                    </dx:ASPxTextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
                <td class="auto-style9">
                    <dx:ASPxButton ID="ASPxButton1" runat="server" OnClick="ASPxButton1_Click" Text="Giriş" Theme="SoftOrange">
                        <Image IconID="actions_apply_16x16">
                        </Image>
                    </dx:ASPxButton>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="6">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
