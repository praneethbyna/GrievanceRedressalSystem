<?php

@session_start();
if(!empty($_SESSION['rollno']))
{

require('header.php');
                    require_once("navbar.php");
                  ?>
             


<script type="text/javascript">
	document.getElementById('year').style.display="none";
	function checkyears()
	{
	var ptype=document.getElementById('ptype').value;
	console.log(ptype);
	if(ptype=="mca")
	{
		document.getElementById('3').disabled=false;
		document.getElementById('4').disabled=true;
	}
	else if(ptype=="btech")
	{
		document.getElementById('3').disabled=false;
		document.getElementById('4').disabled=false;
	}
	else if(ptype=="mtech")
	{
		document.getElementById('3').disabled=true;
		document.getElementById('4').disabled=true;
	}
}
</script>



<!-- Actual code -->
<div class="container">

<form action ="putgrievance.php" method="POST">
<br>
<div id="year" style="display:none">
<div class="row">
	<div class="col-md-3"></div>
	<div class="col-md-6">
		 <input type="hidden" id="ptype" class="form-control" name="program" value="-" required>
       
	</div>
	<div class="col-md-3"></div>
</div>
<br>
<div class="row">
	<div class="col-md-3"></div>
	<div class="col-md-6">
		<input type="hidden"  class="form-control" name="yos" value="-" required>
       

	</div>
	<div class="col-md-3"></div>
</div>
</div>
<br>
<div class="row">
	<div class="col-md-3"></div>
	<div class="col-md-6">
		<select class="form-control" name="gtype" required>
			<option value="academics">Academics</option>
			<option value="scholarships">Scholarships</option>
			<option value="examinations">Examinations</option>
			<option value="ragging">Ragging</option>
			<option value="boarding&lodging">Boarding & Lodging</option>
			<option value="others">Others</option>
		</select>
	</div>
	<div class="col-md-3"></div>
</div>
<br>
<div class="row">
	<div class="col-md-3"></div>
	<div class="col-md-6"><textarea class="form-control" name="complaint" rows="6" cols="50" placeholder="Enter your grievance in detail" required></textarea></div>
	<div class="col-md-3"></div>
</div>
<br>
<div class="row">
	<div class="col-md-3"></div>
	<div class="col-md-6"><input type="submit" value="SUBMIT" class="btn btn-primary"></div>
	<div class="col-md-3"></div>
</div>

</form>
</div>









</body>
</html>
<?php
}
	else {
  header('Location: loginForm.php');
}

