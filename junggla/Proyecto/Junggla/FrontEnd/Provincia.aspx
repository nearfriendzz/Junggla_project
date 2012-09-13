<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Provincia.aspx.cs" Inherits="FrontEnd.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .style3
    {
        color: #000000;
        font-size: x-large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
<span class="style3"><strong>Listado de pais</strong></span><asp:GridView 
    ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" 
    DataSourceID="SqlPROVINCIA" CellPadding="4" DataKeyNames="Code" 
    ForeColor="#333333" GridLines="None" Height="331px" style="margin-right: 9px" 
    Width="398px">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="Code" HeaderText="Code" SortExpression="Code" />
        <asp:BoundField DataField="CountryName" HeaderText="CountryName" 
            SortExpression="CountryName" />
        <asp:BoundField DataField="Province" HeaderText="Province" 
            SortExpression="Province" />
    </Columns>
    <EditRowStyle BackColor="#7C6F57" />
    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#E3EAEB" />
    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F8FAFA" />
    <SortedAscendingHeaderStyle BackColor="#246B61" />
    <SortedDescendingCellStyle BackColor="#D4DFE1" />
    <SortedDescendingHeaderStyle BackColor="#15524A" />
</asp:GridView>
<br />
<br />
<span class="style3"><strong>Listado de Provincia segun el pais</strong></span><asp:GridView 
    ID="GridView2" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" 
    DataSourceID="SqlPAISPROVINCIA" BackColor="White" BorderColor="#999999" 
    BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" 
    GridLines="Vertical" Width="414px">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:CommandField ShowEditButton="True" />
        <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
        <asp:BoundField DataField="CityName" HeaderText="CityName" 
            SortExpression="CityName" />
        <asp:BoundField DataField="Country" HeaderText="Country" 
            SortExpression="Country" />
        <asp:CommandField ShowDeleteButton="True" />
    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
<asp:SqlDataSource ID="SqlPAISPROVINCIA" runat="server" 
    ConnectionString="<%$ ConnectionStrings:VenusConnectionString %>" 
    SelectCommand="SELECT * FROM [V_CO_PROVINCIA] WHERE ([Country] = @Country)">
    <SelectParameters>
        <asp:ControlParameter ControlID="GridView1" Name="Country" 
            PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlPROVINCIA" runat="server" 
    ConnectionString="<%$ ConnectionStrings:VenusConnectionString %>" 
    SelectCommand="SELECT * FROM [V_CO_PAIS]"></asp:SqlDataSource>
</asp:Content>
