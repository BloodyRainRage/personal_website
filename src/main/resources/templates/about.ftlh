<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Yol, the dragon - About</title>
    <link href="/css/icon.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="/css/materialize.min.css" media="screen,projection"/>
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body bgcolor="#424242">
<div class="container">
    <nav class="sidenav-trigger grey darken-4">
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
                            <input class="waves-effect  btn-flat " type="submit" value="Sign Out"/>
                        </form>
                    </div>
                </li>
            </ul>
        </div>
    </nav>

    <ul class="sidenav " id="slide">
        <li><a href="/">Blog</a></li>
        <li><a href="/">Projects</a></li>
        <li>
            <div>
                <form class="grey darken-4 white-text" action="/logout" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                    <input class="waves-effect  btn-flat " type="submit" value="Sign Out"/>
                </form>
            </div>
        </li>
    </ul>

    <div class="row" style="margin-top: 3%">
        <div id="aboutID" class="col s8">
            <div class="card">
                <div style="padding: 5%">
                    <h6><b>About me</b></h6><br>
                    <p>Well, hello! My name is Egor Migaenko. I am a programmer and I prefer such programming languages
                        as Java, C#. I also able to use C/C++. Time to time I use python.
                    <p>I was studying in St. Petersburg Petrovskiy College as programmer.
                    <p>While studying I was participating in regional stage WorldSkills Russia 2017 championship in
                        direction of business software solution as C# programmer. While this championship I also used
                        MySQL. My result is second place on this
                        championship.
                    <p>Currently I'm studying in St. Petersburg Polytechnic University as software engineer.
                    <p>&nbsp;
                    <p><h6><b>About this site</b></h6><br>
                    <p>This is my personal website I made to try Spring framework.
                    <p>I'll use it to post my thoughts and updates of projects in <a href="/">blog</a> section.
                    <p>Completed projects will be in projects section

                </div>
            </div>
        </div>
        <div class="col s4">
            <div class="card">
                <div class="card-image">
                    <img src="images/aboutpic.jpg">
                </div>
            </div>
        </div>
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
<#--<script>-->
<#--    document.addEventListener('DOMContentLoaded', function () {-->
<#--        var elems = document.querySelectorAll('.sidenav');-->
<#--        M.Sidenav.init(elems, {});-->
<#--    });-->

<#--    window.addEventListener("resize", displayTabs);-->

<#--    function displayTabs() {-->
<#--        if (window.innerWidth < 800) {-->
<#--            document.getElementById("feedID").setAttribute("class", "col s12");-->
<#--        } else if (window.innerWidth > 800) {-->
<#--            document.getElementById("feedID").setAttribute("class", "col s8 offset-s1");-->
<#--        }-->
<#--    }-->

<#--    displayTabs();-->

<#--</script>-->
</body>
</html>
