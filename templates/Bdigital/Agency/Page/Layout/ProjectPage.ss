<h1 class="sr-only">$Title</h1>
<div class="project-page">
        <% with $Project %>
            <% if $Title %>
            <section class="view-project">
                <div class="col col-half project">
                    <div class="project-cover">
                        <div class="img-frame<% if $ImageBorder%> bordered<% end_if %>" <% if $ImageBorderColor %>style="border-color: $ImageBorderColor"<% end_if %>>
                            <img src="$Image.URL" alt="$Image.Alt" loading="lazy">
                        </div>
                    </div>
                </div>
                <div class="col col-half project-meta">
                    <h2 class="project-title">$Title</h2>
                    <p>$Type</p>
                    <table>
                        <tr>
                            <th>Project Date</th>
                            <td>$StartDate.Format('MMMM y') ~ <%if $EndDate %>$EndDate.Format('MMMM y')<% else %> Ongoing <% end_if %></td>
                        </tr>
                        <tr>
                            <th>Designer</th>
                            <td>$Designer</td>
                        </tr>
                        <tr>
                            <th>Role</th>
                            <td>$Role</td>
                        </tr>
                        <% if $Tools %>
                        <tr>
                            <th>Tools</th>
                            <td>
                                <ul>
                                    <% loop $getTagList("Tools") %>
                                        <li>$Title</li>
                                    <% end_loop %>
                                </ul>
                            </td>
                        </tr>
                        <% end_if %>
                        <% if $Stack %>
                        <tr>
                            <th>Stack</th>
                            <td>
                                <ul>
                                    <% loop $getTagList("Stack") %>
                                    <li>$Title</li>
                                    <% end_loop %>
                                </ul>
                            </td>
                        </tr>
                        <% end_if %>
                        <% if $Platform %>
                        <tr>
                            <th>Platform</th>
                            <td>$Platform</td>
                        </tr>
                        <% end_if %>
                        <% if $ExternalLink %>
                        <tr>
                            <th>Visit Site</th>
                            <td><a href="$ExternalLink" target="_blank">$ExternalLink</a></td>
                        </tr>
                        <% end_if %>
                    </table>
                    <% if $Content %>
                    $Content
                    <% end_if %>
                </div>
            </section>
            <% end_if %>
        <% end_with %>
<% include ProjectSection %>
</div>
