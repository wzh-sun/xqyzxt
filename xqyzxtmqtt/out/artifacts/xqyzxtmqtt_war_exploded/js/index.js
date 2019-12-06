$(function () {
    $(".action li").on("click", function () {
        $(this).addClass("actiones").siblings().removeClass("actiones");
        var idx = $(this).index();
        $(".date").eq(idx).addClass("select").siblings().removeClass("select");

    });
});