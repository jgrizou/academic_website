---
layout: single
title: "Demo - Touch"
permalink: /projects/vault/demo/touch/
---

<div class="container">
  <div class="row align-items-center justify-content-center">

    <div class="col-lg-6 col-md-6 col-sm-6 col-12 nopadding">
      <div class="resp-div vault">
        <iframe class="resp-iframe"
                src="https://openvault.jgrizou.com/#/ui/demo_touch.json">
        </iframe>
      </div>
    </div>

  </div>
</div>

You can access this demo full screen [at this link](https://openvault.jgrizou.com/#/ui/demo_touch.json).

### How to use it

<div class="container">
  <div class="row align-items-center justify-content-center">

    <div class="col">
    {% include youtube.html id='b4NjrMB6VLs' %}
    </div>

  </div>
</div>

This is like the [3x3 version](../3x3/), but there is no buttons. Instead you decide on the geographic areas that are yellow or grey, and place points into those areas.

You can type any 4-digit code into this interface. The top part is where the code is shown. The middle part is the machine asking you what color the current digit you want to type is. And the pad below is how you answer back to the machine.

Let's say your first digit is a 0. Look at 0. If it is yellow, click on a yellow area. If it is grey, click on a grey area.

"But there is no yellow or grey area?!?" I heard you say. Exactly so. The colored areas are in your mind, just decide where they are, stick with it, and the machine will understand it.

After each click, the machine will change the color of the digits. Simply repeat the procedure until the machine displays your digit, and the color of every points you placed! Repeat for the next digit until you have entered your full code.

### More examples

Three additional demonstration videos are provided below ([[1]](https://www.youtube.com/embed/UuxwG7o-tkg), [[2]](https://www.youtube.com/embed/uPMcdnZ6au4), [[3]](https://www.youtube.com/embed/4RZfiJM_2WI)). I am typing the code 1234 in each of them.


<div class="container">
  <div class="row align-items-center justify-content-center">

    <div class="col-lg col-md-4 col-sm-4 col-6">
    {% include youtube_vault.html id='UuxwG7o-tkg' %}
    </div>

    <div class="col-lg col-md-4 col-sm-4 col-6">
    {% include youtube_vault.html id='uPMcdnZ6au4' %}
    </div>

    <div class="col-lg col-md-4 col-sm-4 col-6">
    {% include youtube_vault.html id='4RZfiJM_2WI' %}
    </div>

  </div>
</div>

### Seeing the color map

After each digit is found, the machine generates its own color map, which should approximate fairly accurately what you have in mind. You can visualize it online using [this touch map version](https://openvault.jgrizou.com/#/ui/demo_touch_map.json). The videos below ([[1]](https://www.youtube.com/embed/PwOfS9uYPMQ), [[2]](https://www.youtube.com/embed/XPrkkX53ySo), [[3]](https://www.youtube.com/embed/htrDlsvgdfY), [[4]](https://www.youtube.com/embed/G8UxWxtGcB4), [[5]](https://www.youtube.com/embed/1UoNgFIWzUw)) demonstrate it in practice.

<div class="container">
  <div class="row align-items-center justify-content-center">

    <div class="col-lg col-md-4 col-sm-4 col-6">
    {% include youtube_vault.html id='PwOfS9uYPMQ' %}
    </div>

    <div class="col-lg col-md-4 col-sm-4 col-6">
    {% include youtube_vault.html id='XPrkkX53ySo' %}
    </div>

    <div class="col-lg col-md-4 col-sm-4 col-6">
    {% include youtube_vault.html id='htrDlsvgdfY' %}
    </div>

    <div class="col-lg col-md-4 col-sm-4 col-6">
    {% include youtube_vault.html id='G8UxWxtGcB4' %}
    </div>

    <div class="col-lg col-md-4 col-sm-4 col-6">
    {% include youtube_vault.html id='1UoNgFIWzUw' %}
    </div>

  </div>
</div>

<details>
  <summary style="margin-top: 1rem; font-size: 1.10rem;">Advanced discussion for curious minds</summary>

  <br>

  <p>For readers accustomed to machine learning, the map is generated using a support vector classifier with a rbf kernel. But what is most interesting is that the first trained classifier can be refined as more digits are entered. In other words, we do not use the classifier to predict the color of the following points.</p>

  <p>This is hard to explain concisely here, but you can see it on <a href="https://www.youtube.com/embed/XPrkkX53ySo">video 2 above</a>. At 30s, a first map is shown, grey on the left, yellow on the right. Subsequent clicks are all in the yellow area. Nonetheless, when at 48s the map is recomputed, the top right part turns out to be grey. Which is indeed what I had in mind.</p>

  <p>This is in sharp opposition with how user interfaces usually work. A classifier is trained first on labelled data, it is then frozen and trusted to infer user intent. In this work it is not the case, we remain flexible to changes, which makes our interface more robust to user preferences. More details on how this work in the <a href="../../tuto/touch/">explanatory tutorial</a>.</p>

</details>


### What's next

To go further, check the [explanatory tutorial](../../tuto/touch/).

Next, I recommend trying the [draw version](../draw/), in which you draw sketches instead of placing points.

All available versions are linked below.

{% include vault_demo_quick_access.html %}

{% include vault_links_quick_access.html %}
