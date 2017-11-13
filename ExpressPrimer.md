# Express 101

For those familiar with the [Model-View-Controller (MVC) pattern](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller), the way kaideals separates these concerns is hopefully easier to digest.

In the beginning was the word, and the word was... **routes**. These are the first port of call for incoming HTTP requests. Express provides *routers* to help us direct these requests to the appropriate handlers, called **views**. Views, especially if they want to do anything useful, will usually consult or update **models**, before finally returning a response of some kind.

The [containers/app/src/routes](https://github.com/codeforprojects/kaideals/blob/master/containers/app/src/routes/index.js) module registers routers defined within that module with the provided Express app instance.

```javascript
app.use('/api', require('./api'));
```

Here, the first argument to `use` indicates that any URL paths beginning with /api will be forwarded to the router defined by [api.js](https://github.com/codeforprojects/kaideals/blob/master/containers/app/src/routes/api.js)

At the time of writing, this router *associates* two routes. To associate a route takes three things: a URL (technically, a path), an [HTTP verb](http://www.restapitutorial.com/lessons/httpmethods.html), and a view name. The view (here, just your friendly neighbourhood javascript function, exposed by [the views module]()) with that name will be called when the associated URL is the target of an HTTP request carrying that verb.

These two routes define the responses to HTTP requests with the GET and POST verbs against the same path, /api/deals, with [the views get_deals and create_deal](https://github.com/codeforprojects/kaideals/blob/master/containers/app/src/views/api.js) respectively.

## View Functions

Views functions take at least two parameters, a *req(uest)* object and a *res(ponse)* object (and if you want multiple view functions per route, a [next](https://expressjs.com/en/guide/routing.html#route-handlers) object.

The *req* object is useful if you need to [inspect the HTTP request](https://expressjs.com/en/4x/api.html#req) prompting the view. The *res* object, for [specifying a response](https://expressjs.com/en/4x/api.html#res) (at least a - sometimes implicit - status code, and usually also some data).

## Working with Models

*Coming soon.*
