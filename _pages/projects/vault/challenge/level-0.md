---
layout: single
title: "Open Vault Challenge - Level 0"
permalink: /projects/vault/challenge/level-0/
---

<div class="container">
  <div class="row align-items-center justify-content-center">

    <div class="col-lg-6 col-md-6 col-sm-6 col-12">
      <div class="resp-div vault">
        <iframe class="resp-iframe"
                src="https://openvault.jgrizou.com/#/ui/level_0.json">
        </iframe>
      </div>
    </div>

  </div>
</div>

Enter the code for level 0 above or [at this link](https://openvault.jgrizou.com/#/ui/level_0.json). Three demonstration videos are provided below ([[1]](https://www.youtube.com/embed/KXZ_WeKM8XI), [[2]](https://www.youtube.com/embed/HsdLoCF8gGY), [[3]](https://www.youtube.com/embed/My0hQkANxik)). Good luck!

<div class="container">
  <div class="row align-items-center justify-content-center">

    <div class="col-lg col-md-4 col-sm-4 col-6">
    {% include youtube_vault.html id='KXZ_WeKM8XI' %}
    </div>

    <div class="col-lg col-md-4 col-sm-4 col-6">
    {% include youtube_vault.html id='HsdLoCF8gGY' %}
    </div>

    <div class="col-lg col-md-4 col-sm-4 col-6">
    {% include youtube_vault.html id='My0hQkANxik' %}
    </div>

  </div>
</div>


---

> Reveal the clues below only as a last resort.

<details>
  <summary style="margin-top: 1rem; font-size: 1.10rem;">Clue No. 1</summary>

  <br>

  <p>The interface is asking you the color of the digit you want to enter.</p>

</details>

<details>
  <summary style="margin-top: 1rem; font-size: 1.10rem;">Clue No. 2</summary>

  <br>

  <p>By clicking on the yellow (respectively grey) button, you tell the machine that your digit is currently colored in yellow (respectively grey).</p>

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

Links: [[Level 1]](../level-1/) [[Challenge page]](../) [[Project page]](../../)
