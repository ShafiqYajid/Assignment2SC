<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 ">
			<div class="panel panel-primary">
				<div class="panel-heading">Add TODO</div>
				<div class="panel-body">
					<form:form method="post" modelAttribute="todo">
						<form:hidden path="id" />
						<fieldset class="form-group">
							<form:label path="description">Description</form:label>
							<form:input path="description" type="text" class="form-control"
								required="required" />
							<form:errors path="description" cssClass="text-warning" />
						</fieldset>

						<fieldset class="form-group">
							<form:label path="targetDate">Date</form:label>
							<form:input path="targetDate" type="text" class="form-control"
								required="required" />
							<form:errors path="targetDate" cssClass="text-warning" />
						</fieldset>

						<button type="submit" class="btn btn-success">Save</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script
	src="webjars/bootstrap-datepicker/1.0.1/js/bootstrap-datepicker.js"></script>
<script>
	$('#targetDate').datepicker({
		format : 'dd/mm/yyyy'
	});
</script>
