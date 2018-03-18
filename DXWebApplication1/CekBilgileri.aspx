<%@ Page Title="" Language="C#" MasterPageFile="~/Light.master" AutoEventWireup="true" CodeBehind="CekBilgileri.aspx.cs" Inherits="$safeprojectname$.CekBilgileri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="dxeBinImgCPnlSys">
    <tr>
        <td>
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="CEKID" Theme="Aqua">
                <SettingsBehavior AllowSelectByRowClick="True" />
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="CEKID" ReadOnly="True" VisibleIndex="0">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="FIRMA" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="VERTAR" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="VADETAR" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="BANKA" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CEKNO" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="TUTAR" VisibleIndex="6">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ACIK" VisibleIndex="7">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="DURUMU" VisibleIndex="8">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CEKTUR" VisibleIndex="9">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CARINO" VisibleIndex="10">
                    </dx:GridViewDataTextColumn>
                </Columns>
<Styles AdaptiveDetailButtonWidth="22"></Styles>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" SelectCommand="SELECT &quot;CEKID&quot;, &quot;FIRMA&quot;, &quot;VERTAR&quot;, &quot;VADETAR&quot;, &quot;BANKA&quot;, &quot;CEKNO&quot;, &quot;TUTAR&quot;, &quot;ACIK&quot;, &quot;DURUMU&quot;, &quot;CEKTUR&quot;, &quot;CARINO&quot; FROM &quot;CK&quot;" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            <table style="width: 100%">
                <tr>
                    <td colspan="6" style="height: 22px">Çek Bilgiler</td>
                </tr>
                <tr>
                    <td style="height: 22px; width: 96px">
                        <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="Firma">
                        </dx:ASPxLabel>
                    </td>
                    <td colspan="2" style="height: 22px">
                        <dx:ASPxTextBox ID="firma" runat="server" Width="170px">
                        </dx:ASPxTextBox>
                    </td>
                    <td style="height: 22px; width: 218px;">Tutar</td>
                    <td style="height: 22px">
                        <dx:ASPxTextBox ID="tutar" runat="server" Width="170px">
                        </dx:ASPxTextBox>
                    </td>
                    <td style="height: 22px"></td>
                </tr>
                <tr>
                    <td style="height: 22px; width: 96px">
                        <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="Çek Veriliş Tarihi">
                        </dx:ASPxLabel>
                    </td>
                    <td colspan="2" style="height: 22px">
                        <dx:ASPxDateEdit ID="cekvertar" runat="server" Date="12/11/2016 15:03:38">
                        </dx:ASPxDateEdit>
                    </td>
                    <td style="height: 22px; width: 218px;">Açıklama</td>
                    <td style="height: 22px">
                        <dx:ASPxTextBox ID="aciklama" runat="server" Width="170px">
                        </dx:ASPxTextBox>
                    </td>
                    <td style="height: 22px"></td>
                </tr>
                <tr>
                    <td style="width: 96px">
                        <dx:ASPxLabel ID="ASPxLabel5" runat="server" Text="Vade Tarihi">
                        </dx:ASPxLabel>
                    </td>
                    <td colspan="2">
                        <dx:ASPxDateEdit ID="vadetar" runat="server" Date="12/11/2016 15:03:46">
                        </dx:ASPxDateEdit>
                    </td>
                    <td style="width: 218px">Cari No</td>
                    <td>
                        <dx:ASPxTextBox ID="carino" runat="server" Width="170px">
                        </dx:ASPxTextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 96px">Banka</td>
                    <td colspan="2">
                        <dx:ASPxTextBox ID="banka" runat="server" Width="170px">
                        </dx:ASPxTextBox>
                    </td>
                    <td style="width: 218px">Çek Türü</td>
                    <td>
                        <dx:ASPxTextBox ID="cekturu" runat="server" Width="170px">
                        </dx:ASPxTextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 96px; height: 40px">Çek Numarası</td>
                    <td style="height: 40px; width: 186px;">
                        <dx:ASPxTextBox ID="cekno" runat="server" Width="170px" >
                        </dx:ASPxTextBox>
                    </td>
                    <td colspan="2" style="height: 40px">Durum</td>
                    <td style="height: 40px">
                        <dx:ASPxTextBox ID="durum" runat="server" Width="170px">
                        </dx:ASPxTextBox>
                    </td>
                    <td style="height: 40px"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <dx:ASPxButton ID="cekkaydet" runat="server" Text="Çek Bilgilerini Kaydet" OnClick="ASPxButton1_Click">
                            <Image IconID="actions_add_16x16">
                            </Image>
                        </dx:ASPxButton>
                    </td>
                    <td colspan="2">
                        <dx:ASPxButton ID="ceksil" runat="server" Text="Çek Bilgilerini Sil" OnClick="ASPxButton3_Click">
                            <Image IconID="edit_delete_16x16">
                            </Image>
                        </dx:ASPxButton>
                    </td>
                    <td>
                        <dx:ASPxButton ID="cekguncelle" runat="server" Text="Çek Bilgilerini Güncelle" OnClick="cekguncelle_Click">
                            <Image IconID="actions_refresh_16x16">
                            </Image>
                        </dx:ASPxButton>
                    </td>
                    <td>
                        <dx:ASPxButton ID="cekbilgicek" runat="server" OnClick="cekbilgicek_Click" Text="Çek Bilgilerini Çek">
                            <Image IconID="actions_selectall2_16x16">
                            </Image>
                        </dx:ASPxButton>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
