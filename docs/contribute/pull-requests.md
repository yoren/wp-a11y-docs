---
title: Pull requests
layout: default
parent: How to contribute
nav_order: 2
---

# GitHub pull requests for the Knowledge Base

First create a new issue on GitHub or find an issue you want to help with on in our [GitHub repository labeled "documentation"](https://github.com/wpaccessibility/wp-a11y-docs/issues?q=is%3Aissue%20state%3Aopen%20label%3Adocumentation).

## Create a pull request from a fork on GitHub with your text.

GitHub offers good documentation on how to create a pull request using a fork on: [Creating a pull request from a fork](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request-from-a-fork).

Describe in the title and description of the pull request what the content is about and which related issue the content belongs to.

## Create a pull request from a fork using a local install

Describe in the title and description of the pull request what the content is about and which related issue the content belongs to.

### Local install

WPaccessibility.org is written in [Jekyll](https://jekyllrb.com), a static site generator in Ruby using [markdown](https://www.markdownguide.org/) for content. 
Please read the [Guide and requirements for Jekyll](https://jekyllrb.com/docs/installation/#requirements). You will need to install Ruby, RubyGems, GCC and Make first.

Then, in the terminal:

Install Jekyll:
```
gem install jekyll
```

Install the website:

```
git clone git@github.com:wpaccessibility/wp-a11y-docs.git
cd wp-a11y-docs
npm install
bundle
bundle exec jekyll serve 
```

Open `http://127.0.0.1:4000/` in your favourite browser.

All Knowledge Base files live in the /docs/ directory.

Before commit use the linters: `npm run lint`.

If you made changed to the `_config.yml` file, run `bundle exec jekyll serve` again to apply the changes to the site.

Documentation about Jekyll itself is on [jekyllrb.com](https://jekyllrb.com/docs/). The theme is based on the Jekyll theme [Just the Docs](https://just-the-docs.com/). The changes made in Just the Docs are documented in the [Changelog for Release v0.1](/CHANGELOG/release-v01).
