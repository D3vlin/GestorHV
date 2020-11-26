function addRowDTEmployee(data) {
    var table = $("#tblEmployees").DataTable();
    for (var i = 0; i < data.d.length; i++) {
        table.fnAddData([
            data.d[i].Identification,
            data.d[i].Names,
            data.d[i].Email,
            data.d[i].Profession
        ]);
    }
}

function sendDataAjaxEmployee() {
    $.ajax({
        type: "POST",
        url: "GeneralPanelAdmin.aspx/EmployeeList",
        data: {},
        contentType: "application/json; charset=utf-8",
        error: function (xhr, ajaxOptions, thrownError) {
            console.log(xhr.status + " \n" + xhr.responseText, "\n" + thrownError);
        },
        success: function (data) {
            addRowDTEmployee(data);
        }
    })
}

function addRowDTSponsor(data) {
    var table = $("#tblSponsors").DataTable();
    for (var i = 0; i < data.d.length; i++) {
        table.fnAddData([
            data.d[i].Nit,
            data.d[i].Names,
            data.d[i].Address
        ]);
    }
}

function sendDataAjaxSponsor() {
    $.ajax({
        type: "POST",
        url: "GeneralPanelAdmin.aspx/SponsorList",
        data: {},
        contentType: "application/json; charset=utf-8",
        error: function (xhr, ajaxOptions, thrownError) {
            console.log(xhr.status + " \n" + xhr.responseText, "\n" + thrownError);
        },
        success: function (data) {
            addRowDTSponsor(data);
        }
    })
}

function getLists() {
    sendDataAjaxSponsor();
    sendDataAjaxEmployee();
}

getLists()