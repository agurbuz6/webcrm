<%@ Page Title="" Language="C#" MasterPageFile="~/Light.master" AutoEventWireup="true" CodeBehind="UrunSatisi.aspx.cs" Inherits="$safeprojectname$.UrunSatisi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style6" colspan="3" rowspan="5">
            <br />
            <br />
            <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" KeyFieldName="ID" Theme="BlackGlass">
                <SettingsBehavior AllowSelectByRowClick="True" />
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="ID" VisibleIndex="0" ReadOnly="True">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="UADI" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="MARKA" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="MODEL" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SATFIY" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ALFIY" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="MIKTAR" VisibleIndex="6">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SATMIKTAR" VisibleIndex="7">
                    </dx:GridViewDataTextColumn>
                </Columns>
<Styles AdaptiveDetailButtonWidth="22"></Styles>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" SelectCommand="SELECT &quot;ID&quot;, &quot;UADI&quot;, &quot;MARKA&quot;, &quot;MODEL&quot;, &quot;SATFIY&quot;, &quot;ALFIY&quot;, &quot;MIKTAR&quot;, &quot;SATMIKTAR&quot; FROM &quot;URUNSATISI&quot;" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" SelectCommand="SELECT &quot;ID&quot;, &quot;UADI&quot;, &quot;MARKA&quot;, &quot;MODEL&quot;, &quot;SATFIY&quot;, &quot;ALFIY&quot;, &quot;MIKTAR&quot;, &quot;SATMIKTAR&quot; FROM &quot;URUNSATISI&quot;" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT &quot;ID&quot;, &quot;UADI&quot;, &quot;MARKA&quot;, &quot;MODEL&quot;, &quot;SATFIY&quot;, &quot;ALFIY&quot;, &quot;MIKTAR&quot;, &quot;SATMIKTAR&quot; FROM &quot;URUNSATISI&quot;"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" SelectCommand="SELECT &quot;ID&quot;, &quot;UADI&quot;, &quot;MARKA&quot;, &quot;MODEL&quot;, &quot;SATFIY&quot;, &quot;ALFIY&quot;, &quot;MIKTAR&quot;, &quot;SATMIKTAR&quot; FROM &quot;URUNSATISI&quot;" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </td>
        <td class="auto-style2" colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td style="height: 28px; width: 128px">
            Ürün Genel Adı</td>
        <td style="height: 28px; width: 124px">
            <dx:ASPxTextBox ID="genelad" runat="server" Width="170px">
            </dx:ASPxTextBox>
        </td>
        <td class="auto-style3" style="height: 28px">
            Satış Fiyatı</td>
        <td class="auto-style3" style="height: 28px">
            <dx:ASPxTextBox ID="satisfiy" runat="server" Width="170px">
            </dx:ASPxTextBox>
        </td>
        <td class="auto-style3" style="height: 28px">Satış Miktarı</td>
        <td class="auto-style3" style="height: 28px">
            <dx:ASPxTextBox ID="satismikt" runat="server" Width="170px">
            </dx:ASPxTextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 128px">
            Marka Adı</td>
        <td style="width: 124px">
            <dx:ASPxTextBox ID="markaad" runat="server" Width="170px">
            </dx:ASPxTextBox>
        </td>
        <td>
            Alış Fiyatı</td>
        <td>
            <dx:ASPxTextBox ID="alisfiy" runat="server" Width="170px">
            </dx:ASPxTextBox>
        </td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 128px">
            Model Adı</td>
        <td style="width: 124px">
            <dx:ASPxTextBox ID="modelad" runat="server" Width="170px">
            </dx:ASPxTextBox>
        </td>
        <td>
            Miktar</td>
        <td>
            <dx:ASPxTextBox ID="miktar" runat="server" Width="170px">
            </dx:ASPxTextBox>
        </td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
</table>
<div>
    <table class="auto-style1">
        <tr>
            <td>
                <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Ürün Ekle" OnClick="ASPxButton1_Click">
                    <Image IconID="actions_add_16x16">
                    </Image>
                </dx:ASPxButton>
            </td>
            <td>
                <dx:ASPxButton ID="ASPxButton2" runat="server" Text="Ürün Sil" OnClick="ASPxButton2_Click">
                    <Image IconID="edit_delete_16x16">
                    </Image>
                </dx:ASPxButton>
            </td>
            <td>
                <dx:ASPxButton ID="guncelle" runat="server" Text="Ürün Güncelle" OnClick="guncelle_Click">
                    <Image IconID="scheduling_recurrence_16x16">
                    </Image>
                </dx:ASPxButton>
            </td>
            <td>
                <dx:ASPxButton ID="uruncek" runat="server" OnClick="uruncek_Click" Text="Ürün Bilgisi Çek">
                    <Image IconID="actions_selectall2_16x16">
                    </Image>
                </dx:ASPxButton>
            </td>
        </tr>
    </table>
</div>
<div>
</div>
</asp:Content>
