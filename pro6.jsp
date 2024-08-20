<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Process Input</title>
</head>
<body>
    <h1>Processing Input</h1>
    
    <% 
        // Retrieve form data
        String numberStr = request.getParameter("number");
        int number = 0;
        
        try {
            // Convert input to integer
            number = Integer.parseInt(numberStr);
            
            // Trigger an error for demonstration
            if (number == 0) {
                throw new ArithmeticException("You entered zero, which is not allowed.");
            }
            
            // Display result if no error
            out.println("<p>You entered: " + number + "</p>");
            
        } catch (Exception e) {
            // Forward to the error page
            request.setAttribute("errorMessage", e.getMessage());
            pageContext.forward("pro6e.jsp");
        }
    %>
</body>
</html>
