<% if $Tags.exists %>
    <div class="tags">
    <% loop $Tags %>
        <a href="$Link" class="blog-post-tag" title="$Title">$Title</a>
    <% end_loop %>
    </div>
<% end_if %>
