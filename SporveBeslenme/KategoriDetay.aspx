<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="SporveBeslenme.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style6 {
        width: 101%;
        margin-bottom: 0px;
            height: 230px;
        }
    .auto-style9 {
        text-align: center;
    }
    .auto-style10 {
        height: 27px;
        text-align: center;
    }
    .auto-style11 {
        color: #000000;
        font-size: medium;
    }
        
h1{
margin-top:17,0000pt;
margin-bottom:16,5000pt;
page-break-after:avoid;
line-height:240%;
font-family:Calibri;
font-weight:bold;
font-size:22,0000pt;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:DataList ID="DataList3" runat="server">
    <ItemTemplate>
        <table class="auto-style6">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Label ID="Label5" runat="server" CssClass="auto-style7" Text='<%# Eval("EgzersizAd") %>'></asp:Label>
                    <br />
                    <br />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>
                    <asp:Label ID="Label7" runat="server" CssClass="auto-style11" Text='<%# Eval("EgzersizTarif") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("EgzersizResim") %>' Height="266px" Width="570px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
