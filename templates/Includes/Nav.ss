<section id="nav">
    <a href="/" class="logo-holder">
        <img src="$ThemeDir/img/bdigital-mono-logo.png" alt="bdigital logo" class="logo">
        <img src="$ThemeDir/img/bdigital-logo.png" alt="bdigital logo" class="alt-logo">
    </a>
    <label for="menu-toggle" class="menu-toggle"></label>
    <input type="checkbox" id="menu-toggle">
    <nav>
        <ul>
            <% loop $Menu(1) %>
            <li>
                <a href="$Link">$MenuTitle</a>
            </li>
            <% end_loop %>
        </ul>
    </nav>
</section>
