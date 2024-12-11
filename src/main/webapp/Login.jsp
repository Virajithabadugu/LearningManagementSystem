<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">

<head>
    <title>Login</title>
    <!-- Add necessary CSS libraries for reactive design -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">

    <style>
        body {
            background-image: url('https://img.freepik.com/premium-photo/success-marketing-concept_670147-47780.jpg?w=900'); /* Background image added */
            background-size: cover; /* Ensures the image covers the full screen */
            background-position: center center; /* Centers the image */
            background-attachment: fixed; /* Keeps the background fixed during scroll */
            color: #333333; /* Dark gray text for contrast */
            height: 100vh;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Arial', sans-serif;
            color: #495057; /* Neutral text color */
        }

        .card {
            background-color: rgba(255, 255, 255, 0.7); /* Semi-transparent white card */
            border: 1px solid #dee2e6; /* Light border */
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            backdrop-filter: blur(10px); /* Apply blur effect */
        }

        .card-header {
            background-color: #2f4f4f; /* Blue header */
            color: #ffffff; /* White text */
            border-radius: 15px 15px 0 0;
            padding: 15px;
            text-align: center;
        }

        .card-body {
            padding: 20px;
        }

        h3 {
            margin-bottom: 20px;
            color: #f8f8ff; /* Blue headings */
        }

        .form-control {
            border: 1px solid #ced4da; /* Neutral border */
            border-radius: 10px;
            padding: 10px;
            font-size: 14px;
        }

        .form-control:focus {
            border-color: #fffff0;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        label {
            color: #495057; /* Neutral label color */
            font-weight: bold;
        }

        .btn-primary {
            background-color: #2f4f4f;
            border: none;
            border-radius: 8px;
            padding: 10px 15px;
            font-size: 14px;
            transition: background-color 0.2s ease;
        }

        .btn-primary:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        #passwordMismatchError {
            font-size: 12px;
            font-weight: bold;
            color: #dc3545; /* Red error text */
        }
    </style>
</head>

<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h3>LMS LOGIN</h3>
                    </div>
                    <div class="card-body">
                        <form id="loginForm" action="checklogin" method="post">
                            <div class="mb-3">
                                <label for="ID" class="form-label">ID</label>
                                <input type="text" class="form-control" id="id" name="id" required>
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" class="form-control" id="password" name="pwd" required>
                            </div>
                          
                            <div class="mb-3" id="passwordMismatchError" style="color: #6c757d;"></div>
                            <button type="submit" class="btn btn-primary" onclick="return validateForm()">Login</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Add necessary JS libraries for reactive design -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        function validateForm() {
            var password = document.getElementById("password").value;
            var retypePassword = document.getElementById("retypePassword").value;

            if (password !== retypePassword) {
                document.getElementById("passwordMismatchError").innerText = "Passwords do not match!";
                return false;
            } else {
                document.getElementById("passwordMismatchError").innerText = "";
                return true;
            }
        }
    </script>
</body>

</html>
