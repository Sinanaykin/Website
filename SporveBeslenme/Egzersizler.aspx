<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Egzersizler.aspx.cs" Inherits="SporveBeslenme.Egzersizler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            background-color: #999999;
        }
        .auto-style15 {
            text-align: left;
            width: 340px;
        }
        .auto-style16 {
            text-align: left;
            width: 27px;
        }
        .auto-style17 {
            width: 219px;
            text-align: right;
        }
        .auto-style18 {
            width: 101%;
        }
        .auto-style20 {
            text-align: left;
            width: 32px;
        }
        .auto-style21 {
            width: 31px;
        }
        .auto-style22 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style23 {
            font-weight: bold;
            font-size: medium;
        }
        .auto-style24 {
            text-align: center;
        }
        .auto-style25 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style14">
        <table class="auto-style10">
            <tr>
                <td class="auto-style21"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style22" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"/>
                    </strong></td>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style22" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"/>
                    </strong></td>
                <td>EGZERSİZ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="auto-style18">
                    <tr>
                        <td class="auto-style15"><strong>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("EgzersizAd") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
                        <td class="auto-style17">
                         <a href="Egzersizler.aspx?Egzersizid=<%#Eval("Egzersizid")%>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/Delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style16">
                        <a href="EgzersizDuzenle.aspx?Egzersizid=<%#Eval("Egzersizid")%>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/update1.png" Width="30px" /> </a>

                        </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style14">
        <asp:Panel ID="Panel4" runat="server" CssClass="auto-style14">
            <table class="auto-style10">
                <tr>
                    <td class="auto-style21"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style22" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"/>
                        </strong></td>
                    <td class="auto-style20"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style22" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"/>
                        </strong></td>
                    <td>EGZERSİZ EKLEME</td>
                </tr>
            </table>
        </asp:Panel>

    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server">
        <table class="auto-style10">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>EGZERSİZ AD :&nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="50px" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>EGZERSİZ TARİF:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="300px" TextMode="MultiLine" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="350px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style25"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style23" Height="35px" OnClick="BtnEkle_Click" Text="EKLE" Width="122px" />
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

