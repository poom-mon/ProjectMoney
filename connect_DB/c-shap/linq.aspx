<%@ Page Title="" Language="C#" MasterPageFile="~/MS_MAIN.master" AutoEventWireup="true" CodeFile="linq.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpnHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpn_Content" Runat="Server"> 
      <b>Linq  </b>

      <div class="bs-example bs-example-tabs" data-example-id="togglable-tabs">
    <ul id="myTabs" class="nav nav-tabs" role="tablist">
      <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">select</a></li>
      <li role="presentation" class=""><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile" aria-expanded="false">insert</a></li>
      <li role="presentation" class="dropdown">
        <a href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown" aria-controls="myTabDrop1-contents" aria-expanded="false">descript  <span class="caret"></span></a>
        <ul class="dropdown-menu" aria-labelledby="myTabDrop1" id="myTabDrop1-contents">
          <li><a href="#dropdown1" role="tab" id="dropdown1-tab" data-toggle="tab" aria-controls="dropdown1">descript 1</a></li>
          <li><a href="#dropdown2" role="tab" id="dropdown2-tab" data-toggle="tab" aria-controls="dropdown2">descript 2</a></li>
        </ul>
      </li>
    </ul>
    <div id="myTabContent" class="tab-content" style="background-color:#FFFFFF;padding: 2px 2px 2px 2px;">
      <div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
        <p> 
          
          <table id="tbResult" class="table table-striped">
              <thead>
                <tr>
                  <th>#</th>
                  <th>name</th>
                  <th>email</th> 
                </tr>
              </thead>
              <tbody id="tbodyId">
               
              </tbody>
            </table>

        </p>
      </div>
      <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
        <p>
         insert
         <div> name : <input id="tbName" type="text" /></div> 
         <div> email : <input id="tbEmail" type="text" /> </div>
         <div> <input id="btnInsert" type="button" value="Insert" /> </div>
        </p>
          
      </div>
      <div role="tabpanel" class="tab-pane fade" id="dropdown1" aria-labelledby="dropdown1-tab"> 
         <p>
           descript
        </p>


        </p>
      </div>
      <div role="tabpanel" class="tab-pane fade" id="dropdown2" aria-labelledby="dropdown2-tab">
        <p>descript 2 </p>
      </div>
    </div>
          
  </div>
   
     
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpnfoot" Runat="Server">
    <script src="../JS/File/jquery.1.11.0.min.js" type="text/javascript"></script> 
    <script type="text/javascript">

        var global_res, booIns = false, boolUpdate = false, boolDel = false ;

        fncLoad();

        $("#home-tab").on("click", function () {
            fncLoad();
        });

        function fncDelete(id) {  
            $.when(
                  fncDel(id)
             ).done(function () {
                 alert("insert Status : ", boolDel);
                 fncLoad(); 
             }); 
        } 
        function fncEdit(va) {   
            var strbody = "<div>  name <input class=\"cName\" type=\"text\" /> </div>";
            strbody += "  <div> email <input class=\"cEmail\" type=\"text\" /></div>";
            strbody += "<div><input class='btnUpdate' type='button' value='button' />  </div>";

            if ($("#tdAdd" + va).length == 0) {
                $("#tdID" + va).after("<tr id='" + ("tdAdd" + va) + "'><td colspan='4'>" + strbody + "</td></tr>");


                $(".btnUpdate").on("click", function () {
                    var _name = $(".cName").val();
                    var _email = $(".cEmail").val(); 
                    var data = { ID : va , NAME: _name, EMAIL: _email };
                    $.when(
                        fncUpdate(data)
                     ).done(function () {
                         alert("updateSuccess Status : ", boolUpdate);
                         fncLoad()
                     });
                      

                });

            }
            else
                $("#tdAdd" + va).remove(); 
        } 
        function fncLoad() {
            $.when(
                 selectDt()
             ).done(function () {
                 console.log("test:", global_res);  
                 var _html = "";
                 for (var i = 0; i < global_res.length; i++) {
                     _html += "<tr id='tdID" + global_res[i].ID + "'><th scope=\"row\" >" + (i + 1) + "</th><td>" + global_res[i].NAME + "</td><td>" + global_res[i].EMAIL + "</td> <td><i class='glyphicon glyphicon-trash'></i><input onclick=\"fncDelete('" + global_res[i].ID + "');\" class='btn btn-link'  type=\"button\" value=\"delete\" />  |  <i class='glyphicon glyphicon-new-window'></i><input onclick=\"fncEdit('" + global_res[i].ID + "');\" class='btn btn-link'  type=\"button\" value=\"Edit\" /> </td></tr>";
                 }
                 $("#tbodyId").html(_html);

             });
        } 
        function selectDt() {
                 var _url = "/connect_DB/c-shap/query.aspx/cSelectLinq";
                 var data = {
                     id : 1
                 };
                 return $.ajax({
                     type: "POST",
                     url: _url,
                     contentType: "application/json; charset=utf-8",
                     dataType: "json",
                     data: "{data:'" + JSON.stringify(data).replace(/'/g, "\\'\\'") + "'}",
                     success: function (response) { global_res = response.d; },
                     error: function (xhr, status, msg) {
                         var error = eval("(" + xhr.responseText + ")");
                         console.log(error.Message);
                         result = null;
                     }
                 });
        }


        $("#btnInsert").on("click", function () {
            $.when(
                  fncInsert()
             ).done(function () {
                 alert("insert Status : ", booIns);

                 $("#tbName").val('');
                 $("#tbEmail").val('');
             });

        });
       
             function fncInsert() {
                 var _url = "/connect_DB/c-shap/query.aspx/cInsertLinq";
                 var _name = $("#tbName").val();
                 var _email = $("#tbEmail").val();
                 var data = {
                     name: _name,
                     email: _email
                 };
                 return $.ajax({
                     type: "POST",
                     url: _url,
                     contentType: "application/json; charset=utf-8",
                     dataType: "json",
                     data: "{data:'" + JSON.stringify(data).replace(/'/g, "\\'\\'") + "'}",
                     success: function (response) { booIns = response.d; console.log(response.d, "data"); },
                     error: function (xhr, status, msg) {
                         var error = eval("(" + xhr.responseText + ")");
                         console.log(error.Message);
                         result = null;
                     }
                 });
             }

             function fncDel(id) {
                 var _url = "/connect_DB/c-shap/query.aspx/cDeleteLinq";
                 var data = {
                     ID : id
                 };
                 return $.ajax({
                     type: "POST",
                     url: _url,
                     contentType: "application/json; charset=utf-8",
                     dataType: "json",
                     data: "{data:'" + JSON.stringify(data).replace(/'/g, "\\'\\'") + "'}",
                     success: function (response) { boolDel = response.d; console.log(response.d, "data"); },
                     error: function (xhr, status, msg) {
                         var error = eval("(" + xhr.responseText + ")");
                         console.log(error.Message);
                         result = null;
                     }
                 });
             }


             function fncUpdate(data) {
                 var _url = "/connect_DB/c-shap/query.aspx/cUpdateLinq"; 
                 return $.ajax({
                     type: "POST",
                     url: _url,
                     contentType: "application/json; charset=utf-8",
                     dataType: "json",
                     data: "{data:'" + JSON.stringify(data).replace(/'/g, "\\'\\'") + "'}",
                     success: function (response) { boolUpdate = response.d; },
                     error: function (xhr, status, msg) {
                         var error = eval("(" + xhr.responseText + ")");
                         console.log(error.Message);
                         result = null;
                     }
                 });
             }

    </script>
</asp:Content>

