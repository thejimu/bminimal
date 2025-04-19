<section class="blog-posts">
    <div class="col">
        <% if $Action == 'tag' %>
            <h1 class="tag-title">$MetaTitle</h1>
        <% end_if %>
        <div class="grid">
            <% if $PaginatedList.Exists %>
            <% loop $PaginatedList %>
                <% include BlogCard %>
            <% end_loop %>
            <% else %>
            <% loop $BlogPosts %>
                <% include BlogCard %>
            <% end_loop %>
            <% end_if %>
        </div>
        <% if $NumberOfPosts > 0 %>
        <div class="see-more"><a href="#">More Insights</a></div>
        <% end_if %>
        <% if $PaginatedList %>
            <% with $PaginatedList %>
                <% include SilverStripe\\Blog\\Pagination %>
            <% end_with %>
        <% end_if %>
    </div>
</section>
