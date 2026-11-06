---
layout: single
title: "Demo - Keyboard"
permalink: /projects/vault/demo/keyboard/
---

This demo will work best full screen [at this link](https://openvault.jgrizou.com/#/ui/demo_keyboard.json).

<div class="container">
  <div class="row align-items-center justify-content-center">

    <div class="col-lg-6 col-md-6 col-sm-6 col-12 nopadding">
      <div class="resp-div vault">
        <iframe class="resp-iframe"
                src="https://openvault.jgrizou.com/#/ui/demo_keyboard.json">
        </iframe>
      </div>
    </div>

  </div>
</div>


<p style="font-size: 0.75rem;">If you want to use the interface directly above, note that the interface needs to listen to your keyboard inputs which requires the focus to be on it. On desktop, clicking anywhere on the interface will bring the focus to it and keyboard events will be able to be recorded. As a visual feedback the keyboard drawing at the bottom of the interface will blink when a key is pressed. On mobile, an additional button will show up, clicking on it will both bring focus on the interface and force the keyboard to show.</p>

### How to use it

This is exactly like the [3x3 version](../3x3/), but you can use any key on your keyboard instead of the buttons. You choose which keys are meant to say yellow or grey.

It is meant to show the users' actions do not have to be seen on the screen, making it harder for an outside observer to understand what code the user is typing.

### More examples

Three additional demonstration videos are provided below ([[1]](https://www.youtube.com/embed/ryfDHqSclAI), [[2]](https://www.youtube.com/embed/o-cKUp-XRyI), [[3]](https://www.youtube.com/embed/lQAw0SnDiqo)). I am typing the code 1234 in each of them.

<div class="container">
  <div class="row align-items-center justify-content-center">

    <div class="col-lg col-md-4 col-sm-4 col-6">
    {% include youtube_vault.html id='ryfDHqSclAI' %}
    </div>

    <div class="col-lg col-md-4 col-sm-4 col-6">
    {% include youtube_vault.html id='o-cKUp-XRyI' %}
    </div>

    <div class="col-lg col-md-4 col-sm-4 col-6">
    {% include youtube_vault.html id='lQAw0SnDiqo' %}
    </div>

  </div>
</div>

### What's next

Next, I recommend experimenting with the [touch tutorial version](../../tuto/touch/). Try to fool it in predicting the wrong digit. Think of a color map that will be too hard for the machine to identify, and analyze why it fails.

All available versions are linked below.

{% include vault_demo_quick_access.html %}

{% include vault_links_quick_access.html %}
