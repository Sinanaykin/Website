<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="SporveBeslenme.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        width: 562px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:DataList ID="DataList4" runat="server">
    <ItemTemplate>
        <table class="auto-style1" style="height: 409px">
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label9" runat="server" style="font-size: x-large; font-weight: 700; color: #FF0000;" Text='<%# Eval("GununYemegiAd2") %>'></asp:Label>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label10" runat="server" style="font-size: large" Text='<%# Eval("GununYemegiBesinDegerleri2") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image4" runat="server" Height="233px" ImageUrl='~/resimler/resim1.jpg' Width="564px" /> 
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
    <asp:DataList ID="DataList3" runat="server" style="margin-right: 5px">
    <ItemTemplate>
        <table class="auto-style1" style="height: 393px">
            <tr>
                <td class="auto-style4" style="text-align: center">
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label7" runat="server" style="font-size: x-large; font-weight: 700; color: #FF0000;" Text='<%# Eval("GununYemegiAd") %>'></asp:Label>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="text-align: center">
                    <asp:Label ID="Label8" runat="server" style="font-size: large" Text='<%# Eval("GununYemegiBesinDegerleri")%>'></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Image ID="Image3" runat="server" Height="242px" ImageUrl="~/resimler/tavuk_pilav.jpg" Width="569px" />
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
