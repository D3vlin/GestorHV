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

function addRowDTVacancy(data) {
    var table = $("#tblVacancies").DataTable();
    for (var i = 0; i < data.d.length; i++) {
        table.fnAddData([
            data.d[i].Position,
            data.d[i].Contract,
            data.d[i].Salary,
            data.d[i].Experience
        ]);
    }
}

function sendDataAjaxVacancy() {
    $.ajax({
        type: "POST",
        url: "GeneralPanelCompany.aspx/VacanciesList",
        data: {},
        contentType: "application/json; charset=utf-8",
        error: function (xhr, ajaxOptions, thrownError) {
            console.log(xhr.status + " \n" + xhr.responseText, "\n" + thrownError);
        },
        success: function (data) {
            addRowDTVacancy(data);
        }
    })
}

function getLists() {
    sendDataAjaxVacancy();
    sendDataAjaxEmployee();
}

getLists()