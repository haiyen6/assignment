<%@ Page Title="Bill" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Bill.aspx.vb" Inherits="Bill" %>


<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
              <h3>Danh sách hóa đơn:</h3>  
            </hgroup>
            <p></p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
    <ol class="round">
        <li class="one">
            <h5>Hóa Đơn:</h5>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DataSourceID="SqlDataSource1" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaHoaDon">
                <Fields>
                    <asp:BoundField DataField="MaHoaDon" HeaderText="MaHoaDon" ReadOnly="True" SortExpression="MaHoaDon" />
                    <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHoaDon] = @MaHoaDon" InsertCommand="INSERT INTO [HoaDon] ([MaHoaDon], [MaKH]) VALUES (@MaHoaDon, @MaKH)" SelectCommand="SELECT [MaHoaDon], [MaKH] FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [MaKH] = @MaKH WHERE [MaHoaDon] = @MaHoaDon">
                <DeleteParameters>
                    <asp:Parameter Name="MaHoaDon" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaHoaDon" Type="Int32" />
                    <asp:Parameter Name="MaKH" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MaKH" Type="Int32" />
                    <asp:Parameter Name="MaHoaDon" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        </ol>
    <h5 ><a style="color:red; margin-left:100px; "href="Chitiet.aspx">Chi Tiết Hóa Đơn</a></h5>
</asp:Content>
