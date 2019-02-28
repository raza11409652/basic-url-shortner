<?php require_once "view/header.php";
?>
<div class="container">
<div id="error" class="hide"></div>
    <div class="jumbotron card">
        <form method="post" id="linkForm" autocomplete="off">
        <div class="row">
            <div class="col-lg-6">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Enter Url" name="linkBox" id="linkBox">
            </div>
            </div>
            <div class="col-lg-4">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="User defined name" name="aliasName">
                </div>
            </div>
            <div class="col-lg-2">
            <button type="submit" class="btn btn-warning btn-block" id="linkBtn">Shorten Url</button>
            </div>
        </div>
        
        </form>
    </div>
</div>
<?php
require_once "view/footer.php"; 
?>