<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listTable3.aspx.cs" Inherits="test_listTable3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

          <div class="plans">
    <div class="plan">
      <h3 class="plan-title">Started</h3>
      <p class="plan-price">$19 <span class="plan-unit">per month</span></p>
      <ul class="plan-features">
        <li class="plan-feature">2 <span class="plan-feature-name">websites</span></li>
        <li class="plan-feature">5<span class="plan-feature-unit">GB</span> <span class="plan-feature-name">storage</span></li>
        <li class="plan-feature">3 <span class="plan-feature-name">users</span></li>
      </ul>
      <a href="#" class="plan-button">Choose Plan</a>
    </div>
    <div class="plan plan-highlight">
      <p class="plan-recommended">Recommended</p>
      <h3 class="plan-title">Team</h3>
      <p class="plan-price">$49 <span class="plan-unit">per month</span></p>
      <ul class="plan-features">
        <li class="plan-feature">5 <span class="plan-feature-name">websites</span></li>
        <li class="plan-feature">20<span class="plan-feature-unit">GB</span> <span class="plan-feature-name">storage</span></li>
        <li class="plan-feature">10 <span class="plan-feature-name">users</span></li>
      </ul>
      <a href="#" class="plan-button">Choose Plan</a>
    </div>
    <div class="plan">
      <h3 class="plan-title">Premium</h3>
      <p class="plan-price">$99 <span class="plan-unit">per month</span></p>
      <ul class="plan-features">
        <li class="plan-feature">20 <span class="plan-feature-name">websites</span></li>
        <li class="plan-feature">50<span class="plan-feature-unit">GB</span> <span class="plan-feature-name">storage</span></li>
        <li class="plan-feature">25 <span class="plan-feature-name">users</span></li>
      </ul>
      <a href="#" class="plan-button">Choose Plan</a>
    </div>
    <div class="plan">
      <h3 class="plan-title">Corporate</h3>
      <p class="plan-price">$249 <span class="plan-unit">per month</span></p>
      <ul class="plan-features">
        <li class="plan-feature">&infin; <span class="plan-feature-name">websites</span></li>
        <li class="plan-feature">200<span class="plan-feature-unit">GB</span> <span class="plan-feature-name">storage</span></li>
        <li class="plan-feature">&infin; <span class="plan-feature-name">users</span></li>
      </ul>
      <a href="#" class="plan-button">Choose Plan</a>
    </div>
  </div>
   
    </form>
    <style>
       
body {
  font: 13px/20px 'Helvetica Neue', Helvetica, Arial, sans-serif;
  color: #404040;
  background: #eeebe4;
}

.plans {
  width: 836px;
  margin: 50px auto;
  overflow: hidden;
}

.plan {
  float: left;
  width: 150px;
  margin: 20px 2px;
  padding: 15px 25px;
  text-align: center;
  background: white;
  background-clip: padding-box;
  border: 2px solid #e5ded6;
  border-color: rgba(black, .1);
  border-radius: 5px;
}

.plan-title {
  margin-bottom: 12px;
  font-size: 24px;
  color: #36bce6;
}

.plan-price {
  margin-bottom: 20px;
  line-height: 1;
  font-size: 28px;
  font-weight: bold;
  color: #fd935a;
}

.plan-unit {
  display: block;
  margin-top: 5px;
  font-size: 13px;
  font-weight: normal;
  color: #aaa;
}

.plan-features {
  width: 120px;
  margin: 20px auto 15px;
  padding: 15px 0 0 15px;
  border-top: 1px solid #e5ded6;
  text-align: left;
}

.plan-feature {
  line-height: 20px;
  font-size: 24px;
  font-weight: 500;
  color: #333;

  & + & { margin-top: 5px; }
}

.plan-feature-unit {
  margin-left: 2px;
  font-size: 16px;
}

.plan-feature-name {
  font-size: 13px;
  font-weight: normal;
  color: #aaa;
}

.plan-button {
  position: relative;
  display: block;
  line-height: 40px;
  font-size: 16px;
  font-weight: 500;
  color: white;
  text-align: center;
  text-decoration: none;
  text-shadow: 0 1px rgba(black, .1);
  background: #fd935c;
  border-bottom: 2px solid #cf7e3b;
  border-color: rgba(black, .15);
  border-radius: 4px;

  &:active {
    top: 2px;
    margin-bottom: 2px;
    border-bottom: 0;
  }
}

.plan-highlight {
  margin-top: 0;
  margin-bottom: 0;
  padding-left: 15px;
  padding-right: 15px;
  width: 170px;
  border: 4px solid #37bbe6;

  .plan-button {
    font-size: 18px;
    line-height: 49px;
    background: #37bce5;
    border-color: #3996b3;
    border-color: rgba(black, .15);
  }
}

.plan-recommended {
  width: 160px;
  margin: -15px auto 15px;
  padding-bottom: 2px;
  line-height: 22px;
  font-size: 14px;
  font-weight: bold;
  color: white;
  text-shadow: 0 1px rgba(black, .05);
  background: #37bbe6;
  border-radius: 0 0 4px 4px;
}
    </style>
</body>
</html>
