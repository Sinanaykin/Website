<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="DuyurularAdmin.aspx.cs" Inherits="SporveBeslenme.DuyurularAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 75px;
        }
        .auto-style15 {
            width: 28px;
            background-color: #999999;
        }
        .auto-style16 {
            width: 800%;
        }
        .auto-style17 {
            text-align: left;
            width: 44px;
            background-color: #999999;
        }
    .auto-style20 {
        text-align: center;
    }
        .auto-style22 {
            text-align: left;
        }
        .auto-style23 {
            font-size: small;
            font-weight: bold;
        }
        .auto-style24 {
            background-color: #999999;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style14">
        <table class="auto-style16">
            <tr>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style22" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click1"  />
                    </strong></td>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style22" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click1"  />
                    </strong></td>
                <td class="auto-style24">DUYURULAR GÜNCELLE</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style10">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="594px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox2" runat="server" Height="50px" Width="594px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="594px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="594px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="594px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox7" runat="server" Height="30px" Width="594px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox8" runat="server" Height="30px" Width="594px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox9" runat="server" Height="30px" Width="594px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"><strong>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
            </tr>
            <tr>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style23" Height="50px" OnClick="Button3_Click" Text="GÜNCELLE DUYURU" Width="232px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style23" Height="50px" OnClick="Button4_Click" Text="GÜNCELLE İÇERİK" Width="200px" />
                    </strong></td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
