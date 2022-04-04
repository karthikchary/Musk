<?php 
  // Database
  include('config.php');
  
  // Set session
  session_start();
  if(isset($_POST['records-limit'])){
      $_SESSION['records-limit'] = $_POST['records-limit'];
  }
  
  $limit = isset($_SESSION['records-limit']) ? $_SESSION['records-limit'] : 5;

  //$page = (isset($_GET['page']) && is_numeric($_GET['page']) ) ? $_GET['page'] : 1;
  $page = (isset($_GET['page']) && is_numeric($_GET['page']) ) ? $_GET['page'] : 1;
  $paginationStart = ($page - 1) * $limit;

  //$authors = $pdo->query("SELECT * FROM authors LIMIT $paginationStart, $limit")->fetchAll();
  //select * from interventions where email = :email LIMIT $paginationStart, $limit
  //$authors = $pdo->query("SELECT * FROM interventions  LIMIT $paginationStart, $limit")->fetchAll();
 $role_id = $_SESSION['role_id'];
// echo $role_id;
    $sql = 'SELECT * FROM interventions
    WHERE role_id = '.$role_id;

    $statement = $pdo->prepare($sql);
    $statement->bindParam(':role_id', $role_id, PDO::PARAM_INT);
    $statement->execute();
    $authors = $statement->fetchAll(PDO::FETCH_ASSOC);
  //print_r($authors);
  // Get total records
  $sql = $pdo->query("SELECT count(id) AS id FROM interventions")->fetchAll();

  $allRecrods = $sql[0]['id'];
  
  // Calculate total pages
  $totoalPages = ceil($allRecrods / $limit);
  // Prev + Next
  $prev = $page - 1;
  $next = $page + 1;
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <title>interventions</title>
    <style>
        .container {
            max-width: 1000px
        }
        .custom-select {
            max-width: 150px
        }
    </style>
</head>
<body>
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
     <!-- <li class="nav-item">
        <a class="nav-link" href="#">Features</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Pricing</a>
      </li>-->
      <!-- <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
          Interventions
        </a>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
          <a class="dropdown-item" href="#">Tools,Cables & Other Equipment</a>
          <a class="dropdown-item" href="#">Another action</a>
          <a class="dropdown-item" href="#">Something else here</a>
        </ul>
      </li> -->
      <li class="float-right">
          <a class="nav-link" href="logout.php?logout=true">Logout</a>
      </li>
    </ul>
    </div>
  </nav>
</div>
    <div class="container mt-5">
        <h2 class="text-center mb-5"> interventions</h2>

        <!-- Select dropdown -->
        <div class="d-flex flex-row-reverse bd-highlight mb-3">
            <form action="index.php" method="post">
                <select name="records-limit" id="records-limit" class="custom-select">
                    <option disabled selected>Records Limit</option>
                    <?php foreach([5,7,10,12] as $limit) : ?>
                    <option
                        <?php if(isset($_SESSION['records-limit']) && $_SESSION['records-limit'] == $limit) echo 'selected'; ?>
                        value="<?= $limit; ?>">
                        <?= $limit; ?>
                    </option>
                    <?php endforeach; ?>
                </select>
            </form>
        </div>
        <!-- Datatable -->
        <table class="table table-bordered mb-5">
            <thead>
                <tr class="table-success">
                    <th scope="col"># <?php print_r($_SESSION); ?></th>
                    <th scope="col"><?php print_r($_SESSION['role_id']); ?>Interventions Number</th>
                    <th scope="col">Comments</th>
                    <th scope="col">Inspector Comments</th>
                    <th scope="col">Action Taken</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach($authors as $author): ?>
                <tr>
                    <th scope="row"><?php echo $author['id']; ?></th>
                    <td><?php echo $author['no_intv']; ?></td>
                    <td><?php echo $author['comm']; ?></td>
                    <td><?php echo $author['insp_comp']; ?></td>
                    <td><?php echo $author['act_takn']; ?></td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
        <!-- Pagination -->
        <nav aria-label="Page navigation example mt-5">
            <ul class="pagination justify-content-center">
                <li class="page-item <?php if($page <= 1){ echo 'disabled'; } ?>">
                    <a class="page-link"
                        href="<?php if($page <= 1){ echo '#'; } else { echo "?page=" . $prev; } ?>">Previous</a>
                </li>
                <?php for($i = 1; $i <= $totoalPages; $i++ ): ?>
                <li class="page-item <?php if($page == $i) {echo 'active'; } ?>">
                    <a class="page-link" href="interventions.php?page=<?= $i; ?>"> <?= $i; ?> </a>
                </li>
                <?php endfor; ?>
                <li class="page-item <?php if($page >= $totoalPages) { echo 'disabled'; } ?>">
                    <a class="page-link"
                        href="<?php if($page >= $totoalPages){ echo '#'; } else {echo "?page=". $next; } ?>">Next</a>
                </li>
            </ul>
        </nav>
    </div>
    <!-- jQuery + Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#records-limit').change(function () {
                $('form').submit();
            })
        });
    </script>
</body>
</html>