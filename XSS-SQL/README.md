# XSS Demo

Demo by Julian Reinhardt (751985)

## Setup

1. Clone this repository.
2. Make sure both `docker` and `docker-compose` is installed on your system.
3. Execute `docker-compose up` in the root of this repository.
4. Visit [`localhost`](http://localhost/) in your browser.
5. Add a comment at the bottom of the page and include HTML-elements like

```html
<script>
  alert('Hello World!');
</script>
```

Once the comment was added, the included HTML-snippet will be executed every time the page loads.

## Fix for this issue

The simple fix for this issue is to wrap all user generated content in `htmlspecialchars()` to escape all characters, which would otherwise be interpreted as HTML.
