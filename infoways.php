<?php
 
	header('Access-Control-Allow-Origin: *');
	header('Access-Control-Allow-Methods: GET, POST, DELETE, PUT, OPTIONS');
	header("Access-Control-Allow-Headers: X-Requested-With");

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "infoway";
	//$username = "u852957095_api";
    //$password = "apidbuser";
	//$dbname = "u852957095_api";
    $table = "listing"; // lets create a table named Listings.
 
    // we will get actions from the app to do operations in the database...
	// var_dump($_POST);
    $action = $_POST["action"];
     
    // Create Connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check Connection
    if($conn->connect_error){
        die("Connection Failed: " . $conn->connect_error);
        return;
    }
 
    // Get all employee records from the database
    if("GET_ALL" == $action){
		$matchCat = $_POST["category"];
        $db_data = array();
		if($matchCat != "All"){
			$sql = "SELECT * from $table WHERE category LIKE '$matchCat' ORDER BY first_name ASC";
		}else{
			$sql = "SELECT * from $table ORDER BY first_name ASC";
		}
		
        $result = $conn->query($sql);
        if($result->num_rows > 0){
            while($row = $result->fetch_assoc()){
                $db_data[] = $row;
            }
            // Send back the complete records as a json
            echo json_encode($db_data);
        }else{
            echo "error";
        }
        $conn->close();
        return;
    }
	
	// Get all employee records from the database
    if("GET_ALL_CAT" == $action){
        $db_data = array();
        $sql = "SELECT DISTINCT category FROM $table ORDER BY category ASC ";
        $result = $conn->query($sql);
        if($result->num_rows > 0){
            while($row = $result->fetch_assoc()){
                $db_data[] = $row['category'];
            }
            // Send back the complete records as a json
            echo json_encode($db_data);
        }else{
            echo "error";
        }
        $conn->close();
        return;
    }
 
    // Add an Employee
    if("ADD_EMP" == $action){
        // App will be posting these values to this server
        $first_name = $_POST["first_name"];
        $last_name = $_POST["last_name"];
        $sql = "INSERT INTO $table (first_name, last_name) VALUES ('$first_name', '$last_name')";
        $result = $conn->query($sql);
        echo "success";
        $conn->close();
        return;
    }
 
    // Remember - this is the server file.
    // I am updating the server file.
    // Update an Employee
    if("UPDATE_EMP" == $action){
        // App will be posting these values to this server
        $emp_id = $_POST['emp_id'];
        $first_name = $_POST["first_name"];
        $last_name = $_POST["last_name"];
        $sql = "UPDATE $table SET first_name = '$first_name', last_name = '$last_name' WHERE id = $emp_id";
        if($conn->query($sql) === TRUE){
            echo "success";
        }else{
            echo "error";
        }
        $conn->close();
        return;
    }
 
    // Delete an Employee
    if('DELETE_EMP' == $action){
        $emp_id = $_POST['emp_id'];
        $sql = "DELETE FROM $table WHERE id = $emp_id"; // don't need quotes since id is an integer.
        if($conn->query($sql) === TRUE){
            echo "success";
        }else{
            echo "error";
        }
        $conn->close();
        return;
    }
 
?>