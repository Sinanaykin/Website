<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay2.aspx.cs" Inherits="SporveBeslenme.KategoriDetay2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style14 {
        width: 126%;
    }
    .auto-style15 {
        text-align: center;
    }
    .auto-style16 {
        text-align: center;
        margin-left: 80px;
    }
    .auto-style17 {
        text-align: center;
        height: 32px;
        margin-left: 80px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:DataList ID="DataList3" runat="server">
    <ItemTemplate>
        <table class="auto-style14">
            <tr>
                <td class="auto-style15"><strong>
                    <asp:Label ID="Label5" runat="server" CssClass="auto-style9" Text='<%# Eval("BesinAd") %>'></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <br />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;<asp:Image ID="Image1" runat="server" Height="154px" ImageUrl='<%# Eval("BesinResim") %>' Width="462px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style17" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000;"></td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
