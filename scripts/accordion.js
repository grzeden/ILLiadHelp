// requires jquery and jqueryui

$(document).ready(function () {
    "use strict";
    $("ul.accordion").accordion({
        collapsible: true,
        active: false,
        heightStyle: "content",
        clearStyle: false,
        header: "> li > a.accordion-button"
    });
});