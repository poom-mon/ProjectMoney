<%@ Page Title="" Language="C#" MasterPageFile="~/MS_MAIN.master" AutoEventWireup="true" CodeFile="detail.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpnHead" Runat="Server">
    	
		<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Signika+Negative:400,700' rel='stylesheet' type='text/css'>
		  
      
    <link href="../css/content.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpn_Content" Runat="Server">
     

	<section id="wrapper">

		<div class="row">

			<div class="col-sm-9">
				<section class="panel panel-default mail-container">
					<div class="panel-heading">
                        <strong>
                            <span class="fa fa-th"></span>
                            View Article
                        </strong>
                    </div>
					<div class="panel-body">
						<div class="mail-header row">
							<div class="col-md-8">
								<h3>Article Information Title</h3>
							</div>
							<div class="col-md-4">
								<div class="pull-right">
									<a href="#/mail/compose" class="btn btn-sm btn-default">Menu <i class="fa fa-th"></i></a>
								</div>
							</div>
						</div>
						<div class="mail-info">
							<div class="row">
								<div class="col-md-8">
									<ul class="list-unstyled list-inline">
										<li><i class="fa fa-calendar-o"></i>8/28/2013</li>
										<li><i class="fa fa-user"></i>Sergio Rodriguez</li>
										<li><i class="fa fa-book"></i><a href="http://localhost:8080/Utilities/xmlKnowledgeBase23/index.asp?displayCategory=yes&id=Gateway">Gateway</a></li>
										<li><i class="fa fa-star"></i>33 views </li>
									</ul>
								</div>
							</div>
						</div>
						<div class="mail-content">
							<p>Quo, animi, reprehenderit, dolorem obcaecati reiciendis quasi accusamus totam alias sapiente sint tempore quam adipisci temporibus unde odit eveniet eum molestias! Esse, hic ut maxime animi et! Dolores, cum libero pariatur facere nesciunt tempore. Expedita, vel, ut illo magni quis suscipit nisi deserunt enim eaque veniam.</p>
							<blockquote>Ipsum dolor sit amet, consectetur adipisicing elit. Doloremque, error, nulla, quia, neque est animi necessitatibus qui vero beatae quae ut laudantium facere consequuntur maiores cupiditate amet vitae magni nihil!<small>Someone famous</small></blockquote>
							<p>Officiis, tempore, unde, sint in ut neque alias ad est ex fugit odio nobis nemo dolorem aperiam labore ipsam sapiente optio nostrum perferendis ab. Molestias, </p>
							<p>sit, dolorem consequuntur vel quibusdam illum veniam veritatis vitae blanditiis officiis ducimus voluptatibus omnis cum quae tempore porro reiciendis animi dignissimos optio rem laborum eius magnam. Esse, accusantium quia deleniti fugiat commodi architecto itaque nulla in. Consequatur beatae non explicabo in qui aspernatur deleniti quas doloribus!</p>
							<p>Aperiam, veniam, quae temporibus ratione suscipit accusantium provident amet deserunt natus veritatis ipsa error accusamus saepe debitis quisquam labore facilis magnam impedit minus explicabo quidem dicta ipsam nam velit quasi esse ad culpa sequi dolorum eaque. Iste exercitationem facilis nemo aut quae! Sit?</p>
						</div>
						
						<div class="mail-attachments">
							<ul class="list-unstyled list-inline">
								<li><i class="fa fa-paperclip"></i></li>
								<li>2 attachements</li>
							</ul>
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
							<ul class="list-unstyled list-inline">
								<li><i class="fa fa-cloud-download"></i></li>
								<li>Download all attachements</li>
							</ul>
						</div>
						<div class="mail-actions">
							<ul class="list-unstyled list-inline">
								<li><i class="fa fa-tags"></i></li>
								<li><span class="label label-default">Technology</span></a></li>
								<li><span class="label label-default">Technology</span></a></li>
								<li><span class="label label-default">Technology</span></a></li>
								<li><span class="label label-default">Technology</span></a></li>
							</ul>
						</div>
						
					</div>
				</section>
			</div>
			
			<div class="col-sm-3">
            
				<section class="panel panel-default mail-categories">
                
					<div class="panel-heading"><strong><span class="fa fa-th"></span> 
                    View Article</strong>
                    </div>
		
					<ul class="list-group">
                        <li class="list-group-item">
                        <a href="javascript:;">
							<i class="fa fa-plus-square"></i> New
						</a>   
						</li>
                        <li class="list-group-item"><a href="javascript:;">
							<i class="fa fa-edit"></i> Edit
						</a></li>
						<li class="list-group-item"><a href="javascript:;">
							<i class="fa fa-trash-o"></i> Delete
						</a></li>
						<li class="list-group-item"><a href="javascript:;">
							<i class="fa fa-envelope-o"></i> Email
						</a></li>
						<li class="list-group-item"><a href="javascript:;">
							<i class="fa fa-print"></i> Print
						</a></li>

					</ul>
				</section>
     
			</div>
			
		</div>

	</section>
 

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpnfoot" Runat="Server">
</asp:Content>

