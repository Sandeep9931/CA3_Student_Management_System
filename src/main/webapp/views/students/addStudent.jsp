<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New | Student Management System</title>
</head>
<body>
	<div class="container pb-5 p-3 mb-2 bg-info opacity-10 text-white ">
		<h3 class="text-center">Add A New Student</h3>
		<form class="form" method="POST" action="students">
			<div class="form-group">
				<label for="name">Name</label>
				<input type="text" name="name" id="name" class="form-control" placeholder="Your name" required/>
			</div>
			<div class="form-group">
				<label for="email">Address</label>
				<input type="text" name="address" id="address" class="form-control" placeholder="Your address" required/>
			</div>
			<div class="form-group">
				<label for="country">Country</label>
				<select name="country" id="country" class="form-control" required>
					<option>Nepal</option>
					<option>USA</option>
					<option>Canada</option>
					<option>Australia</option>
					<option>India</option>
					<option>Belgium</option>
				</select>
			</div>
			<div class="form-group">
				<p>Gender</p>
				<div class="form-check ">
					<input class="form-check-input" type="radio" name="gender" id="femaleRadioBtn" value="Female" checked />
					<label class="form-check-label" for="femaleRadioBtn">Female</label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="gender" id="maleRadioBtn" value="Male" />
					<label class="form-check-label" for="maleRadioBtn">Male</label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="gender" id="otherRadioBtn" value="Other" >
					<label class="form-check-label" for="otherRadioBtn">Other / Rather not specify</label>
				</div>
			</div>
			
			<div class="form-group" >
				<p>Hobbies</p>
				<div class="form-check">
					<input class="form-check-input" type="checkbox" name="hobbies" id="swimmingCheckBox" value="Swimming" />
					<label class="form-check-label" for="swimmingCheckBox">Swimming</label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="checkbox" name="hobbies" id="singingCheckBox" value="Singing" />
					<label class="form-check-label" for="singingCheckBox">Singing</label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="checkbox" name="hobbies" id="dancingCheckBox" value="Dancing" />
					<label class="form-check-label" for="dancingCheckBox">Dancing</label>
				</div>
			</div>
			
			<div class="form-group" >
				<p>Preferred Languages</p>
				<div class="" >
					<select class="languages-multiple-select" multiple="multiple" name="languages" style="width: 100%" required>
						<option value="C">C</option>
						<option value="Rust">Rust</option>
						<option value="Java">Java</option>
						<option value="Python">Python</option>
						<option value="C#">C#</option>
					</select>
				</div>
			</div>
			
			<input type="submit" value="Add Student" class="btn btn-primary col-mid-1 text-center" /> <br />
		</form>
	</div>
	
	<script>
		$(document).ready(function() {
		    $(".languages-multiple-select").select2({
			    placeholder: "Select the preferred languages",
				width: "resolve"
			})
		});
	</script>
</body>
</html>