<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Registration</title>
</head>
<body>
Add new user

<div>
    <form method="post" action="/registration">
        <h2>Add new user</h2>
            <label for="username" >Username</label>
            <input type="text" id="username" name="username" placeholder="Username" required autofocus>
        </p>
        <p>
            <label for="password" >Password</label>
            <input type="password" id="password" name="password" placeholder="Password" required>
        </p>
        <input name="_csrf" type="hidden" value="${_csrf.token}" />
        <button  type="submit">Register</button>
    </form>
</div>
</body>
</html>