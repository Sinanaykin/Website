<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="SporveBeslenme.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 78px;
            background-color: #999999;
        }
        .auto-style15 {
            width: 43px;
            text-align: left;
        }
        .auto-style16 {
            width: 764%;
        }
        .auto-style17 {
            width: 25px;
        }
        .auto-style18 {
            width: 97%;
            text-align: right;
            height: 40px;
        }
        .auto-style22 {
            width: 46px;
            text-align: left;
        }
        .auto-style23 {
        width: 116px;
        text-align: left;
    }
        .auto-style24 {
            text-align: left;
        }
        .auto-style25 {
            background-color: #999999;
        }
        .auto-style26 {
            width: 772%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="auto-style24">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style14">
        <table class="auto-style26">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style22" Height="30px"  Text="+" Width="30px"  style="font-weight: bold; font-size: large" OnClick="Button1_Click"/>
                    </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style22" Height="30px"  Text="-" Width="30px"  style="font-size: large" OnClick="Button2_Click"/>
                    </strong></td>
                <td class="auto-style25">MESAJ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
     </div>
     <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="588px">
            <ItemTemplate>
                <table class="auto-style18">
                    <tr>
                        <td class="auto-style23"><strong>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("MesajGönderen") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
                        <td class="auto-style16">
                        <a href="MesajDetay.aspx?Mesajid=<%#Eval("Mesajid")%>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/oku.png" Width="64px" /></a>

                        </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
