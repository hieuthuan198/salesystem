<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<mt:admin_template title="Create Employee">
	<jsp:attribute name="content">
<script type="text/javascript">
	function show(input) {

		if (input.files && input.files[0]) {
			var filerdr = new FileReader();
			filerdr.onload = function(e) {
				$('#user_img').attr('src', e.target.result);
			}
			filerdr.readAsDataURL(input.files[0]);
		}
	}
	var check = function() {
		  if (document.getElementById('password').value == document.getElementById('re_password').value) {
		    document.getElementById('message').style.color = 'green';
		      document.getElementById('message').innerHTML = 'Matching';
		      document.getElementById('re_password').style.borderColor  = 'green';
		      return true;
		  } else {
		    document.getElementById('message').style.color = 'red';
		      document.getElementById('message').innerHTML = 'Not matching';
		      document.getElementById('re_password').style.borderColor  = 'red';
		      return false;
		  }
		}
</script>



<form method="post"
	action="${pageContext.request.contextPath}/admin?acction=create">
	<div class="container">
		<div class="row ">
			<div class="col-md-3"></div>
			<div class="col-md-5">

				<table class="table">

					<tr>
						<td>Username</td>
						<td><input name="username" type="text" value="${username}"
							class="form-control"></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input type="password" name="password" id="password"
							placeholder="password" maxlength="32" required
							class="form-control" onchange="check()" /></td>
					</tr>
					
					
					<tr>
						<td>Confirm</td>
						<td><input type="password" name="re_password" 
							id="re_password" placeholder="Confirm password" maxlength="32"
							required class="form-control" onchange="check()" /><span id="message"></span>
						
							
							</td>
					</tr>
					<tr>
					<td>Role</td>
					<td><select name="role" class="form-control">
					<c:forEach var="r" items="${roles }">
						<option ${role == r.id ? 'selected="selected"':'' } value="${r.id }">${r.name }</option>
					</c:forEach>
			</select></td>
					
					</tr>
					<tr>

						<td>Name</td>
						<td><input type="text" name="name" value="${name}"
							placeholder="Name Employee" required class="form-control" /></td>
					</tr>
					<tr>
						<td>Gender</td>
						<td><input type="radio" name="gender" 
							${gender == 'Male'?'checked="checked"':'' } value="Male"> Male
							<t>
							<input type="radio" name="gender" value="Female"
							${gender == 'Female'?'checked="checked"':'' }>Female</td>
					</tr>

					<tr>

						<td>Address</td>
						<td><input type="text" name="address" value="${address }"
							placeholder="Address" required class="form-control" /></td>
					</tr>
					<tr>

						<td>Phone</td>
						<td><input type="text" name="phone" id="phone"
							value="${phone }" placeholder="phone number" maxlength="15"
							required class="form-control" /></td>
					</tr>
					<tr>

						<td>Mail</td>
						<td><input type="email" name="mail" id="mail"
							value="${mail }" placeholder="Mail" maxlength="32" required
							class="form-control" /></td>
					</tr>
					<tr>

						<td>Birtday</td>
						<td><input type="date" name="birthday" placeholder="Birthday"
							value="${birthday }" required class="form-control" /></td>

					</tr>
					<tr>
						<td>image</td>
						<td><img id="user_img" height="50" width="50"
							title="Image Product" class="img-thumbnail border-1" /> <br>

							<input type="file" id="file" name="file" title="Image"
							onchange="show(this)" /></td>

					</tr>

					<tr>
						<td><input type="submit" value="Create Now" title="Create"
							class="btn btn-primary" /></td>
						<td><input type="reset" value="Reset" class="btn btn-primary"
							onclick="return confirm('Are you sure you wish to Reset ?')" /></td>
					</tr>
				</table>




			</div>

		</div>
		<div class="col-md-3"></div>
	</div>
</form>
</jsp:attribute>
</mt:admin_template>
