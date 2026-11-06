---
layout: single
title: "Demo - Audio"
permalink: /projects/vault/demo/audio/
---

<div class="container">
  <div class="row align-items-center justify-content-center">

    <div class="col-lg-6 col-md-6 col-sm-6 col-12 nopadding">
      <div class="resp-div vault">
        <iframe class="resp-iframe"
                allow="microphone"
                src="https://openvault.jgrizou.com/#/ui/demo_audio.json">
        </iframe>
      </div>
    </div>

  </div>
</div>

You can access this demo full screen [at this link](https://openvault.jgrizou.com/#/ui/demo_audio.json). We need to record your voice for this level to work.

### How to use it

<div class="container">
  <div class="row align-items-center justify-content-center">

    <div class="col">
    {% include youtube.html id='tiyQEdlu9RQ' %}
    </div>

  </div>
</div>

This is like the [touch version](../touch/), but instead of placing points, you generate short sounds for yellow or grey. For example, saying "yellow" for yellow and clapping you hands for grey.

You can type any 4-digit code into this interface. The top part is where the code is shown. The middle part is the machine asking you what color the current digit you want to type is. And the pad below is how you answer back to the machine.

Let's say your first digit is a 0. Look at 0. If it is yellow, click on the microphone and say "yellow". If it is grey, click and clap your hands. Or any sound you want for yellow or grey really, you get to choose. The only constraint is that the sounds should be less than 2 seconds.

After each drawing, the machine will change the color of the digits. Simply repeat the procedure until the machine displays your digit. Repeat for the next digit until you have entered your full code.

You will see two buttons at the bottom of the interface. They show you the history of your sounds, as well as the internal representation that the machine uses.

### More examples

Three additional demonstration videos are provided below ([[1]](https://www.youtube.com/embed/bJDLS_kRP0E), [[2]](https://www.youtube.com/embed/YRanZo4aAuE), [[3]](https://www.youtube.com/embed/alSRWUg0vfs)). I am typing the code 1234 in each of them.


<div class="container">
  <div class="row align-items-center justify-content-center">

    <div class="col-lg col-md-4 col-sm-4 col-6">
    {% include youtube_vault.html id='bJDLS_kRP0E' %}
    </div>

    <div class="col-lg col-md-4 col-sm-4 col-6">
    {% include youtube_vault.html id='YRanZo4aAuE' %}
    </div>

    <div class="col-lg col-md-4 col-sm-4 col-6">
    {% include youtube_vault.html id='alSRWUg0vfs' %}
    </div>

  </div>
</div>

### What's next

To go further, check the [audio explanatory interface](../../tuto/audio/).

Next, I recommend trying the [keyboard version](../keyboard/), it is the same as the [3x3 version](../3x3/) but you can use any key on your keyboard instead. It is meant to show the users' actions do not have to be seen on the screen, making it harder for an outside observer to understand what code the user is typing.

All available versions are linked below.

{% include vault_demo_quick_access.html %}

{% include vault_links_quick_access.html %}
