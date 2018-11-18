$(function() {
    $('#nolike').click(function() {

        $.ajax({
            url:'/likes/1/destroy',
            type:'POST'
        })
        .done( (data) => {
            console.log(data);
            $('#nolike span:first').attr('class', 'far fa-heart like-btn');
            $('#nolike').attr('id', 'like');
        })
        .fail( (data) => {
            console.log(data);
        })
    })
    $('#like').click(function() {
        var url = '/likes/1/destroy';
        if ($('#heart').hasClass("far")) {
            console.log('like');
            url = '/likes/1/create';
        }
        $.ajax({
            url: url,
            type:'POST'
        })
        .done( (data) => {
            console.log(data);
            if ($('#heart').hasClass("far")) {
                $('#heart').attr('class', 'fa fa-heart like-btn');
            } else {
                $('#heart').attr('class', 'far fa-heart like-btn');
            }
        })
        .fail( (data) => {
            console.log(data);
        })
    })
})