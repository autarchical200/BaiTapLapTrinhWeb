<%@page import="java.util.random.RandomGenerator.ArbitrarilyJumpableGenerator"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="../errorPage.html"
	import="pxu.edu.vn.bt1.ProductModel" import="java.util.*"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!public ArrayList<ProductModel> getProducts() {
		ArrayList<ProductModel> productList = new ArrayList<>();

		// Retrieve the list of products from the data source (e.g., database)
		// Add products to the productList
		productList.add(new ProductModel(1, "Product 1", 10.99));
		productList.add(new ProductModel(2, "Product 2", 19.99));
		productList.add(new ProductModel(3, "Product 3", 5.99));

		return productList;
	}%>
	<div class="container">
        <h1 class="mt-4">Product List</h1>
        <table class="table">
            <thead>
                <tr>
                    <th>Product ID</th>
                    <th>Product Name</th>
                    <th>Product Price</th>
                </tr>
            </thead>
            <tbody>
                <% ArrayList<ProductModel> dssp = getProducts();
                   for(ProductModel itr: dssp){
                %>
                <tr>
                    <td><%= itr.getProductID() %></td>
                    <td><%= itr.getProductName() %></td>
                    <td><%= itr.getPrice() %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>