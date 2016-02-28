<%@ Page Title="" Language="C#" MasterPageFile="~/MS_MAIN.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpnHead" Runat="Server">
    	
		<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Signika+Negative:400,700' rel='stylesheet' type='text/css'>
		  
      
    <link href="../css/content.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpn_Content" Runat="Server">
     

	<section id="wrapper"> 
		<div class="row"> 
			<div class="col-sm-12">
				<section class="panel panel-default mail-container">
					<div class="panel-heading">
                        <strong>
                            <span class="fa fa-th"></span>
                          สินเชื่อ
                        </strong>
                    </div>
					<div class="panel-body"> 
						<div class="mail-content">
							<p>ค้นหาสินเชือ</p>
						</div> 

                        <div class="mail-attachments"> 
                            <div class="col-sm-12"> 
                                 <div class="form-group">
        	                        <label for="fun" class="col-sm-4 col-md-4 control-label text-right">ประเภทสินเชื่อ</label>
    		                        <div class="col-sm-7 col-md-7">
    			                        <div class="input-group">
    				                        <div id="radioBtn" class="btn-group">
    					                        <a class="btn btn-primary btn-sm active" data-toggle="fun" data-title="Y">บัตรเครดิต</a>
                                                <a class="btn btn-primary btn-sm notActive" data-toggle="fun" data-title="X">บัตรกดเงินสด</a>
    					                        <a class="btn btn-primary btn-sm notActive" data-toggle="fun" data-title="N">โอนหนี้</a>
    				                        </div>
    				                        <input type="hidden" name="fun" id="fun">
    			                        </div>
    		                        </div>
    	                        </div> 
                             </div>
                           </div>


						<div class="mail-attachments"> 
                            <div class="table-responsive">
							  <table class="table table-striped table-condensed table-hover table-bordered" style="font-size:12px;">
								<tbody>
									<tr>   
										<th align="left">Name </th>		
										<th align="left">KB </th>	
										<th align="left">Ext </th>	
										<th align="left">Type </th>	
										<th align="left">Date </th>	
									</tr>
									<tr>
									   <td align="left"><a href="http://localhost:8080/Bootstrap/blank-bootstrap-cdn.html">blank-bootstrap-cdn.html</a></td>
									   <td align="left">5K</td>
									   <td align="left">HTM</td>
									   <td align="left">HTML Document</td>
									   <td align="left">10/23/2012</td>
									</tr>
									<tr>
									   <td align="left"><a href="http://localhost:8080/Bootstrap/blank-bootstrap-tix-cdn.html">blank-bootstrap-tix-cdn.html</a></td>
									   <td align="left">5K</td>
									   <td align="left">HTM</td>
									   <td align="left">HTML Document</td>
									   <td align="left">6/26/2013</td>
									</tr>
								</tbody>
							</table>
							 </div>
						</div>  
					</div>
				</section>
			</div>
			
			 
			
		</div> 
	</section>
 

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpnfoot" Runat="Server">
    <script>
        $('#radioBtn a').on('click', function () {
            var sel = $(this).data('title');
            var tog = $(this).data('toggle');
            $('#' + tog).prop('value', sel);

            $('a[data-toggle="' + tog + '"]').not('[data-title="' + sel + '"]').removeClass('active').addClass('notActive');
            $('a[data-toggle="' + tog + '"][data-title="' + sel + '"]').removeClass('notActive').addClass('active');
        })
    </script>
</asp:Content>

