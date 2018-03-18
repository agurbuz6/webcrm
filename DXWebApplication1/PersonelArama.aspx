<%@ Page Title="" Language="C#" MasterPageFile="~/Light.master" AutoEventWireup="true" CodeBehind="PersonelArama.aspx.cs" Inherits="$safeprojectname$.PersonelArama" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style4">
            <dx:ASPxRadioButtonList ID="ASPxRadioButtonList1" runat="server" Theme="PlasticBlue">
                <Items>
                    <dx:ListEditItem Text="Tc No" Value="Tc No" />
                    <dx:ListEditItem Text="Ad" Value="Ad" />
                    <dx:ListEditItem Text="Soyad" Value="Soyad" />
                    <dx:ListEditItem Text="Görev" Value="Gorev" />
                </Items>
            </dx:ASPxRadioButtonList>
        </td>
        <td class="auto-style5" colspan="2">
            &nbsp;</td>
        <td class="auto-style9" colspan="2">
            &nbsp;</td>
        <td class="auto-style6" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8" colspan="2" style="width: 75px">
            <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" Width="156px">
            </dx:ASPxTextBox>
            <dx:ASPxButton ID="ara" runat="server" Text="Ara" Width="153px" OnClick="ara_Click">
                <Image IconID="functionlibrary_lookupreference_16x16">
                </Image>
            </dx:ASPxButton>
            &nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style2" colspan="2">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style2" style="width: 268435456px">&nbsp;</td>
        <td class="auto-style2" style="width: 268435616px">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7" colspan="7">
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" Theme="PlasticBlue" DataSourceID="SqlDataSource1" KeyFieldName="SID">
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="SID" ReadOnly="True" VisibleIndex="0">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SADI" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SSOYADI" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="STC" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SGOREVI" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                </Columns>
<Styles AdaptiveDetailButtonWidth="22"></Styles>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" SelectCommand="SELECT &quot;SID&quot;, &quot;SADI&quot;, &quot;SSOYADI&quot;, &quot;STC&quot;, &quot;SGOREVI&quot; FROM &quot;STAFF&quot;" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>"></asp:SqlDataSource>
        </td>
    </tr>
</table>
<div>
</div>
<div>
</div>
</asp:Content>
