{% extends '_layout.swig' %}
{% import '_macro/post.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}

{% block title %} {{ config.title }} {% endblock %}

{% block page_class %}
  {% if is_home() %} page-home {% endif %}
{% endblock %}

{% block content %}
  {# <div id="posts" class="posts-expand">
    {% for post in page.posts %}
      {{ post_template.render(post, true) }}
    {% endfor %}
  </div> #}
  <div class="content-index">
    <h2><a class="post-title-link" href="">HTML基本</a></h2>
    <h2><a class="post-title-link" href="">CSS基本</a></h2>
    <h2><a class="post-title-link" href="">Javascript基本</a></h2>
    <h2><a class="post-title-link" href="">jQuery基本</a></h2>
    <h2><a class="post-title-link" href="">Bootstrap基本</a></h2>
    <h2><a class="post-title-link" href="">vi基本</a></h2>
    <h2><a class="post-title-link" href="">Git基本</a></h2>
    <h2><a class="post-title-link" href="">GitHub基本</a></h2>
    <h2><a class="post-title-link" href="">Vagrant基本</a></h2>
    <h2><a class="post-title-link" href="">Linux基本</a></h2>
    <h2><a class="post-title-link" href="">MySQL基本</a></h2>
    <h2><a class="post-title-link" href="">PHP基本</a></h2>
  </div>

  {% include '_partials/pagination.swig' %}
{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}

{% block comment_system %}
  {% include '_scripts/comments/duoshuo.swig' %}
  {% include '_scripts/comments/disqus.swig' %}
{% endblock %}