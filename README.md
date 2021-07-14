# Recipes
My, andreasl's cooking recipe blog.

This `jekyll`-based blog contains my curated collection of food recipies.
Find it on GitHub pages at https://langenhagen.github.io/recipes/.
Enjoy!


## Prerequisites
You need `ruby`, possibly installed with `rbenv`.
You also need `jekyll`. See: https://jekyllrb.com/docs/installation/.


## Local Usage
Run locally with:
```bash
jekyll serve --baseurl ""
```

You should visit the blog then according to your `jekyll` installation on `localhost:4000`.


## Update Dependencies
You can update the project's dependencies by first updating `bundler` to the latest version and then
updating the projects dependencies.

To update `bundler` and the project dependencies, call:
```bash
gem install bundler;
bundle update;
```
