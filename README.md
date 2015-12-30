# glodjib platform v3

Image management hub for photographers. With direct integration into many social media platforms,
and a blogging platform of its own.

# Concept

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
Flickr and didn't think of the other interfaces (hopefully Twitter, G+, Facebook, Ello, 500px, probably more) and would
have had to refactor everything. v2 never really started, but there's some AngularJS basics in there. So this is the
third try. Let's see what happens.
