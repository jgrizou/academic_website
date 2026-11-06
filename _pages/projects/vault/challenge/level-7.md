---
layout: single
title: "Open Vault Challenge - Level 7"
permalink: /projects/vault/challenge/level-7/
---

<div class="container">
  <div class="row align-items-center justify-content-center">

    <div class="col-lg-6 col-md-6 col-sm-6 col-12">
      <div class="resp-div vault">
        <iframe class="resp-iframe"
                src="https://openvault.jgrizou.com/#/ui/level_7.json">
        </iframe>
      </div>
    </div>

  </div>
</div>

Enter the code for level 7 above or [at this link](https://openvault.jgrizou.com/#/ui/level_7.json). Three demonstration videos are provided below ([[1]](https://www.youtube.com/embed/jUIMUeEqC4E), [[2]](https://www.youtube.com/embed/rcOS9qGZ0VE), [[3]](https://www.youtube.com/embed/0C7us0V7lSI)). Good luck!

<div class="container">
  <div class="row align-items-center justify-content-center">

    <div class="col-lg col-md-4 col-sm-4 col-6">
    {% include youtube_vault.html id='jUIMUeEqC4E' %}
    </div>

    <div class="col-lg col-md-4 col-sm-4 col-6">
    {% include youtube_vault.html id='rcOS9qGZ0VE' %}
    </div>

    <div class="col-lg col-md-4 col-sm-4 col-6">
    {% include youtube_vault.html id='0C7us0V7lSI' %}
    </div>

  </div>
</div>

---

> Reveal the clues below only as a last resort.

<details>
  <summary style="margin-top: 1rem; font-size: 1.10rem;">Clue No. 1</summary>

  <br>

  <p>See the code you are entering below or <a href="https://openvault.jgrizou.com/#/ui/level_7_visible.json">at this link</a>.</p>

  <div class="container">
    <div class="row align-items-center justify-content-center">

      <div class="col-lg-6 col-md-6 col-sm-6 col-12">
        <div class="resp-div vault">
          <iframe class="resp-iframe"
                  src="https://openvault.jgrizou.com/#/ui/level_7_visible.json">
          </iframe>
        </div>
      </div>

    </div>
  </div>

</details>

<details>
  <summary style="margin-top: 1rem; font-size: 1.10rem;">Clue No. 2</summary>

  <br>

  <p>There is no hidden buttons, it is more like a map.</p>

</details>


<details>
  <summary style="margin-top: 1rem; font-size: 1.10rem;">Clue No. 2</summary>

  <br>

  <p>Apply the same principle than <a href="../level-4/">level 4</a>, but this time look at inconsistencies in the generated map. Yellow points should be around yellow points, and grey ones around grey ones.</p>

</details>

---

<details>
  <summary style="margin-top: 1rem; font-size: 1.10rem;">Take home message</summary>

  <br>

  <p>When we used buttons, it was easy to identify inconsistencies. But here not click are twice on the same location. A consistent user will define areas for yellow and grey and click in those areas, hence we need to identify the hypothesis with the better defined areas (relative to the other hypothesis).</p>

  <p>A practical way to measure this, is to try to predict the color of a new point from the color associated to the others ones. the easier this is, the more the user is being consistent.

  In machine learning, we train and test <a href="https://en.wikipedia.org/wiki/Statistical_classification">classifiers</a>. This is how this level works, as well as the previous <a href="../level-5/">sketch</a> and <a href="../level-6/">audio</a> level works behind the scene.</p>

</details>

---

Links: [[Challenge page]](../) [[Project page]](../../)
