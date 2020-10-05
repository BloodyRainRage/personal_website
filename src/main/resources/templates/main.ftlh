<#macro main>
    <!DOCTYPE html>

    <html lang="en">
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
                    <li><a href="controlpage">Controll Page</a></li>
                    <#--                    <li><a href="/">Mobile</a></li>-->
                </ul>
            </div>
        </nav>

        <ul class="sidenav " id="slide">
            <li><a href="/">Blog</a></li>
            <li><a href="/">Projects</a></li>
            <li><a href="about">About</a></li>
            <li><a href="controlpage">Controll Page</a></li>
        </ul>
        <div style="padding-top: 5%">

        </div>
        <#--        <div class="container">-->
        <nav>
            <div class="row nav-wrapper grey darken-4">
                <form>
                    <div class="input-field">
                        <input name="query" id="search" type="search" required >
                        <label class="label-icon" for="search"><i class="material-icons">search</i></label>
                        <i class="material-icons">close</i>
                    </div>
                </form>
            </div>
        </nav>
        <#--        </div>-->


        <div class="row">
            <div id="feedID" class="col s8 offset-s1">
                <#nested>
            </div>
            <#--            <ul class="collection grey darken-4">-->
            <#--                <li class="collection-item grey darken-4">qwewewewe</li>-->
            <#--                <li class="collection-item grey darken-4">qwewewewe</li>-->
            <#--                <li class="collection-item grey darken-4">qwewewewe</li>-->
            <#--                <li class="collection-item grey darken-4"><a href="/" class="white-text">qwewewewe</a></li>-->
            <#--            </ul>-->
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
</#macro>