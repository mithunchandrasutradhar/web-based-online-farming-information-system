<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="css/index.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<title>কৃষি বিষয়ক তথ্য </title>
	

</head>

    <body> 

				<div id="wrapper">
					<section id="showcase" >
						  <div id="header">
						  <h1>কৃষি সহযোগিতা</h1>
						 
						  </div>
						   
				    </section>
		        </div> 
		  <!-----------------------------Menubar------------------------->
		  
		 <div id="menubar">
			
			   

			<div id="menu">

				

			</div>
		   
		</div>

			<div id="wrapper">
				<section id="showcase1" >
				 
					<div class="container">
					</div>   
			    </section>
		    </div> 


				
				
			
				
				<!-----------------------------left-------------------------->
				
			<div id="content">
				
					<div id="left-panel">
							<div id="login">
						  
								 <div id="logmenu">
								 
								 </div>
						    </div>
						
						    <div id="subpanel">
								<div id="logmenu2">
									<ul>
									 <li> <a href="index.php">লগ আউট</a></li>
									 </ul>
								</div>

						    </div>

						<div id="story">
							  <div class="donor"><center><b><h3>কৃষি অফিসার</b></h3></center>
								  <p><strong>নাম </strong><br> সোহেল রানা <br>
								  <strong>মোবাইল নং</strong><br> +৮৮০১৭৩৯৯০৯৮১৯<br>
								  <strong>বার্তা </strong></p>
								   <p>পরিশ্রম সৌভাগ্যের প্রসূতি </p> 
								   <p><center><a href="#">See All</a></center></p>
							  </div>
							  <img src="css/hand.jpg" width="100%" height="290"></img>
							  <img src="css/images2.jpg" width="100%" height="290"></img>
							  <img src="css/imagesahjhgfdsashjhgfdsdfg.jpg" width="100%" height="190"></img>
						  
						</div>
						

					</div>
					<!-----------------------------right------------------------->
					<div id="right-panel">
						<aside id="news">


							 <div class="dark">
								<br>
								<br>
								<br>
								<br>
								<br>
								<p><b><h2>Add Bar</h2></b></p>
						  
				  
						    </div>

				   
						</aside>
						<div	class ="notice">
							<p>
							<marquee><strong><br><br>নোটিশ বোর্ড</br></br> </strong></marquee>
							</p>
							
						</div>
						  <img src="css/download1.jpg" width="100%" height="290"></img>
						  <img src="css/maxresdefault.jpg" width="100%" height="290"></img>
						  <img src="css/0114.jpg" width="100%" height="155"></img>
			  

					
					</div>
		<!-----------------------------Middle----------------------------->
			    <div id="right-section">
				 <?php
					mysql_connect('localhost','root','');
					mysql_select_db('farmar');
					
					$sql="SELECT * FROM problem";
					$records=mysql_query($sql);
					?>
					<table style="width:800px" border="1" cellpading="1" cellspacing="5">
					<tr>
					<th>ক্রমিক নং</th>
					<th>ছবি</th>
					<th>সমস্যা সম্পর্কিত</th>
					<th>ই-মেইল</th>
					<th>সমাধান</th>
					<th>Remove</th>
					
					<?php
					$no=1;
					while($problem=mysql_fetch_assoc($records)){
						echo "<tr>";
						echo "<td>".$no."</td>";
						echo "<td>".$problem['file']."</td>";
						echo "<td>".$problem['text']."</td>";
						echo "<td>".$problem['email']."</td>";
						echo "<td><a href=problemsubmit.php?id=".$problem['id'].">সমাধান</a></td>";
						echo "<td><a href=problemremoveprocess.php?id=".$problem['id'].">Remove</a></td>";
						$no++;
					}
					?>
					</table>
					
				</div>
		    </div>
		  <!-----------------------------Footer----------------------------->
			<div id="footer">
			  <div id="footerpart">

					<div id="footermenu">

					  <h1><i class="fa fa-tint" style="font-size:38px;color:#ff0000"></i> কৃষি সহযোগিতা </h1>
					</div>
					<div id="menubody">
					  <h3 margin-top="10px">কৃষি সহযোগিতা একটি অনলাইন ওয়েবসাইট। এটি কৃষকদের বিভিন্ন ফসল এবং মৎস্য চাষের বিভিন্ন ধরনের সমস্যার সমাধান দিয়ে থাকে।</h3>
					</div>
			  </div>

			  

			  <div id="midpart">
					<div id="two">
					   <h2>যোগাযোগ </h2>
					   <h3>sorayaalo01791@gmail.com</h3><h3>Mobile: (+880)1791 839 563</h3>
					</div>
			  </div>

			  

			  <div id="subfooter">
				<h3><i class="fa fa-copyright" style="font-size:18px;color:red"></i> copyright  2019-2020. All Rights Reserved</h3>
			  </div>
			</div>



    </body>

</html>