<html>
<head>
    <title>Covid19 New Jersey Stats</title>
    
</head>
<style>
body {
  background-image: url('covid.gif');
  background-size: 400px 225px;

}
</style>
<script>
    // console.log("hello")
    // function test(){
    //     document.body.innerHTML=""
    //     console.log("I cant believe this actually worked")
    // }

function sortTablestates(n) {
  var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
  table = document.getElementById("myTable2");
  switching = true;
  dir = "asc"; 
  while (switching) {
    switching = false;
    rows = table.rows;
    for (i = 1; i < (rows.length - 1); i++) {
      shouldSwitch = false;
      x = rows[i].getElementsByTagName("TD")[n];
      y = rows[i + 1].getElementsByTagName("TD")[n];
      if (dir == "asc") {
        if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
          shouldSwitch = true;
          break;
        }
      } else if (dir == "desc") {
        if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
          shouldSwitch = true;
          break;
        }
      }
    }
    if (shouldSwitch) {
      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
      switching = true;
      switchcount ++; 
    } else {
      if (switchcount == 0 && dir == "asc") {
        dir = "desc";
        switching = true;
      }
    }
  }
}

function sortTablenums(n) {
  var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
  table = document.getElementById("myTable2");
  switching = true;
  dir = "asc"; 
  while (switching) {
    switching = false;
    rows = table.rows;
    for (i = 1; i < (rows.length - 1); i++) {
      shouldSwitch = false;
      x = rows[i].getElementsByTagName("TD")[n];
      y = rows[i + 1].getElementsByTagName("TD")[n];
      if (dir == "asc") {
        if (parseFloat(x.innerHTML) > parseFloat(y.innerHTML)) {
          shouldSwitch = true;
          break;
        }
      } else if (dir == "desc") {
        if (parseFloat(x.innerHTML) < parseFloat(y.innerHTML)) {
          shouldSwitch = true;
          break;
        }
      }
    }
    if (shouldSwitch) {

      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
      switching = true;
      switchcount ++; 
    } else {
      if (switchcount == 0 && dir == "asc") {
        dir = "desc";
        switching = true;
      }
    }
  }
}




</script>
<body>

    <h1 align="center" style="font-family:Georgia, Garamond, Serif; color:darkblue;"> NEW JERSEY </h1>

    <table align="center" border="1" bgcolor="#BAF8FF" 
        style="font-family:Georgia, Garamond, Serif; color:darkblue;" id="myTable2">

        <tr>
            <button>
            <th onclick="sortTablestates(0)" style="width:200px">County</th>
         </button>
            <th onclick="sortTablenums(1)" style="width:200px">Confirmed Cases</th> 
            <th onclick="sortTablenums(2)" style="width:200px">Confirmed Deaths</th>
        </tr>

    <?php
        $cnx = new mysqli('localhost', 'root', 'password', 'demo');

        if ($cnx->connect_error)
            die('Connection failed: ' . $cnx->connect_error);

        $query = 'SELECT * FROM nj ORDER BY confcases DESC';
        $cursor = $cnx->query($query);


        while ($row = $cursor->fetch_assoc()) {
            echo '<tr>';
            echo '<td>' . $row['county'] . '</td> 
            <td align="right">' . $row['confcases'] . '</td>
            <td align="right">' . $row['confdeaths'] . '</td>';
            echo '</tr>';
        }

        $cnx->close();
    ?>

    </table>
</body>
</html>


