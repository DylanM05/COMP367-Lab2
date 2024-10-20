<html>
    <body>
        <h1>
            <%
            java.util.Date date = new java.util.Date();
            int hours = date.getHours();
            if (hours < 12) {
                out.println("Good morning, John, Welcome to COMP367");
            } else {
                out.println("Good afternoon, John, Welcome to COMP367");
            }
            %>
        </h1>
    </body>
</html>
