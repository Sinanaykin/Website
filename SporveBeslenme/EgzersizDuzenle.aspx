<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="EgzersizDuzenle.aspx.cs" Inherits="SporveBeslenme.EgzersizDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            text-align: right;
            font-size: large;
        }
        .auto-style16 {
            text-align: left;
            font-size: large;
        }
        .auto-style17 {
            text-align: left;
        }
        .auto-style19 {
            font-size: medium;
            font-weight: bold;
        }
        .auto-style20 {
            font-size: medium;
        }
        .auto-style21 {
            text-align: right;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style10">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>EGZERSİZ AD:</strong></td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox1" runat="server" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>EGZERSİZ TARİF:</strong></td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style20" Height="300px" TextMode="MultiLine" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>KATEGORİ:</strong></td>
            <td class="auto-style17">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="350px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21"><strong>EGZERSİZ GÖRÜNTÜ:</strong></td>
            <td class="auto-style16"><strong>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="311px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style19" Height="35px" OnClick="Button1_Click" Text="GÜNCELLE" Width="122px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
