// We need to import the CSS so that webpack will load it.
// The MiniCssExtractPlugin is used to separate it out into
// its own CSS file.
import css from "../css/app.scss"

// webpack automatically bundles all modules in your
// entry points. Those entry points can be configured
// in "webpack.config.js".
//
// Import dependencies
//
import "phoenix_html";
import jQuery from 'jquery';
window.jQuery = window.$ = jQuery; // Bootstrap requires a global "$" object.
import "bootstrap";

// Import local files
//
// Local files can be imported directly using relative
// paths "./socket" or full ones "web/static/js/socket".

// import socket from "./socket"

window.addTimeBlock = (ev) => {
    let task_id = $(ev).data('task-id');
    let start_time = $("#addnew-timeblock").val;
    let end_time = $("endnew-timeblock").val;

    //Check not empty
    if (start_time != "" && end_time != "") {
        let text = JSON.stringify({
            timeblock: {
                task_id: task_id,
                start_time: new Date(start_time),
                end_time: new Date(end_time),
            },
        });

        $.ajax("/ajax/timeblocks", {
            method: "post",
            dataType: "json",
            contentType: "application/json; charset=UTF-8",
            data: text,
            success: (resp) => {
                location.reload();
            },
        });

    } else {
        location.reload();
    }
}