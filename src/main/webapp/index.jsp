<html>
    <body>
        <h1>
            <%
            java.util.Date date = new java.util.Date();
            int hours = date.getHours();
            if (hours < 12) {
                out.print("Good afternoon, Dylan, Welcome to COMP367");
            } else {
                out.print("Good morning, Dylan, Welcome to COMP367");
            }
            %>
        </h1>
    </body>
</html>
