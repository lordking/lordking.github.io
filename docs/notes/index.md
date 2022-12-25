---
title: 读书笔记
status: 积压
priority: 1
layout: default
nav_order: 4
directory: notes
publish: index
---

# 读书笔记

{% for category in site.data.categories %}
<h2> {{ category.title }} </h2>
<ul>
{% for post in site.categories[category.name] %}
    <li>
        <a href="{{ post.url }}" target=_blank>{{ post.title }}</a>
    </li>
{% endfor %}
</ul>
{% endfor %}