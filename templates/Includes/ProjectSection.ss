<% if $Projects %>
<section class="projects">
    <div class="col">
        <div class="grid">
            <% loop $Projects.Sort('ID','DESC') %>
            <a href="$Link" class="project">
                <div class="project-meta">
                    <h3>$Title</h3>
                    <p>$Type</p>
                </div>
                <div class="card">
                    <div class="img-frame<% if $ImageBorder%> bordered<% end_if %>" <% if $ImageBorderColor %>style="border-color: $ImageBorderColor"<% end_if %>>
                        <img src="$Image.URL" alt="$Image.Alt" loading="lazy">
                    </div>
                </div>
            </a>
            <% end_loop %>
        </div>
        <% if $NumberOfProjects > 0 %>
        <div class="see-more"><a href="$ProjectPageLink">More Projects</a></div>
        <% end_if %>
    </div>
</section>
<% end_if %>
