<html>
<head>
    <title>Covid19 US Stats</title>
    
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
function myNJfunc() {
  window.location.href="county.php"

}
function sortTablestates(n) {
  var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
  table = document.getElementById("myTable2");
  switching = true;
  dir = "asc"; 
  while (switching) {
    switching = false;
    rows = table.rows;
    for (i = 2; i < (rows.length - 1); i++) {
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
    for (i = 2; i < (rows.length - 1); i++) {
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

    <h1 align="center" style="font-family:Georgia, Garamond, Serif; color:darkblue; margin-bottom:5px;"> UNITED STATES OF AMERICA </h1>
    <h3 align="center" style="font-family:Georgia, Garamond, Serif; color:darkblue; margin-top:5px; margin-bottom:5px;"> COVID-19 </h3>

    <table align="center" border="1" bgcolor="#BAF8FF" 
        style="font-family:Georgia, Garamond, Serif; color:darkblue;" id="myTable2">

        <tr>
            <th onclick="sortTablestates(0)" style="width:200px">State</th>
            <th onclick="sortTablenums(1)" style="width:200px">Confirmed Cases</th> 
            <th onclick="sortTablenums(2)" style="width:200px">New Cases</th>
            <th onclick="sortTablenums(3)" style="width:200px">Confirmed Deaths</th>
            <th onclick="sortTablenums(4)" style="width:200px">New Deaths</th>
        </tr>

    <?php
        $cnx = new mysqli('localhost', 'root', 'password', 'demo');

        if ($cnx->connect_error)
            die('Connection failed: ' . $cnx->connect_error);

        $query = 'SELECT * FROM usa WHERE state ="USA Total"';
        $cursor = $cnx->query($query);

        $query2 = 'SELECT * FROM ydayusa WHERE state ="USA Total"';
        $cursor2 = $cnx->query($query2);

        if ($row1= $cursor->fetch_assoc() and $row2= $cursor2->fetch_assoc()) {
            $newcases = $row1['confcases']-$row2['confcases'];
            $newdeaths = $row1['confdeaths']-$row2['confdeaths'];
             
            echo '<tr>';
            echo '<td>' . $row1['state'] . '</td> 
            <td align="right">' . $row1['confcases'] . '</td>
            <td align="right">' . $newcases . '</td>
            <td align="right">' . $row1['confdeaths'] . '</td>
            <td align="right">' . $newdeaths . '</td>';
            echo '</tr>';
        }


        $query3 = 'SELECT * FROM usa WHERE state <>"USA Total"';
        $cursor = $cnx->query($query3);
        $query4 = 'SELECT * FROM ydayusa WHERE state <>"USA Total"';
        $cursor2 = $cnx->query($query4);


        while ($row = $cursor->fetch_assoc() and $row2 = $cursor2->fetch_assoc()) {
            $newcases = $row['confcases']-$row2['confcases'];
            $newdeaths = $row['confdeaths']-$row2['confdeaths'];

            if($row['state']=="New Jersey "){
              echo '<tr>';
              echo '<td onclick="myNJfunc()"  style = "text-decoration: underline;">' . $row['state'] . '</td> 
              <td align="right">' . $row['confcases'] . '</td>
              <td align="right">' . $newcases . '</td>
              <td align="right">' . $row['confdeaths'] . '</td>
              <td align="right">' . $newdeaths . '</td>';
              echo '</tr>';
            } else {
              echo '<tr>';
              echo '<td>' . $row['state'] . '</td> 
              <td align="right">' . $row['confcases'] . '</td>
              <td align="right">' . $newcases . '</td>
              <td align="right">' . $row['confdeaths'] . '</td>
              <td align="right">' . $newdeaths . '</td>';
              echo '</tr>';
          }
        }

        $cnx->close();
    ?>

    </table>
</body>
</html>


