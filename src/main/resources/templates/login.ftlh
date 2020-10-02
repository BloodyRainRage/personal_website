<!DOCTYPE html>
<html lang="en">
<head>
    <title>Please sign in</title>
</head>
<body>
<div>
    <form method="post" action="/login">
        <h2>Please sign in</h2>
        <div role="alert">You have been signed out</div>        <p>
            <label for="username" >Username</label>
            <input type="text" id="username" name="username" placeholder="Username" required autofocus>
        </p>
        <p>
            <label for="password" >Password</label>
            <input type="password" id="password" name="password" placeholder="Password" required>
        </p>
        <input name="_csrf" type="hidden" value="${_csrf.token}" />
        <button  type="submit">Sign in</button>
    </form>
</div>
<a href="/registration">Add new user</a>
</body>
</html>