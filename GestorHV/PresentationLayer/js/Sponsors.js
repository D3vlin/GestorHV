function addRowDT(data) {
    var table = $("#tblSponsors").DataTable();
    for (var i = 0; i < data.d.length; i++) {
        table.fnAddData([
            data.d[i].Nit,
            data.d[i].Names,
            data.d[i].Address
        ]);
    }
}

function sendDataAjax() {
    $.ajax({
        type: "POST",
        url: "GeneralPanelAdmin.aspx/SponsorList",
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