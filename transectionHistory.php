<?php
 include "navbar.php";
?>
    

   <div class="container" style="padding:3.5rem; box-shadow:none">
        <h2 class="text-center pt-4" style="color :#6c757d;">Transaction History</h2>

        <br>
        <div class="table-responsive-sm">
            <table class="table table-hover table-striped table-condensed table-primary table-bordered" style="font-size :1.5rem;">
                <thead style="color : black;">
                    <tr>
                        <th class="text-center">S.No.</th>
                        <th class="text-center">Sender</th>
                        <th class="text-center">Receiver</th>
                        <th class="text-center">Amount</th>
                        <th class="text-center">Date & Time</th>
                    </tr>
                </thead>
                <tbody>
                    <?php

                    include 'config.php';

                    $sql = "SELECT * FROM transaction";

                    $query = mysqli_query($conn, $sql);

                    while ($rows = mysqli_fetch_assoc($query)) {
                    ?>

                        <tr style="color : black;">
                            <td class="py-2"><?php echo $rows['sno']; ?></td>
                            <td class="py-2"><?php echo $rows['sender']; ?></td>
                            <td class="py-2"><?php echo $rows['receiver']; ?></td>
                            <td class="py-2">Rs. <?php echo $rows['balance']; ?> /-</td>
                            <td class="py-2"><?php echo $rows['datetime']; ?> </td>

                        <?php
                    }

                        ?>
                </tbody>
            </table>

        </div>
    </div>


 <?php
  include "footer.php";
 ?>