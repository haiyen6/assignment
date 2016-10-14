<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Thông tin liên hệ.</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Nguyễn Thị Hải Yến:</h3>
        </header>
        <p>
            <span class="label">Phone:</span>
            <span>01696770569</span></p><p>
            <span class="label">Email:</span>
            <span><a href="mailto:yennthph03791@fpt.edu.vn">yennthph03791@fpt.edu.vn</a></span>
        </p>
        <header>
            <h3>Trần Thanh Huyền:</h3>
        </header>
        <p>
            <span class="label">Phone:</span>
            <span>091758650</span></p><p>
            <span class="label">Email:</span>
            <span><a href="mailto:huyenthph03745@fpt.edu.vn">huyenthph03745@fpt.edu.vn</a></span>
        </p>
    </section>

    

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.723378494325!2d105.74784991453309!3d21.043751535990186!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xbe1dd9229e185e2f!2zxJDDrG5oIGzDoG5nIEtp4buBdSBNYWk!5e0!3m2!1svi!2s!4v1476286772511" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
        </p>
    </section>
</asp:Content>