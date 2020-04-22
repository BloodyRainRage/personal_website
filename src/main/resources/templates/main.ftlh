<#macro main>
    <!DOCTYPE html>

    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Main page</title>
        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="/css/materialize.min.css" media="screen,projection"/>

        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>
    <body bgcolor="#424242">
    <div class="container">
        <nav>
            <div class="nav-wrapper grey darken-4">
                <a href="#" class="brand-logo">Logo</a>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="sass.html">Sass</a></li>
                    <li><a href="badges.html">Components</a></li>
                    <li><a href="collapsible.html">JavaScript</a></li>
                </ul>
            </div>
        </nav>

        <nav>
            <div class="nav-wrapper grey darken-4">
                <form>
                    <div  class="input-field">
                        <input name="query" id="search" type="search" required>
                        <label class="label-icon" for="search"><i class="material-icons">search</i></label>
                        <i class="material-icons">close</i>
                    </div>
                </form>
            </div>
        </nav>

        <div class="row">
            <div class="col s6 offset-s2">
                <#nested >
            </div>
            <div class="col s2">
<#--                <p> qwe-->
<#--                <p> qwe-->
<#--                <p> qwe-->
<#--                <p> qwe-->
<#--                <p> qwe-->
<#--                <p> qwe-->
<#--                <p> qwe-->
            </div>
        </div>


        <footer class="page-footer grey darken-4">
            <div class="container">
                <div class="row">
                    <div class="col l6 s12">
                        <h5 class="white-text">Footer Content</h5>
                        <p class="grey-text text-lighten-4">You can use rows and columns here to organize your footer
                            content.</p>
                    </div>
                    <div class="col l4 offset-l2 s12">
                        <h5 class="white-text">Links</h5>
                        <ul>
                            <li><a class="grey-text text-lighten-3" href="#!">Link 1</a></li>
                            <li><a class="grey-text text-lighten-3" href="#!">Link 2</a></li>
                            <li><a class="grey-text text-lighten-3" href="#!">Link 3</a></li>
                            <li><a class="grey-text text-lighten-3" href="#!">Link 4</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer-copyright">
                <div class="container">
                    © 2020 Yol the dragon
                    <a class="grey-text text-lighten-4 right" href="#!">More Links</a>
                </div>
            </div>
        </footer>
    </div>
    <script type="text/javascript" src="/js/materialize.min.js"></script>
    </body>
    </html>
</#macro>