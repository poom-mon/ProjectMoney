﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MS_Main.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ctpHeadMenu" Runat="Server">
  <section>
      <div class="large-12 columns">  
                <h1>บัตรกดเงินสด</h1>
                <hr>
                <p>เปรียบเทียบบัตรเครดิตที่เหมาะกับคุณ</p>
                <a href="#product" class="btn btn-primary btn-xl page-scroll">ขอสินเชื่อ</a>
           </div>  
    </section> 
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ctpMain" Runat="Server">

    <section   id="product">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">คำนวณเบี้ยประกัน</h2>
                    <hr class="primary">
                </div>
            </div>
        </div>
        <div class="container">

        </div>
       </section>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ctpScript" Runat="Server">
</asp:Content>
