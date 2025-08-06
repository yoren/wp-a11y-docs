---
title: Another subsubpage
layout: default
description: "A sub topic documentation page"
parent: Example sub topic
nav_order: 2
---

# Subpage of the main topic example

First a "too long didn't read paragraph" summarizing what the topic is about. For example all about form accessibility. To make the text bigger add `{: .fs-6 .fw-300 }` at the end of the first paragraph.
{: .fs-6 .fw-300 }

Create a name.md file in the directory /docs/name. Name is the slug of the main topic.

The pages are written in markdown.

At the top of the page add
```
---
title: The title of the subtopic
layout: default
description: "A short description of the subtopic"
parent: The title of the parent page
nav_order: add a number, the location in the main menu, for example 1
---
```

Then add a heading and text about the subtopic.
