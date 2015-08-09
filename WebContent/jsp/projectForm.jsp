<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Project</title>
<style type="text/css">
select, input {
	background-color: initial;
}
</style>
</head>
<body>
	<div style="margin: auto; width: 400px; text-align: center;">
		<form id="projectFormId" action="project.do?req=${reqCode}" method="post">
		<input id="idid" type="hidden" name="id" value="<bean:write name="projectVO"  property="id"/>" />
		<a href="javascript:void(0);" id="submitButton">Submit</a>
			<table width="100%">
				<tbody>
					<tr>
						<th>Name</th>
						<td><input id="nameid" class="required" type="text" name="name" 
							value="<bean:write name="projectVO"  property="name"/>" /></td>
					</tr>
					<tr>
						<th>Location</th>
						<td><input id="locationid" class="required" type="text" name="location"
							value="<bean:write name="projectVO"  property="location"/>" /></td>
					</tr>
					<tr>
						<th>Price</th>
						<td><input id="priceid" class="required money" type="text" name="price"
							value="<bean:write name="projectVO"  property="price"/>" /></td>
					</tr>
					<tr>
						<th>Rating</th>
						<td><select id="ratingid" class="required" name="rating" >
								<option value="">select</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
						</select></td>
					</tr>
					<tr>
						<th>Category</th>
						<td><select id="categoryid" class="required" name="categoryStr" >
								<option value="">select</option>
								<option value="Buy">Buy</option>
								<option value="Sell">Sell</option>
						</select></td>
					</tr>
					<tr>
						<th>Sub-Category</th>
						<td><select id="subCategoryid" class="required" name="subCategoryStr" >
								<option value="">select</option>
								<option value="Plot">Plot</option>
								<option value="Flat">Flat</option>
								<option value="Commercial">Commercial</option>
						</select></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			
			$("#subCategoryid").val('<bean:write name="projectVO"  property="subCategory"/>');
			var rst = '<bean:write name="projectVO"  property="rating"/>';
			if(rst!='0'){
				$("#ratingid").val(rst);
			}
			$("#categoryid").val('<bean:write name="projectVO"  property="category"/>');
			
			$("#submitButton").click(function(){
				var errors = [];
				var reqs = $("#projectFormId").find(".required").get();
				$(reqs).css({"background-color":"initial"});
				for(var i in reqs){
					console.log(reqs[i]);
					if($(reqs[i]).val()==""){
						errors.push(reqs[i]);
					}
				}
				
				if(errors.length > 0){
					$(errors).css({"background-color":"red"});
					alert("Please Fill the form correctly");
				}else{
					$("#projectFormId").submit();
				}
				
			});
			
			$(".money").blur(function() {
			    var price = $(this).val();
			    if(""!=price){
			    	var validatePrice = function(price) {
					      return /^(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(price);
					    }
					    if(!validatePrice(price)){
					    	alert(this.value+" in not a correct price value");
					    	$(this).select();
					    }	
			    }
			    
			});
			
		});
	</script>
</body>
</html>