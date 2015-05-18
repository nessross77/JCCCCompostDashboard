<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="jccc_sustainability1.WebForms.Gallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="keywords" content="jccc sustainability" />
    <meta name="description" content="JCCC Sustainability" />
    <meta name="author" content="Nestor Rosales" />
    <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.2/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap-glyphicons.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.2/js/bootstrap.min.js"></script>
    <script src="Scripts/script.js"></script>
    <title>JCCC Sustainability</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" id="gallery">
            <!---Container-->
            <ul>
                <li class="col-lg-2 col-md-2 col-sm-3 col-xs-4">
                    <img src="../img/CompostBuble.png" /></li>
                <li class="col-lg-2 col-md-2 col-sm-3 col-xs-4">
                    <img src="../img/CompostBuble.png" /></li>
                <li class="col-lg-2 col-md-2 col-sm-3 col-xs-4">
                    <img src="../img/CompostBuble.png" /></li>
                <li class="col-lg-2 col-md-2 col-sm-3 col-xs-4">
                    <img src="../img/CompostBuble.png" /></li>
                <li class="col-lg-2 col-md-2 col-sm-3 col-xs-4">
                    <img src="../img/CompostBuble.png" /></li>
                <li class="col-lg-2 col-md-2 col-sm-3 col-xs-4">
                    <img src="../img/CompostBuble.png" /></li>
            </ul>
        </div>
        <!--End Container -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body">
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

        <script>
            $(document).ready(function () {
                $('li img').on('click', function () {
                    var src = $(this).attr('src');
                    var img = '<img src="' + src + '" class="img-responsive"/>';
                    $('#myModal').modal();
                    $('#myModal').on('shown.bs.modal', function () {
                        $('#myModal .modal-body').html(img);
                    });
                    $('#myModal').on('hidden.bs.modal', function () {
                        $('#myModal .modal-body').html('');
                    });
                });
            })
            $(document).ready(function () {
                $('li img').on('click', function () {
                    var src = $(this).attr('src');
                    var img = '<img src="' + src + '" class="img-responsive"/>';

                    //start of new code new code
                    var index = $(this).parent('li').index();

                    var html = '';
                    html += img;
                    html += '<div style="height:25px;clear:both;display:block;">';
                    html += '<a class="controls next" href="' + (index + 2) + '">next &raquo;</a>';
                    html += '<a class="controls previous" href="' + (index) + '">&laquo; prev</a>';
                    html += '</div>';

                    $('#myModal').modal();
                    $('#myModal').on('shown.bs.modal', function () {
                        $('#myModal .modal-body').html(html);
                        //new code
                        $('a.controls').trigger('click');
                    })
                    $('#myModal').on('hidden.bs.modal', function () {
                        $('#myModal .modal-body').html('');
                    });




                });
            })


            $(document).on('click', 'a.controls', function () {
                var index = $(this).attr('href');
                var src = $('ul.row li:nth-child(' + index + ') img').attr('src');

                $('.modal-body img').attr('src', src);

                var newPrevIndex = parseInt(index) - 1;
                var newNextIndex = parseInt(newPrevIndex) + 2;

                if ($(this).hasClass('previous')) {
                    $(this).attr('href', newPrevIndex);
                    $('a.next').attr('href', newNextIndex);
                } else {
                    $(this).attr('href', newNextIndex);
                    $('a.previous').attr('href', newPrevIndex);
                }

                var total = $('ul.row li').length + 1;
                //hide next button
                if (total === newNextIndex) {
                    $('a.next').hide();
                } else {
                    $('a.next').show()
                }
                //hide previous button
                if (newPrevIndex === 0) {
                    $('a.previous').hide();
                } else {
                    $('a.previous').show()
                }


                return false;
            });
        </script>
    </form>
</body>
</html>
