---
layout: single
title: "Demo - Draw"
permalink: /projects/vault/demo/draw/
---

<div class="container">
  <div class="row align-items-center justify-content-center">

    <div class="col-lg-6 col-md-6 col-sm-6 col-12 nopadding">
      <div class="resp-div vault">
        <iframe class="resp-iframe"
                src="https://openvault.jgrizou.com/#/ui/demo_draw.json">
        </iframe>
      </div>
    </div>

  </div>
</div>

You can access this demo full screen [at this link](https://openvault.jgrizou.com/#/ui/demo_draw.json).

### How to use it

<div class="container">
  <div class="row align-items-center justify-content-center">

    <div class="col">
    {% include youtube.html id='5bjk-E8TQLc' %}
    </div>

  </div>
</div>

This is like the [touch version](../touch/), but instead of placing points, you draw small sketches for yellow or grey. For example, squares for yellow and circles for grey.

You can type any 4-digit code into this interface. The top part is where the code is shown. The middle part is the machine asking you what color the current digit you want to type is. And the pad below is how you answer back to the machine.

Let's say your first digit is a 0. Look at 0. If it is yellow, draw a square. If it is grey, draw a circle. Or any shape you want for yellow or grey really, you get to choose. The only constraint is that you have to do it in one stroke.

After each drawing, the machine will change the color of the digits. Simply repeat the procedure until the machine displays your digit. Repeat for the next digit until you have entered your full code.

You will see two buttons at the bottom of the interface. They show you the history of your drawings, as well as the internal representation that the machine uses.

### More examples

Three additional demonstration videos are provided below ([[1]](https://www.youtube.com/embed/unaxtkwrjTk), [[2]](https://www.youtube.com/embed/39dsmJ_LZx4), [[3]](https://www.youtube.com/embed/AJwhZ-AouyA)). I am typing the code 1234 in each of them.


<div class="container">
  <div class="row align-items-center justify-content-center">

    <div class="col-lg col-md-4 col-sm-4 col-6">
    {% include youtube_vault.html id='unaxtkwrjTk' %}
    </div>

    <div class="col-lg col-md-4 col-sm-4 col-6">
    {% include youtube_vault.html id='39dsmJ_LZx4' %}
    </div>

    <div class="col-lg col-md-4 col-sm-4 col-6">
    {% include youtube_vault.html id='AJwhZ-AouyA' %}
    </div>

  </div>
</div>

### What's next

To go further, check the [draw explanatory interface](../../tuto/draw/).

Next, I recommend trying the [audio version](../audio/), in which you speak to the machine instead of drawing sketches.

All available versions are linked below.

{% include vault_demo_quick_access.html %}

{% include vault_links_quick_access.html %}
