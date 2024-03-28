<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Najava.aspx.cs" Inherits="Lab1_grupaV_IT._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="m-4">
            Име <asp:TextBox ID="Name" runat="server"></asp:TextBox>
            
            <div class="m-4" style="color:red">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Внесете име" ControlToValidate="Name"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="m-4">
            Лозинка <asp:TextBox type="password" ID="Lozinka" runat="server"></asp:TextBox>  
            <div class="m-4" style="color:red">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Внесете лозинка" ControlToValidate="Lozinka"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="m-4">
            е-адреса <asp:TextBox ID="Email" runat="server"></asp:TextBox>
            <div class="m-4" style="color:red">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Внесете емаил" ControlToValidate="Email"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Невалиден формат" ControlToValidate="Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
        </div>

        <div class="m-4">
            <asp:Button ID="Najava" runat="server" Text="Најавете се" OnClick="Najava_Click" />
        </div>
    </div>

</asp:Content>
