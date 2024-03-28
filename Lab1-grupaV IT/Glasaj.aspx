<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Glasaj.aspx.cs" Inherits="Lab1_grupaV_IT.Glasaj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <div class="row">

        <%--<div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="grupa1" />
        </div>--%>

        <div>
            <asp:Image ID="FinkiLogo" runat="server" ImageUrl="~/finki-logo.png" />
        </div>

        <div>
            <asp:Label ID="lblProfesor" runat="server" Text=""></asp:Label>
        </div>

        <div>
            <asp:ListBox ID="lbPredmeti" runat="server" AutoPostBack="True" OnSelectedIndexChanged="lbPredmeti_SelectedIndexChanged"></asp:ListBox>
           
            <asp:ListBox ID="lblKrediti" runat="server" OnSelectedIndexChanged="lblKrediti_SelectedIndexChanged"></asp:ListBox>
            
        </div>

        <div>
            <br />
            <asp:Button ID="KopceGlasaj" runat="server" Text="Гласајте" OnClick="KopceGlasaj_Click" />
            
        </div>

        <div>
            <asp:Label ID="undefined_glasanje" runat="server" Text=""></asp:Label>
        </div>
        <br />
        <hr />

        <div>
            Предмет:
            <br />
            <asp:TextBox ID="predmet_vnesuvanje" runat="server"></asp:TextBox>
            <div style="color:red">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Внесете предмет!" ControlToValidate="predmet_vnesuvanje" ></asp:RequiredFieldValidator>
            </div>
           
        </div>
        <br />
        <div>
            Кредити:
            <br />
            <asp:TextBox ID="krediti_vnesuvanje" runat="server"></asp:TextBox>
            <div style="color:red">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Внесете кредити!" ControlToValidate="krediti_vnesuvanje" ></asp:RequiredFieldValidator>
            </div>
        </div>
         
        <div>
            <br />
            <asp:Button ID="Dodadi" runat="server" Text="Додади" OnClick="Dodadi_Click" /> 

        </div>

        <div>
            <br />
            <asp:Button ID="Izbrisi" runat="server" Text="Избриши" OnClick="Izbrisi_Click" />
        </div>

        <div style="color:red">
            <asp:Label ID="izbrisan"  runat="server" Text=""></asp:Label>
        </div>


    </div>

    
</asp:Content>
