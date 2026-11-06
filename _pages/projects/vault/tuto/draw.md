---
layout: single
title: "Tutorial - Draw"
permalink: /projects/vault/tuto/draw/
---

Below is the interactive interface with an explanatory side panel for you to experiment. It is also available full screen [at this link](https://openvault.jgrizou.com/#/ui/tuto_draw.json).

<div class="container">
  <div class="row align-items-center justify-content-center">

    <div class="col-lg-10 col-md-10 col-sm-10 col-12 nopadding">
      <div class="resp-div hood">
        <iframe class="resp-iframe"
                src="https://openvault.jgrizou.com/#/ui/tuto_draw.json">
        </iframe>
      </div>
    </div>

  </div>
</div>

I have not filmed the associated explanatory videos yet. Under the hood, it works exactly as explained on the [touch version tutorial](../touch/). The dots shown of the right is simply a representation of the drawing into a 2-dimensional space, each point represents of your drawing. Points close to each others should represent drawings similar to each others.

### More examples

One additional video is provided below ([[1]](https://www.youtube.com/embed/HjBZPe06CyA)). I am typing the code 1234.

<div class="container">
  <div class="row align-items-center justify-content-center">

    <div class="col-lg-8 col-md-8 col-sm-10 col-12">
    {% include youtube_vault.html id='HjBZPe06CyA' hood='true' %}
    </div>

  </div>
</div>

### What's next

Next, I recommend inspecting the [audio tutorial](../audio/), in which you speak to the machine instead of drawing sketches.

All available demos are linked below.

{% include vault_demo_quick_access.html %}

{% include vault_links_quick_access.html %}
