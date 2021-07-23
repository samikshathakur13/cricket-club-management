<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="schedule.aspx.cs" Inherits="schedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cphbody" Runat="Server">
    <center>
<table>

<tr><td colspan="3">MATCH TIME TABLE SCHEDULING</td></tr>
<tr><td>MATCH ID</td><td>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td></tr>
<tr><td>MATCH NAME</td><td><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td></tr>
<tr><td>TEAM 1 NAME</td><td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="please enter team 1 name" ControlToValidate="TextBox1"></asp:RequiredFieldValidator></td></tr>
<tr><td>TEAM 2 NAME</td><td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="please enter team 2 name" ControlToValidate="TextBox2"></asp:RequiredFieldValidator></td></tr>
<tr><td>DATE</td><td><asp:TextBox ID="TextBox3" runat="server" Text="DD-MM-YYYY"></asp:TextBox></td>
<td></td></tr>
<tr><td>TIME</td><td><asp:TextBox ID="TextBox4" runat="server" Text="HH-MM"></asp:TextBox></td><td></td></tr>.
<tr><td>LOCATION</td><td><asp:TextBox ID="TextBox5" runat="server" ></asp:TextBox></td><td></td></tr>
<tr><td>GROUND NAME</td><td><asp:TextBox ID="TextBox6" runat="server" ></asp:TextBox></td><td></td></tr>
<tr><td colspan="2">
    <asp:Button ID="Button1" runat="server" Text="ADD MATCH DETAILS"  onclick="Button1_Click" /> 
        &nbsp;&nbsp; 
        <asp:Button ID="Button3" runat="server" Text="UPDATE MATCH DETAILS" 
        onclick="Button3_Click"   /> 
    &nbsp; 
    <asp:Button ID="Button4" runat="server" Text="DELETE MATCH DETAILS" 
        onclick="Button4_Click"   /> 
    
    </td>
    </tr>

    <tr>
    <td colspan="2">
        <asp:Label ID="lblerror" runat="server" Text=""></asp:Label></td></tr>
</table>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False"  
        Height="150px" Width="869px" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="mid" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="mid" />
            <asp:BoundField DataField="date" HeaderText="DATE" SortExpression="date" />
            <asp:BoundField DataField="time" HeaderText="TIME" SortExpression="time" />
            <asp:BoundField DataField="matchname" HeaderText="MATCH NAME" 
                SortExpression="matchname" />
            <asp:BoundField DataField="teamone" HeaderText="TEAM 1" 
                SortExpression="teamone" />
            <asp:BoundField DataField="teamtwo" HeaderText="TEAM 2" 
                SortExpression="teamtwo" />
            <asp:BoundField DataField="groundname" HeaderText="GROUND NAME" 
                SortExpression="groundname" />
            <asp:BoundField DataField="location" HeaderText="LOCATION" 
                SortExpression="location" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cricketConnectionString %>" 
        SelectCommand="SELECT * FROM [matchtable]"></asp:SqlDataSource>
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        Text="SEND MAIL" />
</center>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphlast" Runat="Server">
</asp:Content>

