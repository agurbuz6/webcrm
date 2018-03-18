<%@ Page Title="" Language="C#" MasterPageFile="~/Light.master" AutoEventWireup="true" CodeBehind="MusteriArama.aspx.cs" Inherits="$safeprojectname$.MusteriArama" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <table class="auto-style1">
            <tr>
                <td colspan="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Arama&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Paneli &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td colspan="2">&nbsp;</td>
                <td style="width: 268435680px">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9" colspan="2">
                    &nbsp;</td>
                <td class="auto-style11" colspan="2">
                    <dx:ASPxRadioButtonList ID="ASPxRadioButtonList1" runat="server" Theme="Youthful" >
                        <Items>
                            <dx:ListEditItem Text="Tc" Value="Tc" />
                            <dx:ListEditItem Text="Ad" Value="Ad" />
                            <dx:ListEditItem Text="Soyad" Value="Soyad" />
                        </Items>
                    </dx:ASPxRadioButtonList>
                </td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style5" rowspan="4">
                    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" Theme="Youthful" DataSourceID="SqlDataSource2" KeyFieldName="MD">
                        <SettingsBehavior AllowSelectByRowClick="True" />
                        <Columns>
                            <dx:GridViewDataTextColumn FieldName="MD" ReadOnly="True" VisibleIndex="0">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="MTCNO" VisibleIndex="1">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="MAD" VisibleIndex="2">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="MSOYAD" VisibleIndex="3">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="MTELNO" VisibleIndex="4">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="MADRES" VisibleIndex="5">
                            </dx:GridViewDataTextColumn>
                        </Columns>
<Styles AdaptiveDetailButtonWidth="22"></Styles>
                    </dx:ASPxGridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT &quot;MD&quot;, &quot;MTCNO&quot;, &quot;MAD&quot;, &quot;MSOYAD&quot;, &quot;MTELNO&quot;, &quot;MADRES&quot; FROM &quot;TABLEMS&quot;"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" SelectCommand="SELECT &quot;MD&quot;, &quot;MTCNO&quot;, &quot;MAD&quot;, &quot;MSOYAD&quot;, &quot;MTELNO&quot;, &quot;MADRES&quot; FROM &quot;TABLEMS&quot;" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" SelectCommand="SELECT &quot;MD&quot;, &quot;MTCNO&quot;, &quot;MAD&quot;, &quot;MSOYAD&quot;, &quot;MTELNO&quot;, &quot;MADRES&quot; FROM &quot;TABLEMS&quot;" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>"></asp:SqlDataSource>
                </td>
                <td class="auto-style15">&nbsp;</td>
                <td style="width: 268435680px">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style13">
                    <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" Width="170px">
                    </dx:ASPxTextBox>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td style="width: 268435680px">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9" colspan="2">&nbsp;</td>
                <td class="auto-style11" colspan="2">
                    <dx:ASPxButton ID="ara" runat="server" Text="Ara" OnClick="ASPxButton1_Click">
                        <Image IconID="functionlibrary_lookupreference_16x16">
                        </Image>
                    </dx:ASPxButton>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td style="width: 268435680px">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10" colspan="2"></td>
                <td class="auto-style12" colspan="2"></td>
                <td class="auto-style8"></td>
                <td class="auto-style16"></td>
                <td class="auto-style2" style="width: 268435680px"></td>
            </tr>
        </table>
    </div>
</asp:Content>
