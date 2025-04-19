<h1 class="sr-only">$Title</h1>
<% if $ShowHeroSection %>
    <% include HeroSection %>
<% end_if %>
<% if $ShowProjects %>
    <h2 class="sr-only">Projects</h2>
    <% include ProjectSection %>
<% end_if %>
<% if $ShowBlog %>
    <h3 class="sr-only">Blog</h3>
    <% include BlogSection %>
<% end_if %>
