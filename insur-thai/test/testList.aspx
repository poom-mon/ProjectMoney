﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testList.aspx.cs" Inherits="test_testList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    <div class="wrap">
<div class="table">
<ul>
  
<li>
  <div class="top">
    <h1>STARTER</h1>
    <div class="circle">$19</div>
  </div>
  <div class="bottom">
    <p><span>5</span> users</p>
    <p><span>10</span> projects</p>
    <p><span>10GB</span> amount of space</p>
    <p><span>5</span> e-mail accounts</p>
    <div class="sign">
    <a href='#' class='button'>SIGN UP</a>
    </div>
  </div>
</li>
  
<li>
  <div class="top">
    <h1>BASIC</h1>
    <div class="circle">$29</div>
  </div>
    <div class="bottom">
    <p><span>10</span> users</p>
    <p><span>50</span> projects</p>
    <p><span>50GB</span> amount of space</p>
    <p><span>10</span> e-mail accounts</p>
    <div class="sign">
    <a href='#' class='button'>SIGN UP</a>
    </div>
  </div>
</li>
  
<li>
  <div class="top purple white">
    <h1>PRO</h1>
    <div class="circle pink">$49</div>
  </div>
    <div class="bottom">
    <p><span>100</span> users</p>
    <p><span>Unlimited</span> projects</p>
    <p><span>1TB</span> amount of space</p>
    <p><span>100</span> e-mail accounts</p>
    <div class="sign">
    <a href='#' class="button purple" style="color:white;">SIGN UP</a>
    </div>
  </div>
</li>
  
<li>
  <div class="top">
    <h1>ULTRA</h1>
    <div class="circle">$99</div>
  </div>
    <div class="bottom">
    <p><span>Unlimited</span> users</p>
    <p><span>Unlimited</span> projects</p>
    <p><span>Unlimited</span> amount of space</p>
    <p><span>Unlimited</span> e-mail accounts</p>
    <div class="sign">
    <a href='#' class='button'>SIGN UP</a>
    </div>
  </div>
</li>
  
</ul>
</div>
</div>

    
    </div>
    </form>
    <style>
          @import url(http://fonts.googleapis.com/css?family=Droid+Sans:400,700|Droid+Serif:400,700);  
       * {
          margin: 0;
          padding: 0;
        } 

        html, body {
          height: 100%;
        }
        

        body {
          text-align: center;
          background-color: #5d4660;
          *zoom: 1;
          filter: progid:DXImageTransform.Microsoft.gradient(gradientType=0, startColorstr='#FF5D4660', endColorstr='#FFF7EEC7');
          background-image: url('data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4gPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGRlZnM+PGxpbmVhckdyYWRpZW50IGlkPSJncmFkIiBncmFkaWVudFVuaXRzPSJvYmplY3RCb3VuZGluZ0JveCIgeDE9IjAuNSIgeTE9IjAuMCIgeDI9IjAuNSIgeTI9IjEuMCI+PHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iIzVkNDY2MCIvPjxzdG9wIG9mZnNldD0iMTAwJSIgc3RvcC1jb2xvcj0iI2Y3ZWVjNyIvPjwvbGluZWFyR3JhZGllbnQ+PC9kZWZzPjxyZWN0IHg9IjAiIHk9IjAiIHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9InVybCgjZ3JhZCkiIC8+PC9zdmc+IA==');
          background-size: 100%;
          background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #5d4660), color-stop(100%, #f7eec7));
          background-image: -moz-linear-gradient(top, #5d4660 0%, #f7eec7 100%);
          background-image: -webkit-linear-gradient(top, #5d4660 0%, #f7eec7 100%);
          background-image: linear-gradient(to bottom, #5d4660 0%, #f7eec7 100%);
          font-family: 'Droid Sans', sans-serif;
        } 

        .wrap {
          width: 800px;
          margin: 0 auto;
          text-align: left;
          color: #989A8F;
        }

        .table {
          background-color: #ffffff;
          height: 325px;
          width: 100%;
          margin-top: 50px;
        }

        ul li {
          float: left;
          width: 199px;
          text-align: center;
          border-left: 1px solid #DDDCD8;
        }

        .top {
          background-color: #EAE9E4;
          height: 75px;
        }
        .top h1 {
          padding-top: 20px;
        }

        .circle {
          width: 60px;
          height: 60px;
          border-radius: 60px;
          font-size: 20px;
          color: #fff;
          line-height: 60px;
          text-align: center;
          background: #989A8F;
          margin-left: 70px;
          margin-top: 10px;
        }

        .bottom {
          margin-top: 50px;
        }
        .bottom p {
          font-size: 13px;
          font-family: 'Droid Serif', sans-serif;
          padding: 5px;
        }
        .bottom p span {
          font-weight: bold;
        }

        .sign {
          margin-top: 50px;
        }
        .sign .button {
          border: 1px solid #989A8F;
          padding: 10px 40px;
          -webkit-border-radius: 6px;
          -moz-border-radius: 6px;
          border-radius: 6px;
          color: #989A8F;
          font-size: 14px;
          text-decoration: none;
          vertical-align: middle;
          font-size: 17px;
        }

        .purple {
          background-color: #5D4660;
        }

        .white {
          color: #FFFFFF;
        }

        .pink {
          background-color: #BC9B94;
        }

    </style>
</body>
</html>
