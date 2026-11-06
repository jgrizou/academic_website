---
layout: single
title: "Open Vault Challenge - Level 1"
permalink: /projects/vault/challenge/level-1/
---

<div class="container">
  <div class="row align-items-center justify-content-center">

    <div class="col-lg-6 col-md-6 col-sm-6 col-12">
      <div class="resp-div vault">
        <iframe class="resp-iframe"
                src="https://openvault.jgrizou.com/#/ui/level_1.json">
        </iframe>
      </div>
    </div>

  </div>
</div>

Enter the code for level 1 above or [at this link](https://openvault.jgrizou.com/#/ui/level_1.json). Three demonstration videos are provided below ([[1]](https://www.youtube.com/embed/KppG6wkouJA), [[2]](https://www.youtube.com/embed/0Q79BU2KzGw), [[3]](https://www.youtube.com/embed/8FmlurHbi7g)). Good luck!

<div class="container">
  <div class="row align-items-center justify-content-center">

    <div class="col-lg col-md-4 col-sm-4 col-6">
    {% include youtube_vault.html id='KppG6wkouJA' %}
    </div>

    <div class="col-lg col-md-4 col-sm-4 col-6">
    {% include youtube_vault.html id='0Q79BU2KzGw' %}
    </div>

    <div class="col-lg col-md-4 col-sm-4 col-6">
    {% include youtube_vault.html id='8FmlurHbi7g' %}
    </div>

  </div>
</div>

---

> Reveal the clues below only as a last resort.

<details>
  <summary style="margin-top: 1rem; font-size: 1.10rem;">Clue No. 1</summary>

  <br>

  <p>See the code you are entering below or <a href="https://openvault.jgrizou.com/#/ui/level_1_visible.json">at this link</a>.</p>

  <div class="container">
    <div class="row align-items-center justify-content-center">

      <div class="col-lg-6 col-md-6 col-sm-6 col-12">
        <div class="resp-div vault">
          <iframe class="resp-iframe"
                  src="https://openvault.jgrizou.com/#/ui/level_1_visible.json">
          </iframe>
        </div>
      </div>

    </div>
  </div>

</details>

<details>
  <summary style="margin-top: 1rem; font-size: 1.10rem;">Clue No. 2</summary>

  <br>

  <p>Try <a href="../level-0/">level 0</a>.</p>

</details>

---

<details>
  <summary style="margin-top: 1rem; font-size: 1.10rem;">Take home message</summary>

  <br>

  <p>We proceed by elimination.</p>

  <p>The user is trying to type one out of ten possible digits (0 to 9). Half of the digits are yellow, and half are grey. When clicking on the yellow or grey button, the user indicates the color currently associated with the digit s/he has in mind. We can thus eliminate half of the digits by following the following reasoning: “if the user presses the yellow button, then the digit s/he is typing is among the yellow colored digits” (idem for grey).</p>

  <p>By repeating this process, usually 3 or 4 times, only one digit remains. It is the digit the user wants to enter. The machine writes down that digit and proceed to the next one. Once a 4-digit code is entered, the machine compares it to the secret code and decides whether to open the vault or not.</p>

</details>

---

Links: [[Level 2]](../level-2/) [[Challenge page]](../) [[Project page]](../../)
