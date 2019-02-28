$(document).ready(function() {
    $('#linkForm').submit(function(event) {
        var expression = /[-a-zA-Z0-9@:%_\+.~#?&//=]{2,256}\.[a-z]{2,4}\b(\/[-a-zA-Z0-9@:%_\+.~#?&//=]*)?/gi;
        var regex = new RegExp(expression);
        event.preventDefault();
        var data = $('#linkForm').serialize();
        //alert(data);
        var link = $('#linkBox').val();
        if (link == "" || link == null) {
            $('#error').removeClass('hide');
            $('#error').html(`
            <div class="alert alert-dismissible alert-danger">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
                        <p>Url can't be Empty</p>
          </div>
            `);
            return false;
        } else if (link.match(regex)) {
            $('#error').addClass('hide');
            $.ajax({
                type: 'POST',
                url: './view/SubmitData.php',
                data: data,
                beforeSend: function() {
                    $('#linkBtn').html('<span><i class="fa fa-spinner" aria-hidden="true"></i> loading....</span>');
                },
                success: function(response) {

                    $('#linkBtn').text('Shorten Url');
                    if (response == '-1') {
                        $('#error').removeClass('hide');
                        $('#error').html(`
                        <div class="alert alert-dismissible alert-danger">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                                    <p>User defined Name is taken</p>
                      </div>
                        `);
                    } else if (response == '0') {
                        $('#error').removeClass('hide');
                        $('#error').html(`
                        <div class="alert alert-dismissible alert-danger">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                                    <p>Error</p>
                      </div>
                        `);
                    } else {
                        $('#error').removeClass('hide');
                        $("input[type=text], textarea").val("");
                        $('#error').html(`
                        <div class="alert alert-dismissible alert-success">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                                    <p>Your shorten Link <i class="fa fa-link"></i>  ` + response + `&nbsp;
                                    <a href="http://` + response + `" target="_blank"><i class="fa fa-external-link"></i></a></p>
                      </div>
                        `);
                    }
                }
            });

        } else {
            $('#error').removeClass('hide');
            $('#error').html(`
            <div class="alert alert-dismissible alert-danger">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
                        <p>Invlid Link</p>
          </div>
            `);
        }
    });
});