<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Duyurular.aspx.cs" Inherits="SporveBeslenme.Duyurular" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 252px;
            text-align: center;
        }
        .auto-style6 {
            font-size: xx-large;
        }
        .auto-style7 {
            text-align: left;
        }
        .auto-style8 {
            font-size: x-large;
        }
        .auto-style9 {
            width: 96%;
            height: 351px;
        }
        .auto-style10 {
            width: 101%;
            height: 329px;
        }
        .auto-style14 {
            width: 591px;
            height: 37px;
            margin-bottom: 0px;
        }
        .auto-style15 {
            height: 96px;
        }
        .auto-style20 {
            width: 99%;
            height: 251px;
        }
        .auto-style22 {
            text-align: left;
        }
        .auto-style25 {
            text-align: left;
            height: 39px;
        }
        .auto-style27 {
            text-align: left;
            height: 39px;
            width: 993px;
        }
        .auto-style28 {
            color: #000000;
        }
        .auto-style29 {
            font-size: large;
        }
        .auto-style30 {
            text-align: left;
            height: 39px;
            width: 993px;
            color: #000000;
        }
        .auto-style31 {
            font-size: large;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style14">
        <asp:DataList ID="DataList4" runat="server" CssClass="auto-style22" Height="66px" Width="388px">
            <ItemTemplate>
                <table class="auto-style10">
                    <tr>
                        <td style="text-align: center; color: #FF0000" class="auto-style15">
                            <strong>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label7" runat="server" CssClass="auto-style6" Text='<%# Eval("DuyuruAd2") %>'></asp:Label>
                            <br />
                            <br />
                            <table class="auto-style20">
                                <tr>
                                    <td class="auto-style30"><strong>
                                        <asp:Label ID="Label8" runat="server" CssClass="auto-style29" Text='<%# Eval("DuyuruAd3") %>'></asp:Label>
                                        <br />
                                        </strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style27"><strong>
                                        <asp:Label ID="Label9" runat="server" CssClass="auto-style31" Text='<%# Eval("DuyuruAd4") %>'></asp:Label>
                                        <br />
                                        </strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style27"><strong>
                                        <asp:Label ID="Label10" runat="server" CssClass="auto-style31" Text='<%# Eval("DuyuruAd5") %>'></asp:Label>
                                        <br />
                                        </strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style25"><strong>
                                        <asp:Label ID="Label11" runat="server" CssClass="auto-style31" Text='<%# Eval("DuyuruAd6") %>'></asp:Label>
                                        <br />
                                        </strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style27"><strong>
                                        <asp:Label ID="Label12" runat="server" CssClass="auto-style31" Text='<%# Eval("DuyuruAd7") %>'></asp:Label>
                                        <br />
                                        </strong></td>
                                </tr>
                            </table>
                            </strong>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:DataList ID="DataList3" runat="server" style="margin-bottom: 0px">
    <ItemTemplate>
        <table class="auto-style9">
            <tr>
                <td style="text-align: center; font-size: x-large; font-weight: 700">
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("DuyuruAd") %>' style="color: #FF0000"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    <asp:Label ID="Label6" runat="server" style="font-weight: 700" Text='<%# Eval("DuyuruTarih") %>' CssClass="auto-style28"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Image ID="Image1" runat="server" Height="265px" ImageUrl="~/resimler/Uzaktan-Eğitim-Konu-Görseli2-1140x500.png" Width="586px" />
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>