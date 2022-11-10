<?php
$link = mysqli_connect("db", "root", "testtask", "testtask");

if ($link == false){
    print("Ошибка: Невозможно подключиться к MySQL " . mysqli_connect_error());
}
else {
    $rndnumber = rand(1, 10);
    $sql = "SELECT * FROM names JOIN surnames USING(id) WHERE names.id = '$rndnumber'";
    $result = mysqli_query($link, $sql);

    if ($result == false) {
        print("Произошла ошибка при выполнении запроса");
    }
    else {

        while ($row = mysqli_fetch_array($result)) {
            print($row['name'] . " " . $row['surname'] . " from " . gethostname() . "<br>");
        }

    }
}
?>
