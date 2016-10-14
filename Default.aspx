<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
              <h3>Danh sách khách hàng:</h3>  
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaKH" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" SortExpression="MaKH" />
            <asp:BoundField DataField="HoTen" HeaderText="HoTen" SortExpression="HoTen" />
            <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="SoDienThoai" HeaderText="SoDienThoai" SortExpression="SoDienThoai" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
</asp:DetailsView>     
    
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString7 %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KhachHang] ([MaKH], [HoTen], [DiaChi], [Email], [SoDienThoai]) VALUES (@MaKH, @HoTen, @DiaChi, @Email, @SoDienThoai)" SelectCommand="SELECT [MaKH], [HoTen], [DiaChi], [Email], [SoDienThoai] FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [HoTen] = @HoTen, [DiaChi] = @DiaChi, [Email] = @Email, [SoDienThoai] = @SoDienThoai WHERE [MaKH] = @MaKH">
    <DeleteParameters>
        <asp:Parameter Name="MaKH" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="MaKH" Type="Int32" />
        <asp:Parameter Name="HoTen" Type="String" />
        <asp:Parameter Name="DiaChi" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="SoDienThoai" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="HoTen" Type="String" />
        <asp:Parameter Name="DiaChi" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="SoDienThoai" Type="Int32" />
        <asp:Parameter Name="MaKH" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    
</asp:Content>
