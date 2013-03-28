Source -> http://graffzon.tumblr.com/post/15303347654/comparsion-of-haml-slim-erb

Comparsion of Haml, Slim, Erb.

So, it’s my first post in english, will try. Sorry english grammar nazi =)

I think, everybody, who working with Rails, know that words. Here I will try to compare speed of that templating engines. First I will try simple template, after more difficult.

For testing I will use Tilt (1.3.3).

Also:

- Ruby 3.0.3

- Haml 3.1.4

- Slim 1.0.4

1. ERB

If you have just-installed rails app you will have that engine. It’s simple and fully html-like. Here template which we will test:

<h1> Just simple erb template</h1>

<p>there is no ruby code or smth else, just text</p>



2. Haml

For me it was first alternative of erb. And as I see many newbie developers also using that engine. So what we will test:

%h1 Just simple erb template
%p there is no ruby code or smth else, just text


3. Slim

I think I can call it light-weight haml. Same idea, but more effective. 

h1 Just simple erb template


p there is no ruby code or smth else, just text

Lets see (making 100 requests and take average value):

Haml - 2.7080000000000015e-05

Slim - 0.9199999999999997e-05

ERB - 1.126999999999999e-05

As we see in that test Slim is fastest (for static pages). And as we know Haml is sloooowest. Remember, I used tilt, it’s not development or production mode.

So let’s try to test templates with part of ruby code:

1. ERB 

<h1> Just simple erb template</h1>
<p>there is no ruby code or smth else, just text</p>
<% 100.times do %>
  <%= rand(1000) %>
<% end %>

2. Haml

%h1 Just simple erb template
%p there is no ruby code or smth else, just text


- 100.times do


   = rand(1000)

3. Slim

h1 Just simple erb template
p there is no ruby code or smth else, just text


- 100.times do


   = rand(1000)




Again 100 requests and average value:

Haml - 0.00026751000000000005

Slim - 0.00014951999999999994

ERB - 0.00012785999999999993

Here ERB gave better result than Slim. But Haml again somewhere in ass ;)

I think, that benchmark will give answer for question “what is faster???”

More information:

1. Presentation about haml Haml vs erb

2. You can take a look for full benchmark on https://github.com/stonean/slim

