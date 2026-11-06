---
layout: iframed
title: "Interactive demos of self-calibrating interfaces"
permalink: /projects/vault/quickaccess/
---

**A self-calibrating interface can identify what you are trying to do without knowing how you are trying to do it.**

This page lists demos and tutorials for self-calibrating PIN-entry interfaces. Each demo presents a different interaction modality—from simple buttons to touch screens, hand-drawn sketches, and even spoken words. The system learns to understand your intent in real-time, without any prior knowledge of how you are trying to communicate.

Start with the simpler button-based demos to understand the core concept, then explore more complex modalities to see how self-calibration works across different input types.

[Read the full interactive paper](https://arxiv.org/pdf/2212.05766) to learn more about the underlying algorithms and concepts, and see the [References](#references) section below for publications in domains including Human-Robot Interaction (HRI), Brain-Computer Interfaces (BCI), and Human-Computer Interaction (HCI).

## Demos

<div class="container">

  <div class="row align-items-center mb-4">
    <div class="col-5">
      <a href="https://openvault.jgrizou.com/#/ui/demo_1x2.json">
        {% assign gif_1x2_url = site.baseurl | append: '/images/vault/demo_1x2_2.gif' %}
        {% include image.html src=gif_1x2_url sub='2 buttons' %}
      </a>
    </div>
    <div class="col-7">
      <h4><a href="https://openvault.jgrizou.com/#/ui/demo_1x2.json">Buttons - Pre-calibrated</a></h4>
      <p>This is a pre-calibrated version of our interface to learn how the interaction works before experiencing self-calibration. You will use two labeled buttons to enter a 4-digit PIN. Use this demo first to understand the interface before trying self-calibrating versions.</p>
    </div>
  </div>

  <div class="row align-items-center mb-4">
    <div class="col-5">
      <a href="https://openvault.jgrizou.com/#/ui/demo_3x3.json">
        {% assign gif_3x3_url = site.baseurl | append: '/images/vault/demo_3x3_fullpad_1.gif' %}
        {% include image.html src=gif_3x3_url sub='9 buttons' %}
      </a>
    </div>
    <div class="col-7">
      <h4><a href="https://openvault.jgrizou.com/#/ui/demo_3x3.json">Buttons - Self-calibrating</a></h4>
      <p>This is the self-calibrating version with unlabeled buttons arranged in a 3×3 grid. You use the buttons to enter your 4-digit PIN without the system knowing which button means what (i.e. the color you assigned to them in your mind). The system figures out your personal button-to-color mapping, as well as your PIN, from your pattern of interaction.</p>
    </div>
  </div>

  <div class="row align-items-center mb-4">
    <div class="col-5">
      <a href="https://openvault.jgrizou.com/#/ui/demo_touch.json">
        {% assign gif_touch_url = site.baseurl | append: '/images/vault/demo_touch_1.gif' %}
        {% include image.html src=gif_touch_url sub='Touch' %}
      </a>
    </div>
    <div class="col-7">
      <h4><a href="https://openvault.jgrizou.com/#/ui/demo_touch.json">Touch - Self-calibrating</a></h4>
      <p>This demo moves beyond discrete buttons to continuous 2D input. You tap anywhere on the surface to enter your PIN digits. The system learns your personal point-on-the-pad-to-color mapping without any constraints or predefined zones.</p>
    </div>
  </div>

  <div class="row align-items-center mb-4">
    <div class="col-5">
      <a href="https://openvault.jgrizou.com/#/ui/demo_draw.json">
        {% assign gif_draw_url = site.baseurl | append: '/images/vault/demo_draw_1.gif' %}
        {% include image.html src=gif_draw_url sub='Draw' %}
      </a>
    </div>
    <div class="col-7">
      <h4><a href="https://openvault.jgrizou.com/#/ui/demo_draw.json">Draw - Self-calibrating</a></h4>
      <p>This demo uses hand-drawn sketches as input. You draw shapes or symbols with your finger or mouse to represent each color. Think hand-drawn symbols instead of buttons. The system learns your personal sketch-to-color mapping from your drawing patterns.</p>
    </div>
  </div>

  <div class="row align-items-center mb-4">
    <div class="col-5">
      <a href="https://openvault.jgrizou.com/#/ui/demo_audio.json">
        {% assign gif_audio_url = site.baseurl | append: '/images/vault/demo_audio_1.gif' %}
        {% include image.html src=gif_audio_url sub='Speak' %}
      </a>
    </div>
    <div class="col-7">
      <h4><a href="https://openvault.jgrizou.com/#/ui/demo_audio.json">Speak - Self-calibrating</a></h4>
      <p>This demo uses audio input from your microphone. You say words or make sounds to represent each color. The system learns your personal sound-to-color mapping without needing to understand your language, in fact, any consistent sounds will work.</p>
    </div>
  </div>

  <div class="row align-items-center mb-4">
    <div class="col-5">
      <a href="https://openvault.jgrizou.com/#/ui/demo_keyboard.json">
        {% assign gif_keyboard_url = site.baseurl | append: '/images/vault/demo_keyboard_1.gif' %}
        {% include image.html src=gif_keyboard_url sub='Keyboard' %}
      </a>
    </div>
    <div class="col-7">
      <h4><a href="https://openvault.jgrizou.com/#/ui/demo_keyboard.json">Keyboard - Self-calibrating</a></h4>
      <p>This demo uses keyboard input for PIN entry. You type any keys on your keyboard to represent each color. The system discovers which keys you are associating with each color without any predefined mappings. In other words, you create your own custom keyboard layout on the fly.</p>
    </div>
  </div>

</div>


## Tutorials

<div class="container">

  <div class="row align-items-center mb-4">
    <div class="col-5">
      <a href="https://openvault.jgrizou.com/#/ui/tuto_1x2.json">
        {% assign gif_1x2_url = site.baseurl | append: '/images/vault/tuto_1x2_1.gif' %}
        {% include image.html src=gif_1x2_url sub='2 buttons' %}
      </a>
    </div>
    <div class="col-7">
      <h4><a href="https://openvault.jgrizou.com/#/ui/tuto_1x2.json">Buttons - Pre-Calibrated - Guided tutorial</a></h4>
      <p>This guided tutorial walks you through the interface step-by-step with two pre-calibrated buttons. You will see how the system progressively eliminates possibilities and converges on your intended digit. This is perfect for understanding the tutorial interface and what is happening on the right panel before moving to the self-calibrating tutorials.</p>
    </div>
  </div>

  <div class="row align-items-center mb-4">
    <div class="col-5">
      <a href="https://openvault.jgrizou.com/#/ui/tuto_3x3.json">
        {% assign gif_3x3_url = site.baseurl | append: '/images/vault/tuto_3x3_1.gif' %}
        {% include image.html src=gif_3x3_url sub='9 buttons' %}
      </a>
    </div>
    <div class="col-7">
      <h4><a href="https://openvault.jgrizou.com/#/ui/tuto_3x3.json">Buttons - Self-Calibrating - Guided tutorial</a></h4>
      <p>This tutorial extends the tutorial to self-calibration with a 3×3 grid of unlabeled buttons. You will visualize how the algorithm handles the elimination process as the system learns your button-to-color mapping, as well as your PIN, from your pattern of interaction.</p>
    </div>
  </div>

  <div class="row align-items-center mb-4">
    <div class="col-5">
      <a href="https://openvault.jgrizou.com/#/ui/tuto_touch.json">
        {% assign gif_touch_url = site.baseurl | append: '/images/vault/tuto_touch_1.gif' %}
        {% include image.html src=gif_touch_url sub='Touch' %}
      </a>
    </div>
    <div class="col-7">
      <h4><a href="https://openvault.jgrizou.com/#/ui/tuto_touch.json">Touch - Self-Calibrating - Guided tutorial</a></h4>
      <p>This tutorial introduces continuous 2D input with step-by-step guidance. You will see how the system handles spatial coordinates instead of discrete buttons, learning which areas of the pad you are using for each color through ML-based consistency metrics.</p>
    </div>
  </div>

  <div class="row align-items-center mb-4">
    <div class="col-5">
      <a href="https://openvault.jgrizou.com/#/ui/tuto_draw.json">
        {% assign gif_draw_url = site.baseurl | append: '/images/vault/tuto_draw_1.gif' %}
        {% include image.html src=gif_draw_url sub='Draw' %}
      </a>
    </div>
    <div class="col-7">
      <h4><a href="https://openvault.jgrizou.com/#/ui/tuto_draw.json">Draw - Self-Calibrating - Guided tutorial</a></h4>
      <p>This tutorial shows how self-calibration works with high-dimensional sketch data. You will draw symbols to represent each color and see how the system clusters them to identify which sketches represent which color — all without knowing what you are drawing.</p>
    </div>
  </div>

  <div class="row align-items-center mb-4">
    <div class="col-5">
      <a href="https://openvault.jgrizou.com/#/ui/tuto_audio.json">
        {% assign gif_audio_url = site.baseurl | append: '/images/vault/tuto_audio_1.gif' %}
        {% include image.html src=gif_audio_url sub='Speak' %}
      </a>
    </div>
    <div class="col-7">
      <h4><a href="https://openvault.jgrizou.com/#/ui/tuto_audio.json">Speak - Self-Calibrating - Guided tutorial</a></h4>
      <p>This tutorial demonstrates self-calibration with audio signals. You will say words or make sounds to represent each color and visualize how the system clusters sounds to discover your sound-to-color mapping. In fact, any consistent sounds will work—without any speech recognition or language understanding.</p>
    </div>
  </div>

</div>


## All configs

Explore all available configurations [at this link](https://openvault.jgrizou.com/#/level-selection).


## References

1. **Robot learning simultaneously a task and how to interpret human instructions**
   Jonathan Grizou, Manuel Lopes, Pierre-Yves Oudeyer (2013)
   IEEE Third Joint International Conference on Development and Learning and Epigenetic Robotics (ICDL)
   [PDF](https://hal.science/hal-00850703/document) | [IEEE](https://ieeexplore.ieee.org/abstract/document/6652523/)

2. **Calibration-Free BCI Based Control**
   Jonathan Grizou, Inaki Iturrate, Luis Montesano, Pierre-Yves Oudeyer, Manuel Lopes (2014)
   AAAI Conference on Artificial Intelligence
   [PDF](https://ojs.aaai.org/index.php/AAAI/article/view/8923/8782) | [Publisher](https://ojs.aaai.org/index.php/AAAI/article/view/8923)

3. **Interactive Learning from Unlabeled Instructions**
   Jonathan Grizou, Inaki Iturrate, Luis Montesano, Pierre-Yves Oudeyer, Manuel Lopes (2014)
   Conference on Uncertainty in Artificial Intelligence (UAI)
   [PDF](https://hal.science/hal-01007689v1/file/grizou2014interactive.pdf) | [HAL](https://hal.science/hal-01007689/)

4. **Studying the Co-Construction of Interaction Protocols in Collaborative Tasks with Humans**
   Anna-Lisa Vollmer, Jonathan Grizou, Manuel Lopes, Katharina Rohlfing, Pierre-Yves Oudeyer (2014)
   IEEE International Conference on Development and Learning and on Epigenetic Robotics
   [PDF](https://hal.science/hal-01090934v1/file/avollmer_ICDL2014.pdf) | [IEEE](https://ieeexplore.ieee.org/abstract/document/6982983/)

5. **Learning from Unlabeled Interaction Frames**
   Jonathan Grizou (2014)
   PhD Thesis, Université de Bordeaux, INRIA
   [PDF](https://inria.hal.science/tel-01095562v3/file/GRIZOU_JONATHAN_2014.pdf) | [HAL](https://inria.hal.science/tel-01095562v3) | [Theses.fr](https://www.theses.fr/2014BORD0146)

6. **Exploiting task constraints for self-calibrated brain-machine interface control using error-related potentials**
   I Iturrate, J Grizou, J Omedes, PY Oudeyer, M Lopes, L Montesano (2015)
   PLOS ONE
   [Publisher](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0131491)

7. **Interactive introduction to self-calibrating interfaces**
   Jonathan Grizou (2022)
   arXiv preprint arXiv:2212.05766
   [PDF](https://arxiv.org/pdf/2212.05766) | [arXiv](https://arxiv.org/abs/2212.05766)

8. **IFTT-PIN: A Self-Calibrating PIN-Entry Method**
   Kathryn McConkey, Talha Enes Ayranci, Mohamed Khamis, Jonathan Grizou (2024)
   arXiv preprint arXiv:2407.02269
   [PDF](https://arxiv.org/pdf/2407.02269) | [arXiv](https://arxiv.org/abs/2407.02269)

9. **Self-Calibrating BCIs: Ranking and Recovery of Mental Targets Without Labels**
   Jonathan Grizou, Carlos de la Torre-Ortiz, Tuukka Ruotsalo (2025)
   Advances in Neural Information Processing Systems (NeurIPS)
   [PDF](https://arxiv.org/pdf/2506.11151.pdf) | [arXiv](https://arxiv.org/abs/2506.11151) | [Code](https://github.com/jgrizou/neurips-self-calibrating-bci) | [Dataset](https://huggingface.co/datasets/ctorre/self-calibrating-bci)
