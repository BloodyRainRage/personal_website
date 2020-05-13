<#import "main.ftlh" as main>

<@main.main>
    <#list posts as post>
        <div class="card">
            <div class="card-image waves-effect waves-block waves-light">
                <img class="activator" src="${post.img}">
            </div>
            <div class="card-content">
                    <span class="card-title activator grey-text text-darken-4">${post.title} -- by ${post.creator}<i
                                class="material-icons right">more_vert</i></span>

                <p>
                    <#list post.tags as tag>
                        <a href="/?query=${tag}">${tag}</a>
                    </#list>
                </p>
            </div>
            <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4">${post.title}<i
                                    class="material-icons right">close</i></span>
                <p>${post.body}</p>
            </div>
        </div>
    </#list>
</@main.main>