local ls = require('luasnip')

ls.snippets = {
    html = {
        ls.parser.parse_snippet("html", [[<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

</body>
</html>]]),


    }
}
