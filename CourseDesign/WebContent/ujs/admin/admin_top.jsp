<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css" />
		<style type="text/css">
				*{
					margin: 0px;
					padding: 0px;
				}
			#top_top{
				background-color: #24292E;
				height: 70px;
				
				}
				#left_{
					float:left;
					margin-left:100px;
				}
			#left{
					float: left;
					color: white;
					margin-left:30px;
					font-weight: bold;
				}
			#center{
					float: right;
					margin-top: 30px;
					margin-right: 30px;
					color: white;
				}
			#right{
					float: right;
					margin-top: 30px;
				}
			.label_{
				
				font-size: 16px;
				 margin-right: 40px;
				height: 40px; 
				line-height: 30px;
				letter-spacing: 1px;
				
			}
			#logout{
				margin-right: 30px;
				text-decoration: none;
		 		display: inline-block;
                margin-bottom: 5px;
                font-weight: bold;
                font-size: 16px;
                color: white;
			}
			#img1{
				width:100px;
			}
		</style>
	</head>
	<body>
		<div id="top_top">
			<div id="left">
				<h2>江苏大学课程设计管理系统</h2>
			</div>
			
			<div id="right">
				<a href="/CourseDesign/LogoutServlet" id="logout" target="_top">
			  	     退出
			    <img src="../img/Logout1.png" style="width: 30px;"/>
			  </a>
			</div>
			<div id="center">
				<label class="label_"  style="margin: 0px;">欢迎管理员:</label>
			    <label class="label_" >【${sessionScope.login_admin.man_name}】</label>
			</div>
		</div>
	</body>
</html>