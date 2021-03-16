<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="SporveBeslenme.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            text-align: center;
            color: #FF0000;
            font-size: xx-large;
            height: 48px;
            background-color: #999999;
        width: 598px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Image ID="Image2" runat="server" Height="399px" ImageUrl="~/resimler/images (1).jpg" Width="602px" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p class="auto-style6">
        <em><strong>HAKKIMIZDA</strong></em></p>
    <strong>  
        <asp:DataList ID="DataList5" runat="server" Height="16px" Width="593px" CssClass="auto-style7">
        <ItemTemplate>
            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>

    </strong>

    <asp:Image ID="Image1" runat="server" Height="178px" ImageUrl="~/resimler/images.jpg" Width="600px" />

</asp:Content>
