<%@ Page Title="" Language="C#" MasterPageFile="~/Light.master" AutoEventWireup="true" CodeBehind="PersonelBilgiGirisi.aspx.cs" Inherits="$safeprojectname$.PersonelBilgiGirisi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <table class="auto-style1">
            <tr>
                <td colspan="5">Personel Bilgi Girişi<br />
                </td>
                <td class="auto-style3" rowspan="8" style="width: 330px">
                    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="SID" Theme="PlasticBlue">
                        <SettingsBehavior AllowSelectByRowClick="True" />
                        <Columns>
                            <dx:GridViewDataTextColumn FieldName="SID" ReadOnly="True" VisibleIndex="0">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="SSOYADI" VisibleIndex="1">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="SADI" VisibleIndex="2">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="STC" VisibleIndex="3">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="SGOREVI" VisibleIndex="4">
                            </dx:GridViewDataTextColumn>
                        </Columns>
<Styles AdaptiveDetailButtonWidth="22"></Styles>
                    </dx:ASPxGridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" SelectCommand="SELECT &quot;SID&quot;, &quot;SSOYADI&quot;, &quot;SADI&quot;, &quot;STC&quot;, &quot;SGOREVI&quot; FROM &quot;STAFF&quot;" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Adı</td>
                <td class="auto-style6">
                    <dx:ASPxTextBox ID="adi" runat="server" Width="170px">
                    </dx:ASPxTextBox>
                </td>
                <td class="auto-style7" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Soyadı</td>
                <td class="auto-style6">
                    <dx:ASPxTextBox ID="soyadi" runat="server" Width="170px">
                    </dx:ASPxTextBox>
                </td>
                <td class="auto-style7" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" style="height: 31px">Tc</td>
                <td class="auto-style6" style="height: 31px">
                    <dx:ASPxTextBox ID="tc" runat="server" Width="170px">
                    </dx:ASPxTextBox>
                </td>
                <td class="auto-style7" colspan="2" style="height: 31px"></td>
                <td style="height: 31px"></td>
            </tr>
            <tr>
                <td class="auto-style4">Görevi</td>
                <td class="auto-style6">
                    <dx:ASPxTextBox ID="görevi" runat="server" Width="170px">
                    </dx:ASPxTextBox>
                </td>
                <td class="auto-style7" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <dx:ASPxButton ID="Bilgilericek" runat="server" Text="Personel Bilgilerini Çek" OnClick="Bilgilericek_Click">
                        <Image IconID="actions_selectall2_16x16">
                        </Image>
                    </dx:ASPxButton>
                </td>
                <td class="auto-style6">
                    <dx:ASPxButton ID="personelkaydet" runat="server" Text="Personel Kaydet" OnClick="ASPxButton3_Click" style="height: 21px">
                        <Image IconID="actions_add_16x16">
                        </Image>
                    </dx:ASPxButton>
                </td>
                <td class="auto-style8">
                    <dx:ASPxButton ID="personelguncelle" runat="server" Text="Personel Güncelle" OnClick="personelguncelle_Click">
                        <Image IconID="actions_refresh_16x16">
                        </Image>
                    </dx:ASPxButton>
                </td>
                <td class="auto-style7">
                    <dx:ASPxButton ID="personelsil" runat="server" Text="Personel Sil" OnClick="ASPxButton5_Click" style="height: 21px">
                        <Image IconID="edit_delete_16x16">
                        </Image>
                    </dx:ASPxButton>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
