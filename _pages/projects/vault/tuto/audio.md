---
layout: single
title: "Tutorial - Audio"
permalink: /projects/vault/tuto/audio/
---

Below is the interactive interface with an explanatory side panel for you to experiment. It is also available full screen [at this link](https://openvault.jgrizou.com/#/ui/tuto_audio.json). We need to record your voice for this level to work.

<div class="container">
  <div class="row align-items-center justify-content-center">

    <div class="col-lg-10 col-md-10 col-sm-10 col-12 nopadding">
      <div class="resp-div hood">
        <iframe class="resp-iframe"
                allow="microphone"
                src="https://openvault.jgrizou.com/#/ui/tuto_audio.json">
        </iframe>
      </div>
    </div>

  </div>
</div>

I have not filmed the associated explanatory videos yet. Under the hood, it works exactly as explained on the [touch version tutorial](../touch/). The dots shown of the right is simply a representation of the sounds into a 2-dimensional space, each point represents of your sound. Points close to each others should represent sounds similar to each others.

### More examples

One additional video is provided below ([[1]](https://www.youtube.com/embed/e3e11i42TNI)). I am typing the code 1234.

<div class="container">
  <div class="row align-items-center justify-content-center">

    <div class="col-lg-8 col-md-8 col-sm-10 col-12">
    {% include youtube_vault.html id='e3e11i42TNI' hood='true' %}
    </div>

  </div>
</div>

### What's next

Next, I recommend experimenting with the [touch tutorial](../touch/). Try to fool it in predicting the wrong digit. Think of a color map that will be too hard for the machine to identify, and analyze why it fails.

All available demos are linked below.

{% include vault_demo_quick_access.html %}

{% include vault_links_quick_access.html %}
