# glodjib platform v3

Image management hub for photographers. With direct integration into many social media platforms,
and a blogging platform of its own.

## Concept

That's mostly what there is by now. A concept. This is it:

![Concept](app/assets/images/concept.jpg)

On the server, Ruby on Rails, storage in the cloud (with Amazon, probably). Three parts, storage management, interfaces
and API frontend with blogging and image / gallery access, but no social media functionality beyond commenting -
others do that better. The web client will be AngularJS (which I have to learn properly first)
with lots of templating and customizability, and then the way is open for native apps through Cordova and AngularJS.

The target audience are photographers who today have standalone sites, and web developers who want to provide their
clients with just such a thing - but with the added bonus of being able to post to various social media sites directly
from their own home base. It's what I was looking for, and didnt' find.

I'll start with storage management, then interfaces, and work my way out from there. v1 got stuck because I started with
Flickr and didn't think of the other interfaces (hopefully Twitter, G+, Facebook, Ello, 500px, Instagram, Pinterest, maybe even more) and would
have had to refactor everything. I used Flickr as main storage instead of building my own, and that only works for people who
have Flickr as their most-used platform - and that didn't apply to me any more after the Yahoo redesign in 2013.

v2 never really started, but there's some AngularJS basics in there. So this is the third try. Let's see what happens.

## Social Media Integration

These are the three current test accounts for the social media integration of the platform:

* https://twitter.com/glodjib
* https://www.flickr.com/photos/95789229@N03/
* https://www.flickr.com/photos/138107723@N03/

## License

<a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/">
<img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-nd/4.0/88x31.png" />
</a>

This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/">Creative
Commons Attribution-NonCommercial-NoDerivatives 4.0 International License</a>.

I can always open it up later.
