<?php 
    require_once("inc/init.php");
    if(!$session->is_logged_in()) { redirect_to("login.php"); }
 ?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Admin Dashboard</title>

    <!-- Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <!-- custome styles -->
    <link rel="stylesheet" type="text/css" href="stylesheets/styles.css">


  </head>
  <body>
  
    <header>
        <div class="top">
            <div class="log-wrap">
                <a href="logout.php">logout <i class="fa fa-sign-out" aria-hidden="true"></i></a>
            </div>  
        </div><!-- end of top -->
    </header><!-- end of header -->

    <section class="table-wrapper">
      <div class="container">
          <div class="row">
              <div class="col-md-12">
                <h4>Bootstrap Snipp for Datatable</h4>
                <div class="table-responsive"> 
                    <table id="mytable" class="table table-bordred table-striped">
                      <thead>
                        <!-- <th><input type="checkbox" id="checkall" /></th> -->
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone No</th>
                        <th>Message</th>
                        <th>File</th>
                        <th>Date</th>
                        <th>Delete</th>
                      </thead>
                      <tbody>
                          <tr>
                            <!-- <td><input type="checkbox" class="checkthis" /></td> -->
                            <td>Mohsin</td>
                            <td>mail@gmail.com</td>
                            <td>+923335586757</td>
                            <td>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint repellat ratione impedit pariatur.</td>
                            <td class="download"><a href="files/test.pdf" download><i class="fa fa-download" aria-hidden="true"></i></a></td>
                            <td>2017-05-15</td>
                            <td class="trash"><a href="#"><i class="fa fa-trash-o" aria-hidden="true"></i></a></td>
                          </tr>
                
                      </tbody>
                                    
                    </table>
                    <div class="clearfix"></div>

                    <ul class="pagination pull-right">
                      <li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
                      <li class="active"><a href="#">1</a></li>
                      <li><a href="#">2</a></li>
                      <li><a href="#">3</a></li>
                      <li><a href="#">4</a></li>
                      <li><a href="#">5</a></li>
                      <li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
                    </ul>
                                            
                </div><!-- end of table-responsive -->
                        
              </div><!-- end of col -->
          </div><!-- end of row -->
      </div><!-- end of container -->
    </section>



    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/scripts.js"></script>
  </body>
</html>
