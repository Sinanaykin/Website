<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="SporveBeslenme.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        font-size: large;
        color: #FF0000;
    }
    .auto-style9 {
        text-align: center;
    }
        .auto-style15 {
            width: 99%;
            height: 1231px;
        }
        .auto-style16 {
            text-align: center;
        }
        .auto-style17 {
            color: #FF0000;
            font-size: x-large;
        }
        .auto-style18 {
            text-align: center;
            margin-top: 0;
            background-color: #FFFFFF;
        }
    </style>

    &nbsp;
    <style type="text/css">
        .auto-style10 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    &nbsp;&nbsp;<asp:DataList ID="DataList3" runat="server" CssClass="auto-style18" style="margin-top: 0">
        <ItemTemplate>
            <table class="auto-style15">
                <tr>
                    <td class="auto-style10"><strong>
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style17" Text='<%# Eval("AnasayfaAd") %>' style="font-size: x-large; color: #FF0000"></asp:Label>
                        <br />
                        <br />
                        <br />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:Image ID="Image1" runat="server" Height="263px" ImageUrl='<%# Eval("AnasayfaResim") %>' Width="596px" />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:Image ID="Image3" runat="server" Height="540px" ImageUrl='<%# Eval("AnasayfaResim3") %>' Width="596px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image2" runat="server" Height="292px" ImageUrl='<%# Eval("AnasayfaResim2") %>' Width="596px" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
&nbsp;
</asp:Content>
