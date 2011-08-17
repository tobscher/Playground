$(document).ready(function() {
    $(".check_all").live("click", function() {
       var b = ($(this).is(":checked"));

       ToggleAll(b);
    });

    $(".single_check").live("click", function() {
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

function Destroy(url)
{
    var data = $(':input[name="id[]"]').serializeArray();

    console.log(data);

    $.ajax({
        url: url,
        data: data,
        type: "post",
        success: function(result) {
            $(".list").html(result);
        },
        error: function(xhr, status, x)
        {
            console.log(xhr);
            console.log(status);
            console.log(x);
        }
    });
}