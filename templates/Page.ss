<!--- bminimal, the bdigital theme crafted in taipei with 🩷 by james bell -->
<!DOCTYPE html>
<html lang="$ContentLocale">
<head>
    <% base_tag %>
    <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> | $SiteConfig.Title - $SiteConfig.Tagline</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">
    <meta name="description" content="<% if $MetaDescription %>$MetaDescription<% else_if $ContentMeta %>$ContentMeta<% else_if $HeroContent.exists %>$HeroContent.FirstParagraph<% else_if $Content.exists %>$Content.FirstParagraph<% else %>$Title | $SiteConfig.Title -  $SiteConfig.Tagline<% end_if%>">
    <meta property="og:description" content="<% if $MetaDescription %>$MetaDescription<% else_if $ContentMeta %>$ContentMeta<% else_if $HeroContent.exists %>$HeroContent.FirstParagraph<% else_if $Content.exists %>$Content.FirstParagraph<% else %>$Title | $SiteConfig.Title -  $SiteConfig.Tagline<% end_if%>" />
    <% if $Tags.exists %>
        <meta name="tags" content="<% loop $Tags %>$Title<% if not Last %>,<% end_if %><% end_loop %>">
    <% end_if %>
    <% if $ExtraMeta.exists %>
        $ExtraMeta
    <% end_if %>
    $MetaTags(false)
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:ital,opsz,wght@0,6..12,200..1000;1,6..12,200..1000&family=Outfit:wght@100..900&family=Rubik:ital,wght@0,300..900;1,300..900&display=swap" rel="stylesheet">
    <% require themedCSS('bdigital') %>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
<% include Nav %>
<main>
$Layout
</main>
<% include Footer %>
</body>
</html>
