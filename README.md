# ham-clickbait

Clickbait title generator for Amateur Radio. Spawned from [an idea on Twitter](https://twitter.com/mcoms/status/581561807871033344).

## Using this on your site

Download `build/generator.js`, and include it on your page, along with [Mustache.js](https://github.com/janl/mustache.js/).

```html
<script src="//cdnjs.cloudflare.com/ajax/libs/mustache.js/0.8.1/mustache.min.js"></script>
<script src="build/generator.js"></script>
```

You can then generate a new title in JavaScript.

```javascript
generator = new HamClickbaitGenerator();
generator.title();
// Watch this G5 slap a Old Man Ham. First you'll be shocked, then you'll be inspired.
```

## Developing

Please send pull requests to [the project on Github](https://github.com/mcoms/ham-clickbait).

### Using Docker to compile the CoffeeScript file

A Dockerfile is provided, based on NodeJS which contains Coffeescript for compiling the source, from `src/` into `build/`.

```bash
docker build -t mcoms/ham-clickbait
docker run --rm -ti --volume="`pwd`:/data" mcoms/ham-clickbait
```
