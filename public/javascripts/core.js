$(document).ready(function() {
    $(".check_all").click(function() {
       var b = ($(this).is(":checked"));

       ToggleAll(b);
    });

    $(".single_check").click(function() {
        if (AllChecked())
        {
            $(".check_all").attr("checked", "checked");
        }
        else
        {
            $(".check_all").removeAttr("checked");
        }
    });
});

function ToggleAll(state)
{
    $(".single_check").each(function() {
        if (state)
        {
            $(this).attr("checked", "checked");
        }
        else
        {
            $(this).removeAttr("checked");
        }
    });
}

function IsAnyChecked()
{
    var result = false;
    $(".single_check").each(function () {

        if (result) return;

        var b = ($(this).is(":checked"));

        if (b) result = true;
    });

    return result;
}

function AllChecked()
{
    var result = true;
    $(".single_check").each(function () {

        if (!result) return;

        var b = ($(this).is(":checked"));

        if (!b) result = false;
    });

    return result;
}