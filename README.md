# WordPress Accessibility Knowledge Base

Website: [wpaccessibility.org](https://wpaccessibility.org).

**Please note**: wpaccessibility.org is a work in progress and is still in the setup phase. The knowledge base has no content yet and the site needs an accessibility audit. Please visit, for now, the documentation on the [Make WordPress Accessible Handbook](https://make.wordpress.org/accessibility/handbook/).

This website aims to provide you with answers about WordPress and accessibility. How do you design and create an accessible website or plugin? How do you write accessible content? What do you need to know to comply with international legislation?

We'll provide documentation, effective examples (both what to do and what to avoid) and reliable, up-to-date resources.

Additionally, we are developing a pattern library with code examples. We aim to meet [WCAG 2.2 AA](https://www.w3.org/WAI/WCAG22/quickref/).

Did we miss a topic? Did you find an error or have a great idea? Create an issue on our [GitHub repository wpaccessibility/wp-a11y-docs](https://github.com/wpaccessibility/wp-a11y-docs/issues/).

We would like to [invite you to contribute](/docs/contribute/) to this Knowledge Base.

## Local install of the website

Please read the [Guide and requirements for Jekyll](https://jekyllrb.com/docs/installation/#requirements) first. You will need to have NPM, Ruby, Ruby Gems, GCC and Make installed.

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

Open http://127.0.0.1:4000/ in your favourite browser.

All Knowledge Base files live in the /docs/ directory.

Before commit use the linters: `npm run lint`

If you made changed to the `_config.yml` file, run `bundle exec jekyll serve` again to apply the changes to the site.

Documentation about Jekyll itself is on [jekyllrb.com](https://jekyllrb.com/docs/). The theme is based on the Jekyll theme [Just the docs](https://just-the-docs.github.io/just-the-docs/). The changes made in Just the Docs are documented in the [Changelog for Release v0.1](/CHANGELOG/release-v01).
