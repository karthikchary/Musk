
<?php
    session_start();
    require_once('config.php');
        if(!$_SESSION['id']){
        header('location:login.php');
    }

    function role($id,$member_id){
        $id = '2';
        $member_id=8;
         $sql = "SELECT * FROM `Interventions`  where role_id = `$id` and member_id = `$member_id`";
            $stmt = $pdo->prepare($sql);
            $p = ['role_id'=>$role_id];
            print_r($p);exit;
            $stmt->execute($p);
    }

    if(isset($_POST['submit']))
    {
        
        $data1 = trim($_POST['no_intv']);
        $data2 = trim($_POST['comm']);
        $data3 = trim($_POST['insp_comp']);
        $data4 = trim($_POST['act_takn']);
        $data5 = trim($_POST['no_intv2']);
        $data6 = trim($_POST['comm2']);
        $data7 = trim($_POST['insp_comp2']);
        $data8 = trim($_POST['act_takn2']);
        $data9 = trim($_POST['no_intv3']);
        $data10 = trim($_POST['comm3']);
        $data11 = trim($_POST['insp_comp3']);
        $data12 = trim($_POST['act_takn3']);
        $data13 = trim($_POST['no_intv4']);
        $data14 = trim($_POST['comm4']);
        $data15 = trim($_POST['insp_comp4']);
        $data16 = trim($_POST['act_takn4']);
        // $sql = 'select * from members where $_COOKIE[$member_name]  = :member_name';
        //     $stmt = $pdo->prepare($sql);
        //     $p = ['member_name'=>$member_name];
        //     $stmt->execute($p);
        $member_id = 8; //$stmt[$member_id]
        $role_id = 2; //$stmt[$role_id]


         $sql = "insert into interventions (no_intv,comm,insp_comp,act_takn,no_intv2,comm2,insp_comp2,act_takn2,no_intv3,comm3,insp_comp3,act_takn3,no_intv4,comm4,insp_comp4,act_takn4,member_id,role_id) values(:nintv,:comm,:icomp,:atakn,:nintv2,:comm2,:icomp2,:atakn2,:nintv3,:comm3,:icomp3,:atakn3,:nintv4,:comm4,:icomp4,:atakn4,:member_id,:role_id)";
         $handle = $pdo->prepare($sql);
          $params = [
                        //':sname'=>$siteName,
                        ':nintv'=>$data1,
                        ':comm'=>$data2,
                        ':icomp'=>$data3,
                        ':atakn'=>$data4,
                        ':nintv2'=>$data5,
                        ':comm2'=>$data6,
                        ':icomp2'=>$data7,
                        ':atakn2'=>$data8,
                        ':nintv3'=>$data9,
                        ':comm3'=>$data10,
                        ':icomp3'=>$data11,
                        ':atakn3'=>$data12,
                        ':nintv4'=>$data13,
                        ':comm4'=>$data14,
                        ':icomp4'=>$data15,
                        ':atakn4'=>$data16,
                        ':member_id'=>$member_id,
                        ':role_id'=>$role_id,

                    ];
                    
                     $handle->execute($params);
                     $success = 'submitted successfully';
                     if(isset($success))
                {
                    
                    echo '<div class="alert alert-success">'.$success.'</div>';
                }

}
?>     
<!doctype html>
<html>
<head>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>


<!--
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">-->

<link rel="stylesheet" href="style.css">

</head>
<body class="">
<!-- <div>
        <div class="row h-100 mt-5 justify-content-center align-items-center">
            <div class="rounded mx-auto d-block mb-5">
            
        </div>
    </div>
</div> -->
<div>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#"><img src="https://www.peme.co.uk/wp-content/uploads/2019/03/MUSK-logo.png" alt="Musk Process Services" height="50" width="80"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="welcome.php">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="interventions.php">Interventions</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="interventions_userid.php">Interventions_user</a>
      </li>
     <!-- <li class="nav-item">
        <a class="nav-link" href="#">Features</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Pricing</a>
      </li>-->
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
          Interventions
        </a>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
          <a class="dropdown-item" href="#">Tools,Cables & Other Equipment</a>
          <a class="dropdown-item" href="#">Another action</a>
          <a class="dropdown-item" href="#">Something else here</a>
        </ul>
      </li>
      <li class="float-right">
          <a class="nav-link" href="logout.php?logout=true">Logout</a>
      </li>
    </ul>
    </div>
  </nav>
</div>
<div class="container">

    <div class="row h-100 mt-5 justify-content-center align-items-center">

            <form method="POST" action="<?php echo $_SERVER['PHP_SELF'];?>">
                <div class="form-group">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                              <th scope="col">Tools,Cables & Other Equipment<?php print_r($_SESSION); ?></th>
                              <th scope="col">INTERVENTIONS</th>
                              <th scope="col">COMMENT</th>
                              <th scope="col">COMPLETED</th>
                              <th scope="col">ACTION TAKEN</th>
                            </tr>
                        </thead>
                        <tbody  class="form-group">
                           <!-- <tr>
                              <th scope="row">Tools,Cables & Other Equipment</th>
                              <td><input class="form-control my-1" type="text" name="no_intv" placeholder="No of Interventions"></td></td>
                              <td><input class="form-control my-1" type="text" name="comm" placeholder="Enter Comments"></td></td>
                              <td><input class="form-control my-1" type="text" name="insp_comp" placeholder="Yes / No"></td></td>
                              <td><input class="form-control my-1" type="text" name="act_takn" placeholder="Resolution"></td></td>
                            </tr>-->
                            
                           
                                <tr>
                                  <th scope="row">Power Tools,Cables & Other Equipment</th>
                                  <td><input class="form-control my-1" type="text" name="no_intv2" placeholder="No of Interventions"></td></td>
                                  <td><input class="form-control my-1" type="text" name="comm2" placeholder="Enter Comments"></td></td>
                                  <td><input class="form-control my-1" type="text" name="insp_comp2" placeholder="Yes / No"></td></td>
                                  <td><input class="form-control my-1" type="text" name="act_takn2" placeholder="Resolution"></td></td>
                                </tr>
                                <tr>
                                  <th scope="row">Voltage Detector Checked</th>
                                  <td><input class="form-control my-1" type="text" name="no_intv3" placeholder="No of Interventions"></td></td>
                                  <td><input class="form-control my-1" type="text" name="comm3" placeholder="Enter Comments"></td></td>
                                  <td><input class="form-control my-1" type="text" name="insp_comp3" placeholder="Yes / No"></td></td>
                                  <td><input class="form-control my-1" type="text" name="act_takn3" placeholder="Resolution"></td></td>
                                </tr>
                              
                                <tr>
                                  <th scope="row">Voltage Detector Checked</th>
                                  <td><input class="form-control my-1" type="text" name="no_intv3" placeholder="No of Interventions"></td></td>
                                  <td><input class="form-control my-1" type="text" name="comm3" placeholder="Enter Comments"></td></td>
                                  <td><input class="form-control my-1" type="text" name="insp_comp3" placeholder="Yes / No"></td></td>
                                  <td><input class="form-control my-1" type="text" name="act_takn3" placeholder="Resolution"></td></td>
                                </tr>
                                 <tr>
                                  <th scope="row">Tools Used Fit For Purpose</th>
                                  <td><input class="form-control my-1" type="text" name="no_intv4" placeholder="No of Interventions"></td></td>
                                  <td><input class="form-control my-1" type="text" name="comm4" placeholder="Enter Comments"></td></td>
                                  <td><input class="form-control my-1" type="text" name="insp_comp4" placeholder="Yes / No"></td></td>
                                  <td><input class="form-control my-1" type="text" name="act_takn4" placeholder="Resolution"></td></td>
                                </tr>
                               
                            

                        </tbody>

                    </table>
                    <div class="text-center">
                        <button  name="role" class="btn btn-primary" value="role">test</button>
                    <button type="submit" name="submit" class="btn btn-primary">Submit</button>
                    
                    </div>
                </div>
            </form>
    </div>
</div>
</body>
</html>