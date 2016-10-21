<%@ Page Title="Product" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Product.aspx.vb" Inherits="Product" %>


<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
              <h3>Danh sách sản phẩm:</h3>  
            </hgroup>
            <p></p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
    <ol class="round">
        <li class="one">            
            <h5>Sản Phẩm</h5>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="500px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaSanPham" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:BoundField DataField="MaSanPham" HeaderText="MaSanPham" ReadOnly="True" SortExpression="MaSanPham" />
                    <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" SortExpression="MaLoai" />
                    <asp:BoundField DataField="DonViTinh" HeaderText="DonViTinh" SortExpression="DonViTinh" />
                    <asp:BoundField DataField="TenSanPham" HeaderText="TenSanPham" SortExpression="TenSanPham" />
                    <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
                    <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                    <asp:BoundField DataField="AnhSanPham" HeaderText="AnhSanPham" SortExpression="AnhSanPham" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSanPham] = @MaSanPham" InsertCommand="INSERT INTO [SanPham] ([MaSanPham], [MaLoai], [DonViTinh], [TenSanPham], [Gia], [MoTa], [AnhSanPham]) VALUES (@MaSanPham, @MaLoai, @DonViTinh, @TenSanPham, @Gia, @MoTa, @AnhSanPham)" SelectCommand="SELECT [MaSanPham], [MaLoai], [DonViTinh], [TenSanPham], [Gia], [MoTa], [AnhSanPham] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [MaLoai] = @MaLoai, [DonViTinh] = @DonViTinh, [TenSanPham] = @TenSanPham, [Gia] = @Gia, [MoTa] = @MoTa, [AnhSanPham] = @AnhSanPham WHERE [MaSanPham] = @MaSanPham">
                <DeleteParameters>
                    <asp:Parameter Name="MaSanPham" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaSanPham" Type="Int32" />
                    <asp:Parameter Name="MaLoai" Type="Int32" />
                    <asp:Parameter Name="DonViTinh" Type="String" />
                    <asp:Parameter Name="TenSanPham" Type="String" />
                    <asp:Parameter Name="Gia" Type="Decimal" />
                    <asp:Parameter Name="MoTa" Type="String" />
                    <asp:Parameter Name="AnhSanPham" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MaLoai" Type="Int32" />
                    <asp:Parameter Name="DonViTinh" Type="String" />
                    <asp:Parameter Name="TenSanPham" Type="String" />
                    <asp:Parameter Name="Gia" Type="Decimal" />
                    <asp:Parameter Name="MoTa" Type="String" />
                    <asp:Parameter Name="AnhSanPham" Type="String" />
                    <asp:Parameter Name="MaSanPham" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
         </li>
        
        
    </ol>
    <h5 ><a style="color:green; margin-left:100px; "href="Category.aspx">Loại sản phẩm</a></h5>
</asp:Content>

