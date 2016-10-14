<%@ Page Title="ChiTiet" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Chitiet.aspx.vb" Inherits="Chitiet" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
              <h3>Chi tiết hóa đơn:</h3>  
            </hgroup>
            <p></p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
    <ol class="round">
        <li class="one">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DataSourceID="SqlDataSource1" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaChiTiet">
                <Fields>
                    <asp:BoundField DataField="MaChiTiet" HeaderText="MaChiTiet" ReadOnly="True" SortExpression="MaChiTiet" />
                    <asp:BoundField DataField="MaHoaDon" HeaderText="MaHoaDon" SortExpression="MaHoaDon" />
                    <asp:BoundField DataField="MaSanPham" HeaderText="MaSanPham" SortExpression="MaSanPham" />
                    <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [MaChiTiet] = @MaChiTiet" InsertCommand="INSERT INTO [ChiTietHoaDon] ([MaChiTiet], [MaHoaDon], [MaSanPham], [SoLuong]) VALUES (@MaChiTiet, @MaHoaDon, @MaSanPham, @SoLuong)" SelectCommand="SELECT [MaChiTiet], [MaHoaDon], [MaSanPham], [SoLuong] FROM [ChiTietHoaDon]" UpdateCommand="UPDATE [ChiTietHoaDon] SET [MaHoaDon] = @MaHoaDon, [MaSanPham] = @MaSanPham, [SoLuong] = @SoLuong WHERE [MaChiTiet] = @MaChiTiet">
                <DeleteParameters>
                    <asp:Parameter Name="MaChiTiet" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaChiTiet" Type="Int32" />
                    <asp:Parameter Name="MaHoaDon" Type="Int32" />
                    <asp:Parameter Name="MaSanPham" Type="Int32" />
                    <asp:Parameter Name="SoLuong" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MaHoaDon" Type="Int32" />
                    <asp:Parameter Name="MaSanPham" Type="Int32" />
                    <asp:Parameter Name="SoLuong" Type="Int32" />
                    <asp:Parameter Name="MaChiTiet" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
        </li>
        </ol>
    
</asp:Content>

