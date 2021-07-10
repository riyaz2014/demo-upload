<?php
include "navbar.php";
?>

<?php
    include 'config.php';
    $sql = "SELECT * FROM users";
    $result = mysqli_query($conn, $sql);
    ?>


    <div class="container"  style = "padding:4rem ; box-shadow:none">
        <h2 class="text-center pt-4" style="color : #6c757d;">Transfer Money</h2>
        <br>
        <div class="row">
            <div class="col">
                <div class="table-responsive-sm">
                    <table class="table table-hover table-sm table-striped table-condensed table-bordered table-primary" style="font-size:1.5rem; border-color:black;">
                        <thead style="color : black; font-size:2rem">
                            <tr>
                                <th scope="col" class="text-center py-2">#</th>
                                <th scope="col" class="text-center py-2">Name</th>
                                <th scope="col" class="text-center py-2">E-Mail</th>
                                <th scope="col" class="text-center py-2">Balance</th>
                                <th scope="col" class="text-center py-2">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $cnt = 1;
                            while ($rows = mysqli_fetch_assoc($result)) {
                            ?>
                                <tr style="color : black;">
                                    <td class="py-2" ><?php echo $cnt;; ?></td>
                                    <td class="py-2"><?php echo $rows['name'] ?></td>
                                    <td class="py-2"><?php echo $rows['email'] ?></td>
                                    <td class="py-2">Rs. <?php echo $rows['balance'] ?> /-</td>
                                    <td><a href="selecteduserdetail.php?id= <?php echo $rows['id']; ?>"> <button type="button" class="btn" style="background-color : #e6b31a;" style="border-radius:0%;">Proceed</button></a></td>
                                </tr>
                            <?php
                                $cnt = $cnt + 1;
                            }
                            ?>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>




<?php
include "footer.php";
?>