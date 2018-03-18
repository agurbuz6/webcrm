<%@ Page Title="" Language="C#" MasterPageFile="~/Light.master" AutoEventWireup="true" CodeBehind="CariKartlar.aspx.cs" Inherits="$safeprojectname$.CariKartlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="dxeBinImgCPnlSys">
    <tr>
        <td>
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="CID" Theme="Aqua">
                <SettingsBehavior AllowSelectByRowClick="True" />
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="CID" ReadOnly="True" VisibleIndex="0">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CTAR" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CSTAFF" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CISLEM" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CAL" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CVER" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CACIK" VisibleIndex="6">
                    </dx:GridViewDataTextColumn>
                </Columns>
<Styles AdaptiveDetailButtonWidth="22"></Styles>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" SelectCommand="SELECT &quot;CID&quot;, &quot;CTAR&quot;, &quot;CSTAFF&quot;, &quot;CISLEM&quot;, &quot;CAL&quot;, &quot;CVER&quot;, &quot;CACIK&quot; FROM &quot;CURRENTS&quot;" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            <table style="width: 100%">
                <tr>
                    <td colspan="5">Cari Kart Bilgileri</td>
                </tr>
                <tr>
                    <td style="width: 152px">Tarih</td>
                    <td style="width: 214px">
                        <dx:ASPxDateEdit ID="tarih" runat="server" Date="2016-12-11">
                        </dx:ASPxDateEdit>
                    </td>
                    <td>Alınan</td>
                    <td>
                        <dx:ASPxTextBox ID="alinan" runat="server" Width="170px">
                        </dx:ASPxTextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 152px">Firma</td>
                    <td style="width: 214px">
                        <dx:ASPxTextBox ID="firma" runat="server" Width="170px">
                        </dx:ASPxTextBox>
                    </td>
                    <td>Verilen</td>
                    <td>
                        <dx:ASPxTextBox ID="verilen" runat="server" Width="170px">
                        </dx:ASPxTextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 28px; width: 152px">İşlem</td>
                    <td style="height: 28px; width: 214px;">
                        <dx:ASPxTextBox ID="islem" runat="server" Width="170px">
                        </dx:ASPxTextBox>
                    </td>
                    <td style="height: 28px">Açıklama</td>
                    <td style="height: 28px">
                        <dx:ASPxTextBox ID="aciklama" runat="server" Width="170px">
                        </dx:ASPxTextBox>
                    </td>
                    <td style="height: 28px"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <dx:ASPxButton ID="carikaydet" runat="server" Text="Cari Kaydet" OnClick="ASPxButton1_Click">
                            <Image IconID="actions_add_16x16">
                            </Image>
                        </dx:ASPxButton>
                    </td>
                    <td>
                        <dx:ASPxButton ID="carisil" runat="server" Text="Cari Sil" OnClick="ASPxButton2_Click">
                            <Image IconID="edit_delete_16x16">
                            </Image>
                        </dx:ASPxButton>
                    </td>
                    <td>
                        <dx:ASPxButton ID="caricek" runat="server" OnClick="caricek_Click" Text="Cari Bilgi Çek">
                            <Image IconID="actions_selectall2_16x16">
                            </Image>
                        </dx:ASPxButton>
                    </td>
                    <td>
                        <dx:ASPxButton ID="cariguncelle" runat="server" Text="Cari Güncelle" OnClick="cariguncelle_Click">
                            <Image IconID="actions_refresh_16x16">
                            </Image>
                        </dx:ASPxButton>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
