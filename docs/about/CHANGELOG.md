---
title: Changelog website
layout: default
parent: About this website
---

# Changelog

All notable user-facing changes to this project are documented in this file.

## Release v0.1

This Jekyll theme WP A11y Docs is based on Just the Docs by
Just The Docs is licenced as MIT.

In this initial release the theme is renamed into WP A11y Docs.

### File organisation
This will be a one design theme only, so all the changes will be done directly in the files itself. This simplifies the code and makes the theme better maintainable. 

For this the following changes were made:
- Removed custom files and their references.
- Removed redundant include files, like title.html.
- Removed the nav-footer: took up too much space and added a second `<footer>`.

### SCSS 

- Refactoring directory structure.
- Removed the dark theme for now, that will be restored when the theme is finished and stable.
- Replaced `@import` for `@use`, for compatibility with Dart Sass 3.0.0.
- Replaced `darken` by `color.scale` and `color.adjust`, for compatibility with Dart Sass 3.0.0.
- Replaced deprecated global built-in functions by Sass values (sass:map, sass:color, sass:list etc.).

### CSS color contrast issue
- * placeholder: fixt color contrast and opacity
* Fixed color contrast issues for text and non-text meaningful elements

## Search at the top of the page
- Refactored the HTML of the form to make the HTML valid.
  

### _config.yml

- Removed Google Analytics Tracking settings.

### Accessibility improvements

- Changed aria-pressed by aria-expanded, see also issue [Change aria-pressed into aria-expanded for buttons connected to expandable content](https://github.com/just-the-docs/just-the-docs/issues/1680)
- Added `aria-current="page"` to links to the current page.
- Removed anchor links before headings. The link was inside the heading, resulting in announcing the heading text twice. 
- Copy code button is now always visible (not only on hover) and has a larger clickable area
- The code block now have a tabindex="0".
- Moved button to expand the submenus after the submenu link, to make the tab order meaningful.

