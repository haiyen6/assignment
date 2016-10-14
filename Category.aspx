<%@ Page Title="Category" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Category.aspx.vb" Inherits="Category" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
              <h3>Loại sản phẩm:</h3>  
            </hgroup>
            <p></p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
    <ol class="round">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DataSourceID="SqlDataSource1" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaLoai">
            <Fields>
                <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" ReadOnly="True" SortExpression="MaLoai" />
                <asp:BoundField DataField="TenLoai" HeaderText="TenLoai" SortExpression="TenLoai" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView> 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" DeleteCommand="DELETE FROM [LoaiSanPham] WHERE [MaLoai] = @MaLoai" InsertCommand="INSERT INTO [LoaiSanPham] ([MaLoai], [TenLoai]) VALUES (@MaLoai, @TenLoai)" SelectCommand="SELECT [MaLoai], [TenLoai] FROM [LoaiSanPham]" UpdateCommand="UPDATE [LoaiSanPham] SET [TenLoai] = @TenLoai WHERE [MaLoai] = @MaLoai">
            <DeleteParameters>
                <asp:Parameter Name="MaLoai" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaLoai" Type="Int32" />
                <asp:Parameter Name="TenLoai" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenLoai" Type="String" />
                <asp:Parameter Name="MaLoai" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </ol>
    
</asp:Content>
