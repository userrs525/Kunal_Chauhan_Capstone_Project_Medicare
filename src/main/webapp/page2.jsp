<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%
    	String msg=request.getParameter("msg");
    	//System.out.println(msg);
    	HttpSession ses1=request.getSession();
		String name=(String)ses1.getAttribute("username");
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="/Medicare/resources/CSS/style.css" rel="stylesheet" type="text/css">
<title>Item search</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet"> 
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
#filter
{
	padding:10px 20px;border-right:solid 1px;
}
#sort
{
	padding:0 1% 10% 50%;
}
#searchbar
{
	width:100%;
	padding:2%;
}
.form-inline
{
	padding:0px;
}
@media only screen and (max-width:700px)
{
	#filter{
		padding:1% 10%;border:none;
	}
	#sort
	{
		padding:5% 10%;
		justify-content:center;
	}
}
</style>
</head>
<body>
	<div>
		<div id="navbar" class="row">
				<a href="userhome.jsp?msg=<%=name %>"  class="col-2" style="text-decoration:none;color:black;"><div id="logo">Medicare</div></a>
				<div class="col-9" id="searchcontainer">
					<form action="page2" method="post" class="form-inline">
					<input placeholder="search" type="search" name="search" id="searchbar" class="form-control"  style="display:inline-block; ">
					<button type="submit" class="btn" style="display:inline-block;padding-top:5px "><i class="fa fa-search"></i></button>
					</form>
				</div>
				<div class="col-1">
				<a href="kart.jsp"><button class="btn" id="kart"><i class="fa fa-cart-plus"></i></button></a>
				</div>
		</div>
		<div class="row" style="margin:0px;">
			<div class="col-lg-4 col-sm-12" id="filter">
			
					
			<div class="accordion accordion-flush" id="accordionFlushExample">
		
  				<div class="accordion-item">
    				<h2 class="accordion-header" id="flush-headingOne">
      				<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
        				Products
      				</button>
    				</h2>
    				<div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
      					<div class="accordion-body">
      							
						  <span><form action="filter" method="post" style="display:inline-block;padding:5px 0px 0px 0px;"><input class="btn btn-outline-secondary" type="submit" name="checkbox" value="Haircare"></form>
      							<form action="filter" method="post" style="display:inline-block;padding:5px 0px 0px 0px;"><input class="btn btn-outline-secondary" type="submit" name="checkbox" value="Skincare"></form>
      							<form action="filter" method="post" style="display:inline-block;padding:5px 0px 0px 0px;"><input class="btn btn-outline-secondary" type="submit" name="checkbox" value="Facecare"></form>
      							<form action="filter" method="post" style="display:inline-block;padding:5px 0px 0px 0px;"><input class="btn btn-outline-secondary" type="submit" name="checkbox" value="Bodycare"></form>
      					  </span>	     							
      					</div>
  					</div>
  				</div>	
  				<div class="accordion-item">
    				<h2 class="accordion-header" id="flush-headingTwo">
      				<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
        			Brand
      				</button>
    				</h2>
    				<div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
      					<div class="accordion-body">
      					  <span><form action="filter" method="post" style="display:inline-block;padding:5px 0px 0px 0px;"><input class="btn btn-outline-secondary" type="submit" name="checkbox" value="Hindusthan Industries"></form>
      							<form action="filter" method="post" style="display:inline-block;padding:5px 0px 0px 0px;"><input class="btn btn-outline-secondary" type="submit" name="checkbox" value="Doctor dc"></form>
      							<form action="filter" method="post" style="display:inline-block;padding:5px 0px 0px 0px;"><input class="btn btn-outline-secondary" type="submit" name="checkbox" value="Beauty Corp"></form>
      							<form action="filter" method="post" style="display:inline-block;padding:5px 0px 0px 0px;"><input class="btn btn-outline-secondary" type="submit" name="checkbox" value="Loral India"></form>	
      					</span>
      					</div>
  					</div>
  				</div>	
  				<div class="accordion-item">
    				<h2 class="accordion-header" id="flush-headingThree">
      				<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
        			Category
      				</button>
    				</h2>
    				<div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
      					<div class="accordion-body">
      					  <span><form action="filter" method="post" style="display:inline-block;padding:5px 0px 0px 0px;"><input class="btn btn-outline-secondary" type="submit" name="checkbox" value="Medicines"></form>
      							<form action="filter" method="post" style="display:inline-block;padding:5px 0px 0px 0px;"><input class="btn btn-outline-secondary" type="submit" name="checkbox" value="Healthcare"></form>
      							<form action="filter" method="post" style="display:inline-block;padding:5px 0px 0px 0px;"><input class="btn btn-outline-secondary" type="submit" name="checkbox" value="Fitness"></form>
      							<form action="filter" method="post" style="display:inline-block;padding:5px 0px 0px 0px;"><input class="btn btn-outline-secondary" type="submit" name="checkbox" value="Beautycare"></form>
						 </span>	
						</div>
  					</div>
  				</div>	
			</div>
	
					
			</div>
			<div class="col-lg-8 col-sm-12" id="itemlist">
				<div id="sort">Sort By : 
				<span>
				<form action="sort" method="post" style="display:inline-block;padding:0px 10px;"><input type="submit" class="btn btn-danger" name="sort" value="Price"></form>
				<form action="sort" method="post" style="display:inline-block;padding:0px 10px;"><input type="submit" name="sort" value="Category" class="btn btn-danger"></form>
				<form action="sort" method="post" style="display:inline-block;padding:0px 10px;"><input type="submit" value="Id" name="sort" class="btn btn-danger"></form>
				</span>
				</div>
					<%
						int count=0;
						Class.forName("com.mysql.jdbc.Driver");
						Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/medicare","root","rootraja");
						Statement st=con.createStatement();
						ResultSet rs;
						if(msg==null || msg=="" || msg==" ")
						{
							 rs=st.executeQuery("select * from product_table where Status='enable'");
						}
						else if(msg.equals("Price") || msg.equals("Id") || msg.equals("Category"))
						{
							 rs=st.executeQuery("select * from product_table where Status='enable' order by "+msg+" ASC");
							
						}
						else
						{
							 rs=st.executeQuery("select * from product_table where Status='enable' and (ProductName='"+msg+"' or Category='"+msg+"' or ProductType='"+msg+"' or Brand='"+msg+"')");
						}
						while(rs.next()){
								count++;
								
					%>
					<a href="page3.jsp?msg=<%=rs.getString("ProductName") %>" style="text-decoration:none;color:black;">
					<div id="item" class="row" style="margin:0px;padding:20px 20px;">
						<div class="col-md-4 col-sm-6 imgcontainer" style="background-image:url('/Medicare/resources/IMG/<%=rs.getString("ImgName") %>');background-size:cover;background-repeat:no-repeat;background-position:center;">
						</div>
						<div class="col-md-8 col-sm-6" id="content"  style="padding:20px 40px;">
							<div class="" style="font-family:'Montserrat',sans-serif;"><%=rs.getString("ProductName") %></div>
							<span><%=rs.getString("Brand") %>(<%=rs.getString("ProductType") %>)</span>
							<div>Category: <%=rs.getString("Category") %></div>
							<p>Description:<br><%=rs.getString("Description") %>
							
							<div id="order" style="padding:10px; font-family:'Montserrat',sans-serif; border-radius:5px; width:100px;">Price: <%=rs.getString("Price") %></div>
						</div>			
						
					</div></a>
						
						<%}
						//System.out.println(count);
					%>
					</div>					
			</div>
</div>			

	<script>
	count();
		function count(){
			var count=<%=count%>
			if(count==0){
			var list=document.getElementById('itemlist');
			list.innerHTML='Data Not Found!';
			list.style.textAlign='center';
			list.style.fontFamily='Montserrat',sans-serif;
			}
		}
	</script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>