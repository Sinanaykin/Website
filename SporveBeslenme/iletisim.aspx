<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="SporveBeslenme.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        width: 100%;
        height: 365px;
    }
    .auto-style7 {
        margin-left: 40px;
    }
    .auto-style9 {
            text-align: right;
            width: 254px;
        }
    .auto-style10 {
        font-size: xx-large;
        text-align: center;
        color: #FF0000;
        background-color: #808080;
    }
    .auto-style11 {
        border: 2px solid #456879;
        border-radius: 10px;
    }
        .auto-style12 {
            width: 254px;
        }
        .auto-style13 {
            width: 491px;
        }
        .auto-style14 {
            height: 100px;
            width: 491px;
            margin-left: 40px;
        }
        .auto-style15 {
            width: 254px;
            height: 22px;
        }
        .auto-style16 {
            height: 22px;
            width: 491px;
            margin-left: 40px;
        }
        .auto-style17 {
            text-align: right;
            width: 254px;
            height: 17px;
        }
        .auto-style18 {
            height: 17px;
            width: 491px;
            margin-left: 40px;
        }
        .auto-style19 {
            text-align: right;
            width: 254px;
            height: 100px;
        }
        .auto-style20 {
            text-align: right;
            width: 254px;
            font-size: large;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Image ID="Image1" runat="server" Height="399px" ImageUrl="~/resimler/062d3a453bac978.png" Width="598px" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style6">
    <tr>
        <td class="auto-style10" colspan="2"><em><strong>Mesaj Paneli<br />
            </strong></em></td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style20"><strong>Ad Soyad:</strong></td>
        <td class="auto-style13">
            <asp:TextBox ID="TxtGonderen" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style20"><strong>Mail Adresiniz:</strong></td>
        <td class="auto-style13">
            <asp:TextBox ID="TxtMail" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style17"><strong>Konu:</strong></td>
        <td class="auto-style18">
            <asp:TextBox ID="TxtBaslik" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style19"><strong>Mesaj:</strong></td>
        <td class="auto-style14">
            <asp:TextBox ID="TxtMesaj" runat="server" CssClass="auto-style11" Height="130px" TextMode="MultiLine" Width="221px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15"></td>
        <td class="auto-style16">
            <asp:Button ID="Button1" runat="server" Text="Gönder" Width="221px" CssClass="fb5" OnClick="Button1_Click1" />
        </td>
    </tr>
</table>
</asp:Content>
