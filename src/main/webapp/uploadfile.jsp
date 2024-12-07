<!DOCTYPE html>
<html>
<head>
    <title>Upload File</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        body {
            background-image: url('images/logo.jpeg'); /* Set the background image */
            background-size: cover; /* Make sure the image covers the entire screen */
            background-repeat: no-repeat; /* Prevent the image from repeating */
            background-position: center; /* Center the image */
            margin: 0; /* Remove default margin */
            height: 100vh; /* Set body height to full viewport height */
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.7); /* Semi-transparent background */
            padding: 20px;
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Shadow effect */
            width: 100%;
            max-width: 500px; /* Limit width */
            text-align: center; /* Center the text */
        }

        h1 {
            font-size: 2em;
            color: #333;
            margin-bottom: 20px;
        }

        input[type="file"] {
            margin-bottom: 15px;
            display: block;
            margin: 0 auto;
        }

        button {
            background-color: #333; /* Button background */
            color: white; /* Button text color */
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1em;
        }

        button:hover {
            background-color: #555; /* Button hover effect */
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Admin File Upload</h1>
        <form method="POST" action="/admin/upload" enctype="multipart/form-data">
            <input type="file" name="file" required />
            <button type="submit">Upload</button>
        </form>
    </div>
</body>
</html>
