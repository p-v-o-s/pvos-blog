---
layout: front.njk
---
<div id='pullout'>

<!--<img src="/img/edge_flower_medium.png">-->
<img src="/img/pvos.png">

<h1> Pioneer Valley Open Science </h1>

<!--
*Accessible infrastructure for communities living at ‘the edge'.*
-->

<!--
[Podcast](#podcast) | [Projects](#projects) | [Guides](#guides) | [Presentations](#talks) | [Research](#notebook)
-->

<!--[Projects](#projects) | [Research](#notebook) | [Presentations](#talks) |  [Guides](#guides) 
(You can now support our work via [Opencollective](https://opencollective.com/pvos)!)

-->

</div>

<div class="posts-area">
{% for project in collections.projects reversed %}
  <div class="post">
    <div class="project-contents">
      <div class="image">
        <a href="{{ project.url }}">
          <img src="{{ project.data.image }}"/>
        </a>
      </div>
      <div class="text">
        <h3><a href="{{ project.url }}">{{ project.data.pageTitle }}</a></h3>
        <p>{{ project.data.blurb }}</p>
        <em>Updated: {{ project.data.updated | date: "%Y-%m-%d" }}</em>
      </div>
    </div>
  </div>
{% endfor %}
</div>
