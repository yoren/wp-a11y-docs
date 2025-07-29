---
title: Contributors
layout: default
description: "Thank you to the contributors of WP Accessibility Knowledge Base"
nav_order: 7
---

#  Contributors of WP Accessibility Knowledge Base

{: .note }
This is only for GitHub contributions at the moment, it should be possible to add also WP profiles or just text plus an avatar here.

<ul class="list-style-none">
{% for contributor in site.github.contributors %}

  <li class="d-inline-block mr-1" class="text-small">
     <a href="{{ contributor.html_url }}">
        <img src="{{ contributor.avatar_url }}" width="32" height="32" alt=""><br />{{ contributor.login }}
    </a>
  </li>

{% endfor %}
</ul>
