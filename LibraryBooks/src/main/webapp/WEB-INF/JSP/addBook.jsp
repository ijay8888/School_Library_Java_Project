<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Book - My Library</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary: #2c3e50;
            --secondary: #3498db;
            --accent: #e74c3c;
            --light: #f8f9fa;
            --dark: #2c3e50;
            --text: #444;
            --background: #f0f4f8;
            --form-bg: #ffffff;
            --input-border: #dce4ec;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background: linear-gradient(135deg, #f5f7fa 0%, #e4e8f0 100%);
            color: var(--text);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }
        
        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }
        
        header {
            background: linear-gradient(135deg, #0f2027, #2c5364);
            color: white;
            padding: 1rem 0;
            box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1);
        }
        
        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .logo {
            font-size: 1.8rem;
            font-weight: 700;
            display: flex;
            align-items: center;
        }
        
        .logo i {
            margin-right: 10px;
            color: var(--secondary);
            text-shadow: 0 0 5px rgba(52, 152, 219, 0.5);
        }
        
        nav ul {
            display: flex;
            list-style: none;
            margin-top: 11px;
        }
        
        nav ul li {
            margin-left: 25px;
        }
        
        nav ul li a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s;
            padding: 5px 10px;
            border-radius: 4px;
        }
        
        nav ul li a:hover {
            color: var(--secondary);
            background: rgba(255, 255, 255, 0.15);
            transform: translateY(-2px);
        }
        
        nav ul li a.active {
            background: rgba(255, 255, 255, 0.2);
            color: white;
        }
        
        .form-section {
            background: var(--form-bg);
            padding: 2.5rem;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
            margin: 2rem auto;
            max-width: 700px;
            border: 1px solid rgba(255, 255, 255, 0.5);
            position: relative;
            overflow: hidden;
        }
        
        .form-section::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 5px;
            background: linear-gradient(90deg, var(--secondary), var(--accent));
        }
        
        .page-title {
            color: var(--primary);
            font-weight: 700;
            margin-bottom: 2rem;
            text-align: center;
            position: relative;
            padding-bottom: 15px;
        }
        
        .page-title::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 60px;
            height: 4px;
            background: linear-gradient(90deg, var(--secondary), var(--accent));
            border-radius: 2px;
        }
        
        .page-title i {
            background: linear-gradient(135deg, var(--secondary), var(--accent));
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }
        
        .form-label {
            font-weight: 600;
            color: var(--dark);
            margin-bottom: 0.8rem;
            display: flex;
            align-items: center;
        }
        
        .form-label i {
            margin-right: 10px;
            color: var(--secondary);
            width: 20px;
        }
        
        .form-control {
            padding: 0.9rem 1.2rem;
            border: 1px solid var(--input-border);
            border-radius: 10px;
            transition: all 0.3s;
            font-size: 1rem;
            box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.05);
        }
        
        .form-control:focus {
            border-color: var(--secondary);
            box-shadow: 0 0 0 0.25rem rgba(52, 152, 219, 0.2), inset 0 2px 4px rgba(0, 0, 0, 0.05);
            transform: translateY(-2px);
        }
        
        .input-group {
            position: relative;
        }
        
        .input-group-prepend {
            position: absolute;
            left: 15px;
            top: 50%;
            transform: translateY(-50%);
            z-index: 5;
            color: #6c757d;
        }
        
        .form-control.with-icon {
            padding-left: 45px;
        }
        
        .btn-primary {
            background: linear-gradient(135deg, var(--secondary), #2980b9);
            border: none;
            padding: 1rem 2rem;
            border-radius: 50px;
            font-weight: 600;
            width: 100%;
            margin-top: 1.5rem;
            box-shadow: 0 5px 15px rgba(52, 152, 219, 0.4);
            transition: all 0.3s;
            position: relative;
            overflow: hidden;
        }
        
        .btn-primary::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
            transition: all 0.5s;
        }
        
        .btn-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(52, 152, 219, 0.5);
        }
        
        .btn-primary:hover::before {
            left: 100%;
        }
        
        footer {
            background: linear-gradient(135deg, #0f2027, #2c5364);
            color: white;
            padding: 1.5rem 0;
            margin-top: auto;
            box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.1);
        }
        
        .footer-content {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        
        .tech-stack i {
            color: var(--accent);
            margin: 0 8px;
            transition: all 0.3s;
        }
        
        .tech-stack i:hover {
            transform: translateY(-3px);
            text-shadow: 0 0 8px rgba(231, 76, 60, 0.6);
        }
        
        .form-row {
            margin-bottom: 1.8rem;
            position: relative;
        }
        
        .form-illustration {
            text-align: center;
            margin-bottom: 2rem;
        }
        
        .form-illustration i {
            font-size: 4rem;
            background: linear-gradient(135deg, var(--secondary), var(--accent));
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            filter: drop-shadow(0 5px 10px rgba(0, 0, 0, 0.1));
        }
        
        @media (max-width: 768px) {
            .header-content {
                flex-direction: column;
                text-align: center;
            }
            
            nav ul {
                margin-top: 1rem;
                justify-content: center;
                flex-wrap: wrap;
            }
            
            nav ul li {
                margin: 5px 10px;
            }
            
            .form-section {
                padding: 1.5rem;
            }
            
            .page-title {
                font-size: 1.8rem;
            }
        }
        
        /* Animation for form elements */
        .form-row {
            animation: fadeIn 0.5s ease-out forwards;
            opacity: 0;
        }
        
        .form-row:nth-child(1) { animation-delay: 0.1s; }
        .form-row:nth-child(2) { animation-delay: 0.2s; }
        .form-row:nth-child(3) { animation-delay: 0.3s; }
        .form-row:nth-child(4) { animation-delay: 0.4s; }
        
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="container header-content">
            <div class="logo">
                <i class="fas fa-book-open"></i>
                <span onclick="window.location.href='/library/home'" style="cursor: pointer;">
                	My Library
                </span>
            </div>
            <nav>
                <ul>
                    <li><a href="/library/home"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="/library/addBookForm"><i class="fas fa-plus-circle"></i> Add Book</a></li>
                    <li><a href="/library/display"><i class="fas fa-book"></i> View Books</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Main Content -->
    <main class="container my-5 flex-grow-1">
        <div class="form-section">
            <div class="form-illustration">
            </div>
            <h1 class="page-title"><i class="fas fa-plus-circle"></i>Add New Book</h1>
            
            <form method="post" action="addBook" modelAttribute="book">
                <div class="form-row">
                    <label for="name" class="form-label">
                        <i class="fas fa-book"></i>Book Name:
                    </label>
                    <div class="input-group">
                        <span class="input-group-prepend">
                            <i class="fas fa-pen"></i>
                        </span>
                        <input type="text" class="form-control with-icon" id="name" name="name" placeholder="Enter book title" required>
                    </div>
                </div>
                
                <div class="form-row">
                    <label for="author" class="form-label">
                        <i class="fas fa-user-edit"></i>Author:
                    </label>
                    <div class="input-group">
                        <span class="input-group-prepend">
                            <i class="fas fa-user"></i>
                        </span>
                        <input type="text" class="form-control with-icon" id="author" name="author" placeholder="Enter author name" required>
                    </div>
                </div>
                
                <div class="form-row">
                    <label for="price" class="form-label">
                        <i class="fas fa-tag"></i>Price:
                    </label>
                    <div class="input-group">
                        <span class="input-group-prepend">
                            <i class="fas fa-dollar-sign"></i>
                        </span>
                        <input type="text" class="form-control with-icon" id="price" name="price" placeholder="Enter book price" required>
                    </div>
                </div>
                
                <button type="submit" class="btn btn-primary">
                    <i class="fas fa-save me-2"></i>Add to Library
                </button>
            </form>
        </div>
    </main>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-content">
                <p>&copy; 2025 My Library | Built using Spring Boot & JSP</p>
                <div class="tech-stack mt-2">
                    <i class="fab fa-java fa-2x"></i>
                    <i class="fas fa-server fa-lg"></i>
                    <i class="fas fa-database fa-lg"></i>
                </div>
            </div>
        </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>