<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="department.css">
    <title>Departments</title>
</head>

<body>
    <h1>Departments</h1>

    <div class="departments-list">
        <ul id="departments">
            <li>
                <span class="department-name">Engineering</span>
                <button class="remove-button">Remove</button>
            </li>
            <li>
                <span class="department-name">Marketing</span>
                <button class="remove-button">Remove</button>
            </li>
            <li>
                <span class="department-name">Finance</span>
                <button class="remove-button">Remove</button>
            </li>
        </ul>
    </div>

    <div class="department-form">
        <h2>Add Department</h2>
        <form id="department-form">
            <input type="text" id="department-name" placeholder="Enter department name" required>
            <button type="submit">Add</button>
        </form>
    </div>

    <script src="department.js"></script>
</body>

</html>
