﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="SporveBeslenme.HakkimizdaAdmin" %>
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
    .auto-style19 {
        font-weight: bold;
        font-size: large;
    }
    .auto-style20 {
        text-align: center;
    }
        .auto-style21 {
            background-color: #999999;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style14">
        <table class="auto-style16">
            <tr>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style22" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style22" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style21">HAKKIMIZDA </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style10">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="300px" TextMode="MultiLine" Width="594px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style19" Text="GÜNCELLE" OnClick="Button3_Click" />
                    </strong></td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
