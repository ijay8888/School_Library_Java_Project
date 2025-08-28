<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Library - Professional Homepage</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        :root {
            --primary: #2c3e50;
            --secondary: #3498db;
            --accent: #e74c3c;
            --light: #ecf0f1;
            --dark: #2c3e50;
            --text: #333;
            --background: #f9f9f9;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background-color: var(--background);
            color: var(--text);
            line-height: 1.6;
            overflow-x: hidden;
        }
        
        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }
        
        /* Header Styles */
        header {
            background: linear-gradient(135deg, #0f2027, #2c5364);
            color: white;
            padding: 1rem 0;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
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
        }
        
        nav ul {
            display: flex;
            list-style: none;
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
            background: rgba(255, 255, 255, 0.1);
        }
        
        /* Hero Section */
        .hero {
            padding: 4rem 0;
            text-align: center;
            background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), 
                        url('https://images.unsplash.com/photo-1507842217343-583bb7270b66?ixlib=rb-4.0.3&auto=format&fit=crop&w=1350&q=80');
            background-size: cover;
            background-position: center;
            color: white;
            margin-bottom: 3rem;
        }
        
        .hero h1 {
            font-size: 3rem;
            margin-bottom: 1rem;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }
        
        .hero p {
            font-size: 1.3rem;
            max-width: 800px;
            margin: 0 auto 2rem;
        }
        
        .welcome-text {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            padding: 2.5rem;
            border-radius: 12px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
            margin-bottom: 2rem;
            border: 1px solid rgba(255, 255, 255, 0.18);
        }
        
        .cta-buttons {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 2rem;
        }
        
        .btn {
            padding: 14px 35px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s;
            display: inline-flex;
            align-items: center;
            font-size: 1.1rem;
        }
        
        .btn-primary {
            background: var(--secondary);
            color: white;
            box-shadow: 0 4px 15px rgba(52, 152, 219, 0.4);
        }
        
        .btn-primary:hover {
            background: #2980b9;
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(52, 152, 219, 0.5);
        }
        
        .btn-secondary {
            background: transparent;
            color: white;
            border: 2px solid white;
        }
        
        .btn-secondary:hover {
            background: white;
            color: var(--secondary);
            transform: translateY(-3px);
        }
        
        .btn i {
            margin-right: 10px;
        }
        
        /* Carousel Section */
        .carousel-section {
            padding: 3rem 0;
            background: white;
        }
        
        .section-title {
            text-align: center;
            margin-bottom: 2.5rem;
            color: var(--primary);
            font-size: 2.2rem;
            position: relative;
            padding-bottom: 15px;
        }
        
        .section-title:after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 4px;
            background: var(--secondary);
            border-radius: 2px;
        }
        
        .carousel {
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }
        
        .carousel-item img {
            height: 450px;
            object-fit: cover;
        }
        
        .carousel-caption {
            background: rgba(0, 0, 0, 0.6);
            padding: 20px;
            border-radius: 8px;
            backdrop-filter: blur(5px);
        }
        
        /* Features Section */
        .features {
            padding: 5rem 0;
            background: #f8f9fa;
        }
        
        .feature-cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
            margin-top: 2rem;
        }
        
        .feature-card {
            background: white;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.08);
            transition: transform 0.3s, box-shadow 0.3s;
        }
        
        .feature-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.15);
        }
        
        .feature-img {
            height: 200px;
            overflow: hidden;
        }
        
        .feature-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s;
        }
        
        .feature-card:hover .feature-img img {
            transform: scale(1.05);
        }
        
        .feature-content {
            padding: 25px;
        }
        
        .feature-content h3 {
            color: var(--primary);
            margin-bottom: 15px;
            font-size: 1.4rem;
        }
        
        .feature-content p {
            color: #666;
            margin-bottom: 20px;
        }
        
        .feature-icon {
            font-size: 2.5rem;
            color: var(--secondary);
            margin-bottom: 20px;
        }
        
        /* Stats Section */
        .stats {
            padding: 4rem 0;
            background: linear-gradient(135deg, #0f2027, #2c5364);
            color: white;
            text-align: center;
        }
        
        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 30px;
            margin-top: 2rem;
        }
        
        .stat-item {
            padding: 25px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 12px;
            backdrop-filter: blur(5px);
            border: 1px solid rgba(255, 255, 255, 0.1);
        }
        
        .stat-number {
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 10px;
            color: var(--secondary);
        }
        
        .stat-text {
            font-size: 1.1rem;
            opacity: 0.9;
        }
        
        /* Testimonials */
        .testimonials {
            padding: 5rem 0;
            background: white;
        }
        
        .testimonial-card {
            background: #f8f9fa;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            margin: 20px;
            position: relative;
        }
        
        .testimonial-card:before {
            content: '"';
            font-size: 5rem;
            color: var(--secondary);
            opacity: 0.2;
            position: absolute;
            top: 10px;
            left: 20px;
            line-height: 1;
        }
        
        .testimonial-text {
            font-style: italic;
            margin-bottom: 20px;
            position: relative;
            z-index: 1;
        }
        
        .testimonial-author {
            display: flex;
            align-items: center;
        }
        
        .testimonial-avatar {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            overflow: hidden;
            margin-right: 15px;
        }
        
        .testimonial-avatar img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        
        .author-details h4 {
            margin: 0;
            color: var(--primary);
        }
        
        .author-details p {
            margin: 0;
            color: #666;
            font-size: 0.9rem;
        }
        
        /* Footer */
        footer {
            background: linear-gradient(135deg, #0a1920, #1a3a4a);
            color: white;
            padding: 3rem 0 1.5rem;
            box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.1);
        }
        
        .footer-content {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        
        .footer-links {
            display: flex;
            gap: 30px;
            margin: 2rem 0;
        }
        
        .footer-links a {
            color: rgba(255, 255, 255, 0.8);
            text-decoration: none;
            transition: color 0.3s;
        }
        
        .footer-links a:hover {
            color: var(--secondary);
        }
        
        .footer-content p {
            margin: 0.5rem 0;
        }
        
        .tech-stack {
            display: flex;
            align-items: center;
            margin-top: 1rem;
            gap: 15px;
        }
        
        .tech-stack i {
            color: var(--accent);
            font-size: 1.5rem;
        }
        
        .social-icons {
            display: flex;
            gap: 15px;
            margin: 1.5rem 0;
        }
        
        .social-icons a {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.1);
            color: white;
            transition: all 0.3s;
        }
        
        .social-icons a:hover {
            background: var(--secondary);
            transform: translateY(-3px);
        }
        
        /* Responsive Design */
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
            
            .cta-buttons {
                flex-direction: column;
                align-items: center;
            }
            
            .hero h1 {
                font-size: 2.2rem;
            }
            
            .hero p {
                font-size: 1.1rem;
            }
            
            .feature-cards {
                grid-template-columns: 1fr;
            }
            
            .stats-grid {
                grid-template-columns: 1fr;
            }
            
            .footer-links {
                flex-direction: column;
                gap: 15px;
                text-align: center;
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="container header-content">
            <div class="logo">
                <i class="fas fa-book-open"></i>
                <span>My Library</span>
            </div>
            <nav>
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="/library/addBookForm"><i class="fas fa-plus-circle"></i> Add Book</a></li>
                    <li><a href="/library/display"><i class="fas fa-book"></i> View Books</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <section class="hero">
        <div class="container">
            <div class="welcome-text">
                <h1>Discover Your Next Great Read</h1>
                <p>Java Training School Library - Where Knowledge Meets Imagination</p>
                <p>Access over 10,000 books, journals, and digital resources</p>
            </div>
            
            <div class="cta-buttons">
                <a href="/library/display" class="btn btn-primary">
                    <i class="fas fa-search"></i> Explore Our Collection
                </a>
                <a href="/library/addBookForm" class="btn btn-secondary">
                    <i class="fas fa-plus"></i> Contribute a Book
                </a>
            </div>
        </div>
    </section>

    <!-- Carousel Section -->
    <section class="carousel-section">
        <div class="container">
            <h2 class="section-title">Our Library Spaces</h2>
            <div id="libraryCarousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#libraryCarousel" data-bs-slide-to="0" class="active"></button>
                    <button type="button" data-bs-target="#libraryCarousel" data-bs-slide-to="1"></button>
                    <button type="button" data-bs-target="#libraryCarousel" data-bs-slide-to="2"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="https://images.unsplash.com/photo-1507842217343-583bb7270b66?ixlib=rb-4.0.3&auto=format&fit=crop&w=1350&q=80" class="d-block w-100" alt="Library Interior">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Modern Reading Areas</h5>
                            <p>Comfortable spaces designed for focused study and reading</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="https://images.unsplash.com/photo-1481627834876-b7833e8f5570?ixlib=rb-4.0.3&auto=format&fit=crop&w=1350&q=80" class="d-block w-100" alt="Book Collection">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Extensive Collection</h5>
                            <p>Over 10,000 books across various genres and subjects</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="https://images.unsplash.com/photo-1568667256549-094345857637?ixlib=rb-4.0.3&auto=format&fit=crop&w=1350&q=80" class="d-block w-100" alt="Digital Resources">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Digital Learning Hub</h5>
                            <p>Access to computers, online journals, and digital resources</p>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#libraryCarousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#libraryCarousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section class="features">
        <div class="container">
            <h2 class="section-title">Why Choose Our Library?</h2>
            <div class="feature-cards">
                <div class="feature-card">
                    <div class="feature-img">
                        <img src="https://images.unsplash.com/photo-1532012197267-da84d127e765?ixlib=rb-4.0.3&auto=format&fit=crop&w=1350&q=80" alt="Diverse Collection">
                    </div>
                    <div class="feature-content">
                        <div class="feature-icon">
                            <i class="fas fa-book"></i>
                        </div>
                        <h3>Diverse Collection</h3>
                        <p>Explore our vast collection of books spanning fiction, non-fiction, academic texts, and rare editions to satisfy every reading interest.</p>
                    </div>
                </div>
                
                <div class="feature-card">
                    <div class="feature-img">
                        <img src="https://images.unsplash.com/photo-1573164713714-d95e436ab8d6?ixlib=rb-4.0.3&auto=format&fit=crop&w=1350&q=80" alt="Digital Resources">
                    </div>
                    <div class="feature-content">
                        <div class="feature-icon">
                            <i class="fas fa-laptop"></i>
                        </div>
                        <h3>Digital Resources</h3>
                        <p>Access our extensive digital library with e-books, academic journals, and online databases available anytime, anywhere.</p>
                    </div>
                </div>
                
                <div class="feature-card">
                    <div class="feature-img">
                        <img src="https://images.unsplash.com/photo-1521587760476-6c12a4b040da?ixlib=rb-4.0.3&auto=format&fit=crop&w=1350&q=80" alt="Study Spaces">
                    </div>
                    <div class="feature-content">
                        <div class="feature-icon">
                            <i class="fas fa-users"></i>
                        </div>
                        <h3>Collaborative Spaces</h3>
                        <p>Our library offers comfortable study rooms, collaborative spaces, and quiet zones designed for productive learning sessions.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

  

    <!-- Testimonials Section -->
    <section class="testimonials">
        <div class="container">
            <h2 class="section-title">What Our Members Say</h2>
            <div class="row">
                <div class="col-md-6">
                    <div class="testimonial-card">
                        <p class="testimonial-text">This library has been an invaluable resource for my research. The staff is incredibly helpful and the collection is extensive.</p>
                        <div class="testimonial-author">
                            <div class="testimonial-avatar">
                                <img src="https://randomuser.me/api/portraits/women/65.jpg" alt="Sarah Johnson">
                            </div>
                            <div class="author-details">
                                <h4>Sarah Johnson</h4>
                                <p>Research Scholar</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="testimonial-card">
                        <p class="testimonial-text">I love the peaceful atmosphere and the wide selection of fiction. It's my favorite place to spend weekends.</p>
                        <div class="testimonial-author">
                            <div class="testimonial-avatar">
                                <img src="https://randomuser.me/api/portraits/men/32.jpg" alt="Michael Chen">
                            </div>
                            <div class="author-details">
                                <h4>Michael Chen</h4>
                                <p>Regular Member</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer>
        <div class="container footer-content">
            <div class="logo" style="color: white; margin-bottom: 1rem;">
                <i class="fas fa-book-open"></i>
                <span>My Library</span>
            </div>
           
            
            <div class="tech-stack">
                <i class="fab fa-java"></i>
                <i class="fas fa-server"></i>
                <i class="fas fa-database"></i>
            </div>
            
            <p>&copy; 2025 My Library | Built with innovation using Spring Boot & JSP</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Initialize carousel
        var myCarousel = new bootstrap.Carousel(document.getElementById('libraryCarousel'), {
            interval: 4000,
            wrap: true
        });
    </script>
</body>
</html>