<%@ Page Title="" Language="C#" MasterPageFile="~/Light.master" AutoEventWireup="true" CodeBehind="FirmaBilgiGirisi.aspx.cs" Inherits="$safeprojectname$.FirmaBilgiGirisi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style1">
    <tr>
        <td colspan="6">
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="ID" Theme="RedWine">
                <SettingsBehavior AllowSelectByRowClick="True" ProcessFocusedRowChangedOnServer="True" />
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="0">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="FADI" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ADRESI" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="TELNO" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="YETKILI" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                </Columns>
<Styles AdaptiveDetailButtonWidth="22"></Styles>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" SelectCommand="SELECT &quot;ID&quot;, &quot;FADI&quot;, &quot;ADRESI&quot;, &quot;TELNO&quot;, &quot;YETKILI&quot; FROM &quot;FIRMA&quot;" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="width: 102px">
            <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="Firma Adı">
            </dx:ASPxLabel>
        </td>
        <td colspan="2">
            <dx:ASPxTextBox ID="firmaadi" runat="server" Width="170px">
            </dx:ASPxTextBox>
        </td>
        <td colspan="2">
            <dx:ASPxLabel ID="ASPxLabel7" runat="server" Text="Firma Ara">
            </dx:ASPxLabel>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="width: 102px">
            <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="Adresi">
            </dx:ASPxLabel>
        </td>
        <td colspan="2">
            <dx:ASPxTextBox ID="adres" runat="server" Width="170px">
            </dx:ASPxTextBox>
        </td>
        <td>
            <dx:ASPxRadioButtonList ID="ASPxRadioButtonList1" runat="server">
                <Items>
                    <dx:ListEditItem Text="Firma Adı" Value="Firma Adı" />
                    <dx:ListEditItem Text="Yetkili" Value="Yetkili" />
                </Items>
            </dx:ASPxRadioButtonList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" style="width: 102px">
            <dx:ASPxLabel ID="ASPxLabel5" runat="server" Text="Yetkili">
            </dx:ASPxLabel>
        </td>
        <td colspan="2">
            <dx:ASPxTextBox ID="yetkili" runat="server" Width="170px">
            </dx:ASPxTextBox>
        </td>
        <td colspan="2">
            <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" Width="170px">
            </dx:ASPxTextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="width: 102px">
            <dx:ASPxLabel ID="ASPxLabel6" runat="server" Text="Tel">
            </dx:ASPxLabel>
        </td>
        <td colspan="2">
            <dx:ASPxTextBox ID="tel" runat="server" Width="170px">
            </dx:ASPxTextBox>
        </td>
        <td colspan="2">
            <dx:ASPxButton ID="firmaara" runat="server" Text="Firma Ara" OnClick="firmaara_Click">
                <Image IconID="functionlibrary_lookupreference_16x16">
                </Image>
            </dx:ASPxButton>
        </td>
    </tr>
    <tr>
        <td>
            <dx:ASPxButton ID="firmakaydet" runat="server" Text="Firma Kayıt" OnClick="ASPxButton1_Click">
                <Image IconID="actions_add_16x16">
                </Image>
            </dx:ASPxButton>
        </td>
        <td colspan="2">
            <dx:ASPxButton ID="firmasil" runat="server" Text="Firma Sil" OnClick="ASPxButton2_Click">
                <Image IconID="edit_delete_16x16">
                </Image>
            </dx:ASPxButton>
        </td>
        <td class="auto-style2">
            <dx:ASPxButton ID="firmaguncelle" runat="server" Text="Firma Güncelle" OnClick="firmaguncelle_Click">
                <Image IconID="actions_refresh_16x16">
                </Image>
            </dx:ASPxButton>
        </td>
        <td colspan="2">
            <dx:ASPxButton ID="firmabilgicek" runat="server" OnClick="firmabilgicek_Click" Text="Firma Bilgisi Çek">
                <Image IconID="actions_selectall2_16x16">
                </Image>
            </dx:ASPxButton>
        </td>
    </tr>
</table>
<div>
</div>
</asp:Content>
