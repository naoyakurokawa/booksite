$(function() {
    $('#like').click(function() {
        var postId = gon.post_id
        console.log(postId)
        var url = '/likes/' + postId + '/destroy';
        if ($('#heart').hasClass("far")) {
            console.log('like');
            url = '/likes/' + postId + '/create';
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
            $("#likecount").html(data.like_count)
        })
        .fail( (data) => {
            console.log(data);
        })
    })
})