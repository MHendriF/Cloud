<!DOCTYPE html>
<html>
<head>
<title>Script Bubble Sort</title>
</head>
<body>

<?php
if(isset($_POST["submit"]) && $_FILES['fileToUpload']['tmp_file']) 
{
  	$file=file_get_contents($_FILES['fileToUpload']['tmp_file']);;
  	$array = preg_split('/\s+/', $file);
 	
	//Buble Sort
	$length = count($array);
  	for($i=$length-1; $i>=0; $i--)
	{
  		for($j=$length-1; $j>0; $j--)
		{
			
		//Compare the adjacent positions
		    if ($items[$j] < $items[$j - 1]) 
		    {
		        //Swap the numbers
		        $tmp = $items[j];
		        $items[$j] = $items[$j - 1];
		        $items[$j - 1] = $tmp;
		    }
  	
  		}
  	}
  	for($i=0;$i<$length;$i++){
  		echo $items[$i];
  		echo "</br>";
  	}
}
?>
<form action="index.php" method="post" enctype="multipart/form-data">
   Input file .txt:</br>
    <input type="file" name="fileToUpload" id="fileToUpload">
    </br>
    <input type="submit" value="Submit" name="submit">
</form>

</body>
</html>
