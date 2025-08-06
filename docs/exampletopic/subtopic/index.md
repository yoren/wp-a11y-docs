---
title: Example sub topic
layout: default
description: "A main topic documentation page"
nav_order: 3
parent: Example main topic
---

# Example main topic

First a "too long didn't read paragraph" summarizing what the topic is about. For example all about form accessibility. To make the text bigger add `{: .fs-6 .fw-300 }` at the end of the first paragraph.
{: .fs-6 .fw-300 }

Create an index.md file in the directory /docs/name. Name is the name of the topicThe pages are written in markdown.

At the top of the page add
```
---
title: The title of the topic
layout: default
description: "A short description of the topic"
nav_order: add a number, the location in the main menu, for example 3
---
```

Then add a heading and text about the topic, as this is the main topic page, only describe the topic itself and what is important for accessibility. Details will be added to the subpages.

The links to the subpages in the "Table of contents", are added automatically by the software.
