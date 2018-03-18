<%@ Page Title="" Language="C#" MasterPageFile="~/Light.master" AutoEventWireup="true" CodeBehind="MusteriKayit.aspx.cs" Inherits="$safeprojectname$.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%">
    <tr>
        <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Müşteri Kayit &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 123px">id</td>
        <td style="width: 195px" colspan="2">
            <dx:ASPxTextBox ID="id" runat="server" Width="170px">
            </dx:ASPxTextBox>
        </td>
        <td style="width: 178px">&nbsp;</td>
        <td rowspan="6">
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" ClientInstanceName="grid" DataSourceID="oracle" Theme="Youthful" KeyFieldName="MD">
                <SettingsBehavior AllowSelectByRowClick="True" AllowSelectSingleRowOnly="True" />
                <Columns>
                    <dx:GridViewCommandColumn VisibleIndex="0">
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="MD" ReadOnly="True" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="MTCNO" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="MAD" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="MSOYAD" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="MTELNO" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="MADRES" VisibleIndex="6">
                    </dx:GridViewDataTextColumn>
                </Columns>
                <Styles AdaptiveDetailButtonWidth="22">
                </Styles>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="oracle" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT &quot;MD&quot;, &quot;MTCNO&quot;, &quot;MAD&quot;, &quot;MSOYAD&quot;, &quot;MTELNO&quot;, &quot;MADRES&quot; FROM &quot;TABLEMS&quot;"></asp:SqlDataSource>
            <asp:SqlDataSource ID="oracledatasource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT &quot;MD&quot;, &quot;MTCNO&quot;, &quot;MAD&quot;, &quot;MSOYAD&quot;, &quot;MTELNO&quot;, &quot;MADRES&quot; FROM &quot;TABLEMS&quot;"></asp:SqlDataSource>
           
        </td>
    </tr>
    <tr>
        <td style="width: 123px">tc</td>
        <td style="width: 195px" colspan="2">
            <dx:ASPxTextBox ID="tc" runat="server" Width="170px">
            </dx:ASPxTextBox>
        </td>
        <td style="width: 178px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 123px">adi</td>
        <td style="width: 195px" colspan="2">
            <dx:ASPxTextBox ID="adi" runat="server" Width="170px" OnTextChanged="adi_TextChanged">
            </dx:ASPxTextBox>
        </td>
        <td style="width: 178px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 123px">soyadi</td>
        <td style="width: 195px" colspan="2">
            <dx:ASPxTextBox ID="soyadi" runat="server" Width="170px">
            </dx:ASPxTextBox>
        </td>
        <td style="width: 178px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 123px">telno</td>
        <td style="width: 195px" colspan="2">
            <dx:ASPxTextBox ID="tel" runat="server" Width="170px">
            </dx:ASPxTextBox>
        </td>
        <td style="width: 178px">&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 123px">
            adres</td>
        <td style="width: 195px">
            <dx:ASPxTextBox ID="adres" runat="server" Width="170px">
            </dx:ASPxTextBox>
        </td>
        <td style="width: 195px">
            &nbsp;</td>
        <td style="width: 178px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 123px">
            <dx:ASPxButton ID="kaydet" runat="server" OnClick="ASPxButton1_Click" Text="Kaydet">
                <Image IconID="actions_add_16x16">
                </Image>
            </dx:ASPxButton>
        </td>
        <td style="width: 195px">
            <dx:ASPxButton ID="sil" runat="server" OnClick="sil_Click" Text="Sil">
                <ClientSideEvents Click="function(s, e) {


	
}" />
                <Image IconID="edit_delete_16x16">
                </Image>
            </dx:ASPxButton>
        </td>
        <td style="width: 195px">
            <dx:ASPxButton ID="cek" runat="server" OnClick="cek_Click" Text="Bilgi Çek">
                <Image IconID="actions_selectall2_16x16">
                </Image>
            </dx:ASPxButton>
        </td>
        <td style="width: 178px">
            <dx:ASPxButton ID="güncelle" runat="server" Text="Güncelle" OnClick="güncelle_Click">
                <Image IconID="actions_refresh_16x16">
                </Image>
            </dx:ASPxButton>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 123px">&nbsp;</td>
        <td style="width: 195px" colspan="2">&nbsp;</td>
        <td style="width: 178px">&nbsp;</td>
        <td>
            <br />
        </td>
    </tr>
</table>
</asp:Content>
