function onBlur() {
    updateOrderSummary();
}
function updateOrderSummary(){
    console.log("a");
    var subtotal = 0;
    var tax = 0;
    var total = 0;
    var noOrderInputList = document.getElementsByClassName("noOrderInput");
    noOrderInputList = [].slice.call(noOrderInputList);
    noOrderInputList.forEach(function (noOrderInput) {
        var price = noOrderInput.getAttribute("data-price");
        var noOrder = noOrderInput.value;
        console.log(noOrder);
        subtotal += price * noOrder;
        tax = subtotal * 0.0825;
        total = subtotal + tax;
    });

    subtotal = subtotal.toFixed(2);
    tax = tax.toFixed(2);
    total = total.toFixed(2);

    document.getElementById("Content_SubtotalLabel").innerHTML = "Subtotal $" + subtotal;
    document.getElementById("Content_TaxLabel").innerHTML = "Tax $" + tax;
    document.getElementById("Content_TotalLabel").innerHTML = "Total $" + total;
}
function allowOnlyNumber(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode == 13) {
        updateOrderSummary();
        return false;
    }
    else if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    else
        return true;
}
