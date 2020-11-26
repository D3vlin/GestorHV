function addRowDT(data) {
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

function sendDataAjax() {
    $.ajax({
        type: "POST",
        url: "GeneralPanelEmployee.aspx/AllVacanciesList",
        data: {},
        contentType: "application/json; charset=utf-8",
        error: function (xhr, ajaxOptions, thrownError) {
            console.log(xhr.status + " \n" + xhr.responseText, "\n" + thrownError);
        },
        success: function (data) {
            addRowDT(data);
        }
    })
}

sendDataAjax();