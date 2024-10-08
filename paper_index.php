<?php
$conn = new PDO('mysql:host=sql311.infinityfree.com; dbname=if0_36382260_demo', 'if0_36382260', "JzNMXVJLoaXnr12") or die(mysql_error());


if (isset($_POST['submit']) != "") {
    $name = $_FILES['file']['name'];
    $size = $_FILES['file']['size'];
    $type = $_FILES['file']['type'];
    $temp = $_FILES['file']['tmp_name'];
    $fname = date("YmdHis") . '_' . $name;

    $chk = $conn->query("SELECT * FROM upload WHERE name = '$name'")->rowCount();
    if ($chk) {
        $i = 1;
        $c = 0;
        while ($c == 0) {
            $i++;
            $reversedParts = explode('.', strrev($name), 2);
            $tname = (strrev($reversedParts[1])) . "_" . ($i) . '.' . (strrev($reversedParts[0]));
            $chk2 = $conn->query("SELECT * FROM upload WHERE name = '$tname'")->rowCount();
            if ($chk2 == 0) {
                $c = 1;
                $name = $tname;
            }
        }
    }

    $move = move_uploaded_file($temp, "upload/" . $fname);
    if ($move) {
        $query = $conn->query("INSERT INTO upload(name,fname) VALUES('$name','$fname')");
        if ($query) {
            header("location:paper_index.php");
        } else {
            die(mysql_error());
        }
    }
}

// Rename file logic
if (isset($_POST['rename'])) {
    $fileId = $_POST['file_id'];
    $newName = $_POST['new_name'];

    $query = $conn->query("SELECT * FROM upload WHERE id = '$fileId'");
    $row = $query->fetch();
    if ($row) {
        $oldFilePath = "upload/" . $row['fname'];
        $newFileName = date("YmdHis") . '_' . $newName;
        $newFilePath = "upload/" . $newFileName;

        // Rename the file on the server
        if (file_exists($oldFilePath)) {
            rename($oldFilePath, $newFilePath);
        }
        // Update the name in the database
        $conn->query("UPDATE upload SET name = '$newName', fname = '$newFileName' WHERE id = '$fileId'");
    }
    header("location:paper_index.php");
}
?>

<html>
<head>
    <title>Upload and Download Files</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="screen">
    <link rel="stylesheet" type="text/css" href="css/DT_bootstrap.css">
</head>
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/bootstrap.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8" language="javascript" src="js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="utf-8" language="javascript" src="js/DT_bootstrap.js"></script>

<style>
</style>
<body>
<div class="row-fluid">
    <div class="span12">
        <div class="container">
            <br />
            <h1><p>Upload And Download Files</p></h1>
            <br /><br />
            <form enctype="multipart/form-data" action="" name="form" method="post">
                Select File
                <input type="file" name="file" id="file" />
                <input type="submit" name="submit" id="submit" value="Submit" />
            </form>
            <br /><br />
            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
                <thead>
                <tr>
                    <th width="90%" align="center">Files</th>
                    <th align="center">Action</th>
                </tr>
                </thead>
                <?php
                $query = $conn->query("SELECT * FROM upload ORDER BY id DESC");
                while ($row = $query->fetch()) {
                    $name = $row['name'];
                    ?>
                    <tr>
                        <td>&nbsp;<?php echo $name; ?></td>
                        <td>
                            <button class="alert-success">
                                <a href="download.php?filename=<?php echo $name; ?>&f=<?php echo $row['fname'] ?>">Download</a>
                            </button>
                            <button class="alert-info">
                                <a href="upload/<?php echo $row['fname']; ?>" target="_blank">View</a>
                            </button>
                            <form method="post" action="" style="display:inline;">
                                <input type="hidden" name="file_id" value="<?php echo $row['id']; ?>" />
                                <input type="text" name="new_name" placeholder="New name" required />
                                <input type="submit" name="rename" value="Rename" />
                            </form>
                        </td>
                    </tr>
                <?php } ?>
            </table>
        </div>
    </div>
</div>
</body>
</html>
