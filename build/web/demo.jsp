<!DOCTYPE html>
<html>
<head>
    <title>Bootstrap Table Examples</title>
    <link rel="stylesheet" href="tables/css/jquery.dataTables.min.css">
    <script src="tables/js/jquery-1.12.4.js"></script>
    <script src="tables/js/jquery.dataTables.min.js"></script>
</head>
<body>
<div class="container">
<table id="example" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Age</th>
                <th>Start date</th>
                <th>Salary</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Age</th>
                <th>Start date</th>
                <th>Salary</th>
            </tr>
        </tfoot>
        <tbody>           
            <tr>
                <td>Donna Snider</td>
                <td>Customer Support</td>
                <td>New York</td>
                <td>27</td>
                <td>2011/01/25</td>
                <td>$112,000</td>
            </tr>
        </tbody>
    </table>
</div>
    <script>
        $(document).ready(function() {
            $('#example').DataTable();
        } );
    </script>
    
</body>
</html>