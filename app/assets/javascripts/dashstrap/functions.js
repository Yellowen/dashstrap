function show_flash_message(msg, klass) {
    var icon = "";

    if (klass == "success") {
        icon = "check";
    }
    else if (klass == "error") {
        icon = "ban";
        klass = 'danger';
    }
    else if (klass == 'warning') {
        icon = 'warning';
    }
    else if (klass == 'info') {
        icon = 'info';
    }

    $("#flash-alert").removeClass().addClass("alert alert-dismissable alert-" + klass);
    $("#flash-icon").removeClass().addClass("fa fa-" + icon);
    $("#flash-msg").html(msg);
    $("#flash-alert").fadeIn(700).delay(5000).fadeOut(500);
}


function hide_flash() {
    $("#flash-alert").hide();
}
