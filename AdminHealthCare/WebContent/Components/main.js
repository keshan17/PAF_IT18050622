//hide alert
$(document).ready(function() {

	$("#alertSuccess").hide();
	$("#alertError").hide();
});

$(document).on("click", "#submitusers", function(event) {
	// Clear alerts---------------------
	$("#alertSuccess").text("");
	$("#alertSuccess").hide();
	$("#alertError").text("");
	$("#alertError").hide();
	// Form validation-------------------
	var status = validateItemForm();
	if (status != true) {
		$("#alertError").text(status);
		$("#alertError").show();
		return;
	}
	// If valid------------------------
	var type = ($("#hidUsersIDSave").val() == "") ? "POST" : "PUT";

	$.ajax({
		url : "AdminAPI",
		type : type,
		data : $("#usersForm").serialize(),
		dataType : "text",
		complete : function(response, status) {
			onEmpSaveComplete(response.responseText, status);
		}
	});

});

function onEmpSaveComplete(response, status) {
	if (status == "success") {
		var resultSet = JSON.parse(response);
		if (resultSet.status.trim() == "successDOC") {
			$("#alertSuccess").text("Doctor Successfully saved.");
			$("#alertSuccess").show();
			$("#divDocGrid").html(resultSet.data);
			
		} 
		else if (resultSet.status.trim() == "successPATIENT") {
			$("#alertSuccess").text("Patient Successfully saved.");
			$("#alertSuccess").show();
			$("#divPatientGrid").html(resultSet.data);
		}
		else if (resultSet.status.trim() == "successHOSPITAl") {
			$("#alertSuccess").text("Hospital User Successfully saved.");
			$("#alertSuccess").show();
			$("#divHosUsersGrid").html(resultSet.data);
		}
		else if (resultSet.status.trim() == "error") {
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
		
	} else if (status == "error") {
		$("#alertError").text("Error while saving.");
		$("#alertError").show();
	} else {
		$("#alertError").text("Unknown error while saving..");
		$("#alertError").show();
	}
	$("#hidUsersIDSave").val("");
	$("#usersForm")[0].reset();
	 
}

$(document).on("click", ".btnRemove", function(event) {
	$.ajax({
		url : "AdminAPI",
		type : "DELETE",
		data : "did=" + $(this).data("docid"),
		dataType : "text",
		complete : function(response, status) {
			onDocDeleteComplete(response.responseText, status);
		}
	});
});


function onDocDeleteComplete(response, status) {
	if (status == "success") {
		var resultSet = JSON.parse(response);
		if (resultSet.status.trim() == "success") {
			$("#alertSuccess").text("Successfully deleted.");
			$("#alertSuccess").show();
			$("#divDocGrid").html(resultSet.data);
		} else if (resultSet.status.trim() == "error") {
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	} else if (status == "error") {
		$("#alertError").text("Error while deleting.");
		$("#alertError").show();
	} else {
		$("#alertError").text("Unknown error while deleting..");
		$("#alertError").show();
	}
}





// UPDATE==========================================
$(document).on("click",".btnUpdate",function(event)
		{
			$("#hidUsersIDSave").val($(this).closest("tr").find('#hidUserIDUpdate').val());
			$("#name").val($(this).closest("tr").find('td:eq(0)').text());
			$("#nic").val($(this).closest("tr").find('td:eq(1)').text());
			$("#email").val($(this).closest("tr").find('td:eq(2)').text());
			$("#pnumber").val($(this).closest("tr").find('td:eq(3)').text());
			$("#pwd").val($(this).closest("tr").find('td:eq(4)').text());
			 //$("#status").val($(this).closest("tr").find('td:eq(4)').text());
		});
// CLIENTMODEL=========================================================================
function validateItemForm() {
	
	//status
	if ($("#status").val() == "0")
	{
	return "Select type.";
	}
	// name
	if ($("#name").val().trim() == "") {
		return "Insert user name.";
	}
	// nic
	if ($("#nic").val().trim() == "") {
		return "Insert user NIC.";
	}
	// email-------------------------------
	if ($("#email").val().trim() == "") {
		return "Insert user email.";
	}
	//var reg= /^([A-Za-z0-9_\-\.])+\@(A-Za-z0-9_\-\
	// phone number-------------------------------
	if ($("#pnumber").val().trim() == "") {
		return "Insert user phonenumber.";
	}
	var tmpPrice = $("#pnumber").val().trim();
	if (!$.isNumeric(tmpPrice))
	 {
	 return "Insert a numerical value for Phone number";
	 } 

	// password-----------------------
	if ($("#pwd").val().trim() == "") {
		return "Insert user password.";
	}
	if ($("#status").val().trim() == "") {
		return "Insert user status.";
	}
	return true;
}
