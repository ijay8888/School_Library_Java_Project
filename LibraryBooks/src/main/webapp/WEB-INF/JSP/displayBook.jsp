<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Library - Book List</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
    
    html, body {
  height: 100%;   /* full height */
  margin: 0;
  display: flex;
  flex-direction: column;
}

body {
  flex: 1;
}

section {
  flex: 1;  /* pushes footer down */
}
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
		}
		
		.container {
			width: 100%;
			max-width: 1200px;
			margin: 0 auto;
			padding: 0 20px;
		}
		
		/* Header */
		header {
			background: linear-gradient(135deg, #0f2027, #2c5364);
		    color: white;
		    padding: 1rem 0;
		    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
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
		
		/* Section */
		section {
			padding: 2rem 0;
		}
		
		h2 {
			text-align: center;
			margin-bottom: 1rem;
			color: var(--primary);
		}
		
		/* Table */
		table {
			width: 100%;
			border-collapse: collapse;
			margin: 2rem 0;
			background: white;
			border-radius: 8px;
			overflow: hidden;
			box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
		}
		
		th, td {
			padding: 12px 15px;
			text-align: center;
			border-bottom: 1px solid #ddd;
		}
		
		th {
			background: var(--secondary);
			color: white;
			text-transform: uppercase;
			font-size: 0.9rem;
		}
		
		tr:hover {
			background: #f1f1f1;
		}
		
		.status-available {
			color: green;
			font-weight: bold;
		}
		
		.status-borrowed {
			color: var(--accent);
			font-weight: bold;
		}
		
		/* Buttons */
		.btn {
			padding: 6px 14px;
			border-radius: 20px;
			text-decoration: none;
			font-size: 0.85rem;
			font-weight: 600;
			transition: all 0.3s;
			margin: 2px;
			display: inline-block;
		}
		
		.btn i {
			margin-right: 5px;
		}
		
		.btn-borrow {
			background: #27ae60;
			color: white;
		}
		
		.btn-borrow:hover {
			background: #219150;
		}
		
		.btn-return {
			background: #f1c40f;
			color: black;
		}
		
		.btn-return:hover {
			background: #d4ac0d;
			color: white;
		}
		
		.btn-edit {
			background: #2980b9;
			color: white;
		}
		
		.btn-edit:hover {
			background: #2471a3;
		}
		
		.btn-delete {
			background: #e74c3c;
			color: white;
		}
		
		.btn-delete:hover {
			background: #c0392b;
		}
		
		.action-buttons {
			display: flex;
			justify-content: center;
			align-items: center;
			gap: 4px; /* Space between buttons */
			flex-wrap: nowrap; /* Prevent wrapping */
			width: 100%;
			padding: 12px 0;
		}
		
		.action-button {
			padding: 12px 24px;
			font-size: 15px;
			border-radius: 40px;
			border: none;
			display: flex;
			align-items: center;
			cursor: pointer;
			min-width: 80px;
			min-height: 30px;
			box-shadow: 0 1px 2px rgba(0, 0, 0, 0.04);
			transition: transform 0.1s;
			text-decoration: none;
			font-weight: 500;
		}
		
		/* Example color styles for buttons */
		.action-borrow {
			background: #ffdd45;
			color: #222;
		}
		
		.action-return {
			background: #f7c600;
			color: #222;
		}
		
		.action-edit {
			background: #338ccd;
			color: #fff;
		}
		
		.action-delete {
			background: #ef6060;
			color: #fff;
		}
		
		.action-button i {
			margin-right: 8px;
			font-size: 20px;
		}
		
		/* Footer */
		footer {
			background: linear-gradient(135deg, #0f2027, #2c5364);
		    color: white;
		    padding: 1rem 0;
		    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
		}
		
		.footer-content {
			display: flex;
			flex-direction: column;
			align-items: center;
		}
		
		.footer-content p {
			margin: 0.5rem 0;
		}
		
		.tech-stack {
			display: flex;
			align-items: center;
			margin-top: 1rem;
		}
		
		.tech-stack i {
			color: var(--accent);
			margin: 0 5px;
		}
		
		@media ( max-width : 768px) {
			.header-content {
				flex-direction: column;
				text-align: center;
			}
			nav ul {
				margin-top: 1rem;
				justify-content: center;
			}
			nav ul li {
				margin: 0 10px;
			}
			.cta-buttons {
				flex-direction: column;
				align-items: center;
			}
			.hero h1 {
				font-size: 2rem;
			}
			.hero p {
				font-size: 1rem;
			}
		}
		
		#toast {
		  visibility: hidden;
		  min-width: 250px;
		  background: linear-gradient(135deg, #a8e063, #56ab2f);
		  color: white;
		  text-align: center;
		  border-radius: 12px;
		  padding: 12px 20px;
		  position: fixed;
		  z-index: 1000;
		  top: 100px;   /* Adjust so it’s just below your header */
		  right: 20px; 
		  font-size: 15px;
		  font-weight: bold;
		  box-shadow: 0 4px 6px rgba(0,0,0,0.2);
		  transition: all 0.5s ease;
		}
		
		#toast.show {
		  visibility: visible;
		  transform: translateY(0);
		}
		
		.toast.success {
		  background: linear-gradient(135deg, #a8e063, #56ab2f); /* green */
		}
		.toast.error {
		  background: linear-gradient(135deg, #ff4e50, #c0392b); /* red */
		}

		
		
		/* Modal background */
			.modal {
			  display: none; 
			  position: fixed; 
			  z-index: 2000; 
			  left: 0;
			  top: 0;
			  width: 100%; 
			  height: 100%; 
			  background-color: rgba(0,0,0,0.5);
			}
			
			/* Modal content box */
			.modal-content {
			  background: #fff;
			  margin: 10% auto;
			  padding: 20px;
			  border-radius: 10px;
			  width: 400px;
			  text-align: center;
			  box-shadow: 0 5px 15px rgba(0,0,0,0.3);
			}
			
			.modal-content h2 {
			  margin-bottom: 15px;
			  color: var(--primary);
			}
			
			.modal-content input[type="number"] {
			  padding: 8px;
			  margin: 10px 0;
			  width: 80%;
			  border: 1px solid #ccc;
			  border-radius: 6px;
			}
			
			/* Close button */
			.close {
			  float: right;
			  font-size: 20px;
			  cursor: pointer;
			  color: #aaa;
			}
			
			.close:hover {
			  color: black;
			}
			
			
		/* Modal Container */
		.modal-content {
		  width: 420px;
		  max-width: 94vw;
		  padding: 30px 30px 20px 30px;
		  border-radius: 18px;
		  background: #fff;
		  box-shadow: 0 10px 30px rgba(52,152,219,0.13), 0 2px 8px rgba(0,0,0,0.06);
		  animation: modal-pop 0.25s cubic-bezier(.54,.14,.33,.92);
		  position: relative;
		}
		
		/* Modal animation */
		@keyframes modal-pop {
		  from { transform: scale(0.92); opacity: 0; }
		  to   { transform: scale(1); opacity: 1; }
		}
		
		/* Modal Title */
		.modal-header h2 {
		  text-align: center;
		  font-size: 2rem;
		  color: #338ccd;
		  font-weight: 700;
		  margin-bottom: 0;
		  display: flex;
		  align-items: center;
		  justify-content: center;
		  gap: 8px;
		  padding: 0 0 16px 0;
		}
		
		/* Close Button */
		.btn-close {
		  position: absolute;
		  right: 18px;
		  top: 16px;
		  font-size: 1.6rem;
		  color: #bbb;
		  cursor: pointer;
		  transition: color 0.2s;
		  font-weight: bold;
		  background: none;
		  border: none;
		  z-index: 2;
		}
		.btn-close:hover {
		  color: #e74c3c;
		}

		/* Modal Body Inputs */
		.modal-body {
		  padding: 0 5px 0 5px;
		}
		
		.form-label {
		  display: block;
		  margin-bottom: 6px;
		  color: #2980b9;
		  font-weight: 600;
		  letter-spacing: 0.3px;
		  font-size: 15px;
		  text-align: left;
		}
		
		.form-control input[type="text"],
.modal-body input[type="number"]{
		  width: 100%;
		  border-radius: 9px;
		  border: 1px solid #d4e6f1;
		  padding: 11px 13px;
		  font-size: 16px;
		  margin-bottom: 18px;
		  background: #f7fbff;
		  box-shadow: 0 1px 6px rgba(52, 152, 219, 0.09);
		  transition: border 0.2s, box-shadow 0.2s;
		}
		.form-control:focus {
		  border-color: #338ccd;
		  box-shadow: 0 0 10px 2px #b9eafd;
		  outline: none;
		}
		
		/* Modal Footer/Button */
		.modal-footer .btn {
		  display: inline-block;
		  background: linear-gradient(135deg, #338ccd, #6dd5ed);
		  color: white;
		  font-size: 17px;
		  padding: 12px 38px;
		  border-radius: 15px;
		  font-weight: bold;
		  border: none;
		  box-shadow: 0 2px 10px rgba(52,152,219,0.11);
		  transition: 0.25s;
		  margin-top: 6px;
		}
		.modal-footer .btn:hover,
		.btn-edit:hover {
		  background: linear-gradient(135deg, #6dd5ed, #338ccd);
		  transform: translateY(-2px);
		  box-shadow: 0 5px 15px rgba(0,0,0,0.16);
		}
		
		.form-control {
		  width: 100%;
		  border-radius: 12px;
		  border: 1px solid #d4e6f1;
		  padding: 16px 18px;
		  font-size: 18px;
		  margin-bottom: 18px;
		  background: #f7fbff;
		  box-shadow: 0 1px 6px rgba(52, 152, 219, 0.09);
		  transition: border 0.2s, box-shadow 0.2s;
		  outline: none;
		}
		
		.form-control:focus {
		  border-color: #338ccd;
		  box-shadow: 0 0 10px 2px #b9eafd;
		}
	/* Borrow Modal same style as Edit */
.modal-content {
  width: 420px;
  max-width: 94vw;
  padding: 30px 30px 20px 30px;
  border-radius: 18px;
  background: #fff;
  box-shadow: 0 10px 30px rgba(255, 221, 85, 0.25), 0 2px 8px rgba(0,0,0,0.06);
  animation: modal-pop 0.25s cubic-bezier(.54,.14,.33,.92);
  position: relative;
}

/* Modal animation */
@keyframes modal-pop {
  from { transform: scale(0.92); opacity: 0; }
  to   { transform: scale(1); opacity: 1; }
}


.btn-close {
  position: absolute;
  right: 18px;
  top: 16px;
  font-size: 1.6rem;
  color: #bbb;
  cursor: pointer;
  transition: color 0.2s;
  font-weight: bold;
  background: none;
  border: none;
  z-index: 2;
}
.btn-close:hover {
  color: #f1c40f;
}

.modal-body {
  padding: 15px 20px;
}


.modal-footer .btn-borrow:hover {
  background: linear-gradient(135deg, #ffca28, #ffd54f);
  transform: translateY(-2px);
  box-shadow: 0 5px 15px rgba(255, 213, 79, 0.8);
}
	

		
</style>
</head>
<body>
    <!-- Header -->
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

    <!-- Book Table -->
    <section>
        <div class="container">
            <h2><i class="fas fa-book-open"></i> Library Collection</h2>

			<c:if test="${not empty msg}">
			    <c:set var="msgType" value="${empty msgType ? 'success' : msgType}" />
			    <div id="toast" class="toast ${msgType}">
			        ${msg}
			    </div>
			    <script>
			        const toast = document.getElementById("toast");
			        toast.classList.add("show");
			        setTimeout(() => toast.classList.remove("show"), 3000);
			    </script>
			</c:if>


			<!-- Search Bar -->
			<div class="search-container"
				style="text-align: center; margin: 20px 0;">
				<form action="${pageContext.request.contextPath}/library/search"
					method="get" style="display: inline-flex; gap: 10px;">
					<input type="text" name="keyword"
						placeholder="Search by name or author..." value="${param.keyword}"
						style="padding: 10px; width: 300px; border-radius: 20px; border: 1px solid #ccc;">
					<button type="submit" class="btn btn-edit">
						<i class="fas fa-search"></i> Search
					</button>
					<a href="${pageContext.request.contextPath}/library/display"
						class="btn btn-delete"> <i class="fas fa-undo"></i> Reset
					</a>
				</form>
			</div>
			
			<!-- Borrow Modal -->
				<div id="borrowModal" class="modal">
				  <div class="modal-content">
				    <div class="modal-header">
				      <span class="btn-close" onclick="modal.style.display='none'">&times;</span>
				     <h2 style="text-align:center; 
					           font-size: 2rem; 
					           font-weight: 700; 
					           background: linear-gradient(135deg, #338ccd, #6dd5ed); 
					           -webkit-background-clip: text; 
					           -webkit-text-fill-color: transparent; 
					           margin-bottom: 2px;">
					  Borrow Book
					</h2>

				    </div>
				    <form id="borrowForm" method="post">
				      <div class="modal-body">
				        <label class="form-label" for="days">Number of Days:</label>
				        <input type="number" class="form-control" name="days" id="days" min="1" required />
				      </div>
				      <div class="modal-footer" style="text-align:center;">
				        <input type="submit" value="Borrow Book" class="btn btn-borrow" />
				      </div>
				    </form>
				  </div>
				</div>

			
			<!-- Edit Modal -->
			<div id="editModal" class="modal">
			  <div class="modal-content">
			    <div class="modal-header">
			      <span class="btn-close" onclick="closeEditModal()">&times;</span>
			      <h2><i class="fas fa-edit" style="color:#338ccd; margin-right:10px;"></i>Edit Book</h2>
			    </div>
			    <form id="editForm" method="post">
			      <input type="hidden" name="id" id="editId" />
			      <div class="modal-body">
					  <label class="form-label" for="editName">Book Name:</label>
					  <input type="text" class="form-control" name="name" id="editName" required />
					
					  <label class="form-label" for="editAuthor">Author:</label>
					  <input type="text" class="form-control" name="author" id="editAuthor" required />
					
					  <label class="form-label" for="editPrice">Price:</label>
					  <input type="number" class="form-control" name="price" id="editPrice" required />
				 </div>

			      <div class="modal-footer" style="text-align:center;">
			        <input type="submit" value="Update" class="btn btn-edit" />
			      </div>
			    </form>
			  </div>
			</div>


			<table>
                <tr>
                    <th>ID</th>
                    <th>Book Name</th>
                    <th>Author</th>
                    <th>Price</th>
                    <th>Status</th>
                    <th>Borrow Date</th>
                    <th>Borrowed For (Days)</th>
                    <th>Actions</th>
                </tr>
                <c:forEach var="book" items="${books}" varStatus="status">
                    <tr>
	                        <td>${status.index + 1}</td>
	                        <td>${book.name}</td>
	                        <td>${book.author}</td>
	                        <td>${book.price}</td>
                        <td>
                            <c:choose>
                                <c:when test="${book.status == 'available'}">
                                    <span class="status-available">Available</span>
                                </c:when>
                                <c:otherwise>
                                    <span class="status-borrowed">Borrowed</span>
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${book.borrowDate != null}">
                                    ${book.borrowDate}
                                </c:when>
                                <c:otherwise>-</c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${book.borrowedForDays > 0}">
                                    ${book.borrowedForDays}
                                </c:when>
                                <c:otherwise>-</c:otherwise>
                            </c:choose>
                        </td>
						<td>
							<div class="action-buttons">
								<c:if test="${book.status == 'available'}">
									<a href="javascript:void(0);" 
									   onclick="openBorrowModal(${book.id})" 
									   class="action-button action-borrow">
									   <i class="fas fa-hand-holding"></i> Borrow
									</a>

								</c:if>
								<c:if test="${book.status == 'borrowed'}">
									<a href="/library/return/${book.id}"
										class="action-button action-return"> <i
										class="fas fa-undo"></i> Return
									</a>
								</c:if>
								<a href="javascript:void(0);"
								   onclick="openEditModal(${book.id}, '${book.name}', '${book.author}', ${book.price})"
								   class="action-button action-edit">
								   <i class="fas fa-edit"></i> Edit
								</a>

								<a href="/library/delete/${book.id}"
									class="action-button action-delete"
									onclick="return confirm('Are you sure?')"> <i
									class="fas fa-trash"></i> Delete
								</a>
							</div>
						</td>


					</tr>
                </c:forEach>
            </table>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container footer-content">
            <p>&copy; 2025 My Library | Built using Spring Boot & JSP</p>
            <div class="tech-stack">
                <i class="fab fa-java"></i>
                <i class="fas fa-server"></i>
                <i class="fas fa-database"></i>
            </div>
        </div>
    </footer>
    
    <!-- Always load modal script -->
			<script>
			  const modal = document.getElementById("borrowModal");
			  const closeBtn = document.querySelector(".close");
			  const borrowForm = document.getElementById("borrowForm");
			  const daysInput = document.getElementById("days"); //  grab input
			
			  function openBorrowModal(bookId) {
			    modal.style.display = "block";
			    borrowForm.action = "/library/borrow/" + bookId;
			
			    //  Auto-focus the number of days input
			    setTimeout(() => daysInput.focus(), 100);
			  }
			
			  closeBtn.onclick = () => modal.style.display = "none";
			  window.onclick = (event) => { if (event.target == modal) modal.style.display = "none"; }
			</script>
			
			
			<script>
				  const editModal = document.getElementById("editModal");
				  const editForm = document.getElementById("editForm");
				
				  function openEditModal(id, name, author, price) {
				    document.getElementById("editId").value = id;
				    document.getElementById("editName").value = name;
				    document.getElementById("editAuthor").value = author;
				    document.getElementById("editPrice").value = price;
				
				    editForm.action = "/library/update/" + id;
				    editModal.style.display = "block";
				  }
				
				  function closeEditModal() {
				    editModal.style.display = "none";
				  }
				
				  // Close if user clicks outside
				  window.onclick = (event) => {
				    if (event.target == editModal) {
				      editModal.style.display = "none";
				    }
				  };
			</script>    
</body>
</html>
