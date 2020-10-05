<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>Yol, the dragon - Main page</title>
    <link href="/css/icon.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="/css/materialize.min.css" media="screen,projection"/>
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body bgcolor="#424242">
<div class="container">
    <nav class="sidenav-trigger center-align grey darken-4">
        <div class="nav-wrapper">
            <a href="/" class="brand-logo center">Yol, the dragon</a>
            <a href="#" data-target="slide" class="sidenav-trigger"><i class="material-icons">menu</i></a>
            <ul class="right hide-on-med-and-down">
                <li><a href="/">Blog</a></li>
                <li><a href="/">Projects</a></li>
                <li><a href="about">About</a></li>
                <li>
                    <div>
                        <form class="grey darken-4 white-text" action="/logout" method="post">
                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <input class="btn-flat white-text" type="submit" value="Sign Out"/>
                        </form>
                    </div>
                </li>
                <#--                    <li><a href="/">Mobile</a></li>-->
            </ul>
        </div>
    </nav>

    <ul class="sidenav " id="slide">
        <li><a href="/">Blog</a></li>
        <li><a href="/">Projects</a></li>
        <li><a href="about">About</a></li>
        <li>
            <div>
                <form action="/logout" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                    <input class="btn-flat" type="submit" value="Sign Out"/>
                </form>
            </div>
        </li>
    </ul>
    <div style="padding-top: 5%">

    </div>
    <#--    <div>-->
    <#--        <form action="/logout" method="post">-->
    <#--            <input type="hidden" name="_csrf" value="${_csrf.token}"/>-->
    <#--            <input type="submit" value="Sign Out"/>-->
    <#--        </form>-->
    <#--    </div>-->

    <div class="row" style="margin-top: 3%">
        <form method="post">
            <input type="text" name="title" placeholder="Enter title" />
            <input type="text" name="tags" placeholder="Tags splited by space">
            <textarea name="body" cols="10" rows="5"></textarea>
            <input name="_csrf" type="hidden" value="${_csrf.token}" />
            <button type="submit">Add post</button>
        </form>
    </div>


    <footer class="page-footer grey darken-4">
        <div class="container">
            <div class="row">
                <div class="col l6 s12">
                    <h5 class="white-text">Additional info</h5>
                    <p class="grey-text text-lighten-4">You can use rows and columns here to organize your footer
                        content.</p>
                </div>
                <div class="col l4 offset-l2 s12">
                    <h5 class="white-text">External Links</h5>
                    <ul>
                        <li><a class="grey-text text-lighten-3" href="https://vk.com/bloodyrainrage">My VK</a></li>
                        <li><a class="grey-text text-lighten-3" href="https://t.me/bloodyrainrage">My Telegram</a>
                        </li>
                        <li><a class="grey-text text-lighten-3"
                               href="https://www.linkedin.com/in/egor-migaenko-71119118b/">My LinkedIn</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-copyright">
            <div class="container">
                &nbsp;&nbsp;© 2020 Yol, the dragon
                <a class="grey-text text-lighten-4 right" href="#">More Links</a>
            </div>
        </div>
    </footer>
</div>

<script type="text/javascript" src="/js/materialize.min.js"></script>
<script type="text/javascript" src="/js/jquery-3.5.0.min.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        var elems = document.querySelectorAll('.sidenav');
        M.Sidenav.init(elems, {});
    });

    window.addEventListener("resize", displayTabs);

    function displayTabs() {
        if (window.innerWidth < 800) {
            document.getElementById("feedID").setAttribute("class", "col s12");
        } else if (window.innerWidth > 800) {
            document.getElementById("feedID").setAttribute("class", "col s8 offset-s1");
        }
    }

    displayTabs();

</script>
</body>
</html>