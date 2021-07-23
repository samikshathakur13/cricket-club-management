<%@ Page Title="" Language="C#" MasterPageFile="~/custMasterPage.master" AutoEventWireup="true" CodeFile="sechreport.aspx.cs" Inherits="sechreport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" Height="249px" Width="614px">
            <Columns>
                <asp:BoundField DataField="mid" HeaderText="mid" InsertVisible="False" 
                    ReadOnly="True" SortExpression="mid" />
                <asp:BoundField DataField="matchname" HeaderText="matchname" 
                    SortExpression="matchname" />
                <asp:BoundField DataField="teamone" HeaderText="teamone" 
                    SortExpression="teamone" />
                <asp:BoundField DataField="teamtwo" HeaderText="teamtwo" 
                    SortExpression="teamtwo" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                <asp:BoundField DataField="location" HeaderText="location" 
                    SortExpression="location" />
                <asp:BoundField DataField="groundname" HeaderText="groundname" 
                    SortExpression="groundname" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:con %>" 
            SelectCommand="SELECT * FROM [matchtable]"></asp:SqlDataSource>
    </center>
</asp:Content>

