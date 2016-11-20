

$(document).ready(function () {
    var counter = 0;
    alert("hola");
    
    $("#addrow").on("click", function () {
        var newRow = $("<tr>");
        var cols = "";

        cols += '<td><input type="text" class="form-control" name="Sigla' + counter + '"/></td>';
        cols += '<td><input type="text" class="form-control" name="Numero' + counter + '"/></td>';
        cols += '<td><input type="text" class="form-control" name="Marchamo' + counter + '"/></td>';
        cols += '<td><input type="text" class="form-control" name="Temperatura' + counter + '"/></td>';
        cols += '<td><select class="form-control" name="Cant_Ejes"><option>--Seleccione--</option> <option> 2 Ejes </option> <option> 3 Ejes </option> </select ' + counter + '></td>';

        cols += '<td><input type="button" class="ibtnDel btn btn-md btn-danger "  value="Delete"></td>';
        newRow.append(cols);
        $("table.order-list").append(newRow);
        counter++;
    });



    $("table.order-list").on("click", ".ibtnDel", function (event) {
        $(this).closest("tr").remove();       
        counter -= 1
    });


});