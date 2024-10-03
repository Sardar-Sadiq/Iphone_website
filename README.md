## 📋 <a name="table">Table of Contents</a>

1. 🤖 [Introduction](#introduction)
2. ⚙️ [Tech Stack](#tech-stack)
3. 🔋 [Features](#features)
4. 🤸 [Quick Start](#quick-start)
5. 🕸️ [Snippets](#snippets)
6. 🔗 [Links](#links)
7. 🚀 [More](#more)

## 🚨 Tutorial

This repository contains the code corresponding to an in-depth tutorial available on our YouTube channel, <a href="https://www.youtube.com/@javascriptmastery/videos" target="_blank"><b>JavaScript Mastery</b></a>. 

If you prefer visual learning, this is the perfect resource for you. Follow our tutorial to learn how to build projects like these step-by-step in a beginner-friendly manner!

<a href="https://youtu.be/kRQbRAJ4-Fs" target="_blank"><img src="https://github.com/sujatagunale/EasyRead/assets/151519281/1736fca5-a031-4854-8c09-bc110e3bc16d" /></a>

## <a name="introduction">🤖 Introduction</a>

This is a clone of Apple's iPhone 15 Pro website using React.js and TailwindCSS. It highlights the effective use of GSAP (Greensock Animations) and Three.js for displaying iPhone 15 Pro models in various colors and shapes.

If you're getting started and need assistance or face any bugs, join our active Discord community with over 27k+ members. It's a place where people help each other out.

<a href="https://discord.com/invite/n6EdbFJ" target="_blank"><img src="https://github.com/sujatagunale/EasyRead/assets/151519281/618f4872-1e10-42da-8213-1d69e486d02e" /></a>

## <a name="tech-stack">⚙️ Tech Stack</a>

- React.js
- Three.js
- React Three Fiber
- React Three Drei
- GSAP (Greensock)
- Vite
- Tailwind CSS

## <a name="features">🔋 Features</a>

👉 **Beautiful Subtle Smooth Animations using GSAP**: Enhanced user experience with seamless and captivating animations powered by GSAP.

👉 **3D Model Rendering with Different Colors and Sizes**: Explore the iPhone 15 Pro from every angle with dynamic 3D rendering, offering various color and size options.

👉 **Custom Video Carousel (made with GSAP)**: Engage users with a unique and interactive video carousel developed using GSAP for a personalized browsing experience.

👉 **Completely Responsive**: Consistent access and optimal viewing on any device with a fully responsive design that adapts to different screen sizes.

and many more, including code architecture and reusability 

## <a name="quick-start">🤸 Quick Start</a>

Follow these steps to set up the project locally on your machine.

**Prerequisites**

Make sure you have the following installed on your machine:

- [Git](https://git-scm.com/)
- [Node.js](https://nodejs.org/en)
- [npm](https://www.npmjs.com/) (Node Package Manager)

**Cloning the Repository**


**Installation**

Install the project dependencies using npm:

```bash
npm install
```

**Running the Project**

```bash
npm run dev
```

Open [http://localhost:5173](http://localhost:5173) in your browser to view the project.

## <a name="snippets">🕸️ Snippets</a>

<details>
<summary><code>tailwind.config.js</code></summary>

```javascript
/** @type {import('tailwindcss').Config} */
export default {
  content: ["./index.html", "./src/**/*.{js,ts,jsx,tsx}"],
  theme: {
    extend: {
      colors: {
        blue: "#2997FF",
        gray: {
          DEFAULT: "#86868b",
          100: "#94928d",
          200: "#afafaf",
          300: "#42424570",
        },
        zinc: "#101010",
      },
    },
  },
  plugins: [],
};
```

</details>

<details>
<summary><code>constants/index.js</code></summary>

```javascript
import {
  blackImg,
  blueImg,
  highlightFirstVideo,
  highlightFourthVideo,
  highlightSecondVideo,
  highlightThirdVideo,
  whiteImg,
  yellowImg,
} from "../utils";

export const navLists = ["Store", "Mac", "iPhone", "Support"];

export const hightlightsSlides = [
  {
    id: 1,
    textLists: [
      "Enter A17 Pro.",
      "Game‑changing chip.",
      "Groundbreaking performance.",
    ],
    video: highlightFirstVideo,
    videoDuration: 4,
  },
  {
    id: 2,
    textLists: ["Titanium.", "So strong. So light. So Pro."],
    video: highlightSecondVideo,
    videoDuration: 5,
  },
  {
    id: 3,
    textLists: [
      "iPhone 15 Pro Max has the",
      "longest optical zoom in",
      "iPhone ever. Far out.",
    ],
    video: highlightThirdVideo,
    videoDuration: 2,
  },
  {
    id: 4,
    textLists: ["All-new Action button.", "What will yours do?."],
    video: highlightFourthVideo,
    videoDuration: 3.63,
  },
];

export const models = [
  {
    id: 1,
    title: "iPhone 15 Pro in Natural Titanium",
    color: ["#8F8A81", "#ffe7b9", "#6f6c64"],
    img: yellowImg,
  },
  {
    id: 2,
    title: "iPhone 15 Pro in Blue Titanium",
    color: ["#53596E", "#6395ff", "#21242e"],
    img: blueImg,
  },
  {
    id: 3,
    title: "iPhone 15 Pro in White Titanium",
    color: ["#C9C8C2", "#ffffff", "#C9C8C2"],
    img: whiteImg,
  },
  {
    id: 4,
    title: "iPhone 15 Pro in Black Titanium",
    color: ["#454749", "#3b3b3b", "#181819"],
    img: blackImg,
  },
];

export const sizes = [
  { label: '6.1"', value: "small" },
  { label: '6.7"', value: "large" },
];

export const footerLinks = [
  "Privacy Policy",
  "Terms of Use",
  "Sales Policy",
  "Legal",
  "Site Map",
];
```

</details>

<details>
<summary><code>Lights.jsx</code></summary>

```javascript
import { Environment, Lightformer } from "@react-three/drei";

const Lights = () => {
  return (
    // group different lights and lightformers. We can use group to organize lights, cameras, meshes, and other objects in the scene.
    <group name="lights">
      {/**
       * @description Environment is used to create a background environment for the scene
       * https://github.com/pmndrs/drei?tab=readme-ov-file#environment
       */}
      <Environment resolution={256}>
        <group>
          {/**
           * @description Lightformer used to create custom lights with various shapes and properties in a 3D scene.
           * https://github.com/pmndrs/drei?tab=readme-ov-file#lightformer
           */}
          <Lightformer
            form="rect"
            intensity={10}
            position={[-1, 0, -10]}
            scale={10}
            color={"#495057"}
          />
          <Lightformer
            form="rect"
            intensity={10}
            position={[-10, 2, 1]}
            scale={10}
            rotation-y={Math.PI / 2}
          />
          <Lightformer
            form="rect"
            intensity={10}
            position={[10, 0, 1]}
            scale={10}
            rotation-y={Math.PI / 2}
          />
        </group>
      </Environment>

      {/**
       * @description spotLight is used to create a light source positioned at a specific point
       * in the scene that emits light in a specific direction.
       * https://threejs.org/docs/#api/en/lights/SpotLight
       */}
      <spotLight
        position={[-2, 10, 5]}
        angle={0.15}
        penumbra={1} // the penumbra is the soft edge of a shadow cast by a point light
        decay={0} // the amount the light dims as it moves away from the source
        intensity={Math.PI * 0.2} // the light intensity
        color={"#f8f9fa"}
      />
      <spotLight
        position={[0, -25, 10]}
        angle={0.15}
        penumbra={1}
        decay={0}
        intensity={Math.PI * 0.2}
        color={"#f8f9fa"}
      />
      <spotLight
        position={[0, 15, 5]}
        angle={0.15}
        penumbra={1}
        decay={0.1}
        intensity={Math.PI * 3}
      />
    </group>
  );
};

export default Lights;
```
</details>

<details>
<summary><code>materials</code></summary>

```javascript
    useEffect(() => {
      Object.entries(materials).map((material) => {
        // these are the material names that can't be changed color
        if (
          material[0] !== "zFdeDaGNRwzccye" &&
          material[0] !== "ujsvqBWRMnqdwPx" &&
          material[0] !== "hUlRcbieVuIiOXG" &&
          material[0] !== "jlzuBkUzuJqgiAK" &&
          material[0] !== "xNrofRCqOXXHVZt"
        ) {
          material[1].color = new THREE.Color(props.item.color[0]);
        }
        material[1].needsUpdate = true;
      });
    }, [materials, props.item]);
```

</details>

<details>
<summary><code>VideoCarousel.jsx</code></summary>

```javascript
import gsap from "gsap";
import { useGSAP } from "@gsap/react";
import { ScrollTrigger } from "gsap/all";
gsap.registerPlugin(ScrollTrigger);
import { useEffect, useRef, useState } from "react";

import { hightlightsSlides } from "../constants";
import { pauseImg, playImg, replayImg } from "../utils";

const VideoCarousel = () => {
  const videoRef = useRef([]);
  const videoSpanRef = useRef([]);
  const videoDivRef = useRef([]);

  // video and indicator
  const [video, setVideo] = useState({
    isEnd: false,
    startPlay: false,
    videoId: 0,
    isLastVideo: false,
    isPlaying: false,
  });

  const [loadedData, setLoadedData] = useState([]);
  const { isEnd, isLastVideo, startPlay, videoId, isPlaying } = video;

  useGSAP(() => {
    // slider animation to move the video out of the screen and bring the next video in
    gsap.to("#slider", {
      transform: `translateX(${-100 * videoId}%)`,
      duration: 2,
      ease: "power2.inOut", // show visualizer https://gsap.com/docs/v3/Eases
    });

    // video animation to play the video when it is in the view
    gsap.to("#video", {
      scrollTrigger: {
        trigger: "#video",
        toggleActions: "restart none none none",
      },
      onComplete: () => {
        setVideo((pre) => ({
          ...pre,
          startPlay: true,
          isPlaying: true,
        }));
      },
    });
  }, [isEnd, videoId]);

  useEffect(() => {
    let currentProgress = 0;
    let span = videoSpanRef.current;

    if (span[videoId]) {
      // animation to move the indicator
      let anim = gsap.to(span[videoId], {
        onUpdate: () => {
          // get the progress of the video
          const progress = Math.ceil(anim.progress() * 100);

          if (progress != currentProgress) {
            currentProgress = progress;

            // set the width of the progress bar
            gsap.to(videoDivRef.current[videoId], {
              width:
                window.innerWidth < 760
                  ? "10vw" // mobile
                  : window.innerWidth < 1200
                  ? "10vw" // tablet
                  : "4vw", // laptop
            });

            // set the background color of the progress bar
            gsap.to(span[videoId], {
              width: `${currentProgress}%`,
              backgroundColor: "white",
            });
          }
        },

        // when the video is ended, replace the progress bar with the indicator and change the background color
        onComplete: () => {
          if (isPlaying) {
            gsap.to(videoDivRef.current[videoId], {
              width: "12px",
            });
            gsap.to(span[videoId], {
              backgroundColor: "#afafaf",
            });
          }
        },
      });

      if (videoId == 0) {
        anim.restart();
      }

      // update the progress bar
      const animUpdate = () => {
        anim.progress(
          videoRef.current[videoId].currentTime /
            hightlightsSlides[videoId].videoDuration
        );
      };

      if (isPlaying) {
        // ticker to update the progress bar
        gsap.ticker.add(animUpdate);
      } else {
        // remove the ticker when the video is paused (progress bar is stopped)
        gsap.ticker.remove(animUpdate);
      }
    }
  }, [videoId, startPlay]);

  useEffect(() => {
    if (loadedData.length > 3) {
      if (!isPlaying) {
        videoRef.current[videoId].pause();
      } else {
        startPlay && videoRef.current[videoId].play();
      }
    }
  }, [startPlay, videoId, isPlaying, loadedData]);

  // vd id is the id for every video until id becomes number 3
  const handleProcess = (type, i) => {
    switch (type) {
      case "video-end":
        setVideo((pre) => ({ ...pre, isEnd: true, videoId: i + 1 }));
        break;

      case "video-last":
        setVideo((pre) => ({ ...pre, isLastVideo: true }));
        break;

      case "video-reset":
        setVideo((pre) => ({ ...pre, videoId: 0, isLastVideo: false }));
        break;

      case "pause":
        setVideo((pre) => ({ ...pre, isPlaying: !pre.isPlaying }));
        break;

      case "play":
        setVideo((pre) => ({ ...pre, isPlaying: !pre.isPlaying }));
        break;

      default:
        return video;
    }
  };

  const handleLoadedMetaData = (i, e) => setLoadedData((pre) => [...pre, e]);

  return (
    <>
      <div className="flex items-center">
        {hightlightsSlides.map((list, i) => (
          <div key={list.id} id="slider" className="sm:pr-20 pr-10">
            <div className="video-carousel_container">
              <div className="w-full h-full flex-center rounded-3xl overflow-hidden bg-black">
                <video
                  id="video"
                  playsInline={true}
                  className={`${
                    list.id === 2 && "translate-x-44"
                  } pointer-events-none`}
                  preload="auto"
                  muted
                  ref={(el) => (videoRef.current[i] = el)}
                  onEnded={() =>
                    i !== 3
                      ? handleProcess("video-end", i)
                      : handleProcess("video-last")
                  }
                  onPlay={() =>
                    setVideo((pre) => ({ ...pre, isPlaying: true }))
                  }
                  onLoadedMetadata={(e) => handleLoadedMetaData(i, e)}
                >
                  <source src={list.video} type="video/mp4" />
                </video>
              </div>

              <div className="absolute top-12 left-[5%] z-10">
                {list.textLists.map((text, i) => (
                  <p key={i} className="md:text-2xl text-xl font-medium">
                    {text}
                  </p>
                ))}
              </div>
            </div>
          </div>
        ))}
      </div>

      <div className="relative flex-center mt-10">
        <div className="flex-center py-5 px-7 bg-gray-300 backdrop-blur rounded-full">
          {videoRef.current.map((_, i) => (
            <span
              key={i}
              className="mx-2 w-3 h-3 bg-gray-200 rounded-full relative cursor-pointer"
              ref={(el) => (videoDivRef.current[i] = el)}
            >
              <span
                className="absolute h-full w-full rounded-full"
                ref={(el) => (videoSpanRef.current[i] = el)}
              />
            </span>
          ))}
        </div>

        <button className="control-btn">
          <img
            src={isLastVideo ? replayImg : !isPlaying ? playImg : pauseImg}
            alt={isLastVideo ? "replay" : !isPlaying ? "play" : "pause"}
            onClick={
              isLastVideo
                ? () => handleProcess("video-reset")
                : !isPlaying
                ? () => handleProcess("play")
                : () => handleProcess("pause")
            }
          />
        </button>
      </div>
    </>
  );
};

export default VideoCarousel;

```

</details>

<details>
<summary><code>utils/index.js</code></summary>

```javascript
import hero from "/assets/images/hero.jpeg";

export const heroImg = hero;

import hmv from "/assets/videos/hero.mp4";
import smallmv from "/assets/videos/smallHero.mp4";
import highlightFirstmv from "/assets/videos/highlight-first.mp4";
import highlightSectmv from "/assets/videos/hightlight-third.mp4";
import highlightThirdmv from "/assets/videos/hightlight-sec.mp4";
import highlightFourthmv from "/assets/videos/hightlight-fourth.mp4";
import exploremv from "/assets/videos/explore.mp4";
import framemv from "/assets/videos/frame.mp4";

import apple from "/assets/images/apple.svg";
import search from "/assets/images/search.svg";
import bag from "/assets/images/bag.svg";
import watch from "/assets/images/watch.svg";
import right from "/assets/images/right.svg";
import replay from "/assets/images/replay.svg";
import play from "/assets/images/play.svg";
import pause from "/assets/images/pause.svg";

import yellow from "/assets/images/yellow.jpg";
import blue from "/assets/images/blue.jpg";
import white from "/assets/images/white.jpg";
import black from "/assets/images/black.jpg";
import explore1 from "/assets/images/explore1.jpg";
import explore2 from "/assets/images/explore2.jpg";
import chip from "/assets/images/chip.jpeg";
import frame from "/assets/images/frame.png";

export const heroVideo = hmv;
export const smallHeroVideo = smallmv;
export const highlightFirstVideo = highlightFirstmv;
export const highlightSecondVideo = highlightSectmv;
export const highlightThirdVideo = highlightThirdmv;
export const highlightFourthVideo = highlightFourthmv;
export const exploreVideo = exploremv;
export const frameVideo = framemv;

export const appleImg = apple;
export const searchImg = search;
export const bagImg = bag;
export const watchImg = watch;
export const rightImg = right;
export const replayImg = replay;
export const playImg = play;
export const pauseImg = pause;

export const yellowImg = yellow;
export const blueImg = blue;
export const whiteImg = white;
export const blackImg = black;
export const explore1Img = explore1;
export const explore2Img = explore2;
export const chipImg = chip;
export const frameImg = frame;
```
</details>

<details>
<summary><code>index.css</code></summary>

```css
@tailwind base;
@tailwind components;
@tailwind utilities;

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  color: white;
  width: 100dvw;
  overflow-x: hidden;
  height: 100%;
  background: #000;
  border-color: #3b3b3b;
  user-select: none;
}

canvas {
  touch-action: none;
}

.scrim-max-width {
  margin-inline-start: auto;
  margin-inline-end: auto;
  position: relative;
  max-width: 1120px;
}

@layer utilities {
  .flex-center {
    @apply flex items-center justify-center
  }

  .nav-height {
    @apply h-[calc(100vh-60px)]
  }

  .btn {
    @apply px-5 py-2 rounded-3xl bg-blue my-5 hover:bg-transparent border border-transparent hover:border hover:text-blue hover:border-blue
  }

  .color-container {
    @apply flex items-center justify-center px-4 py-4 rounded-full bg-gray-300 backdrop-blur
  }

  .size-btn-container {
    @apply flex items-center justify-center p-1 rounded-full bg-gray-300 backdrop-blur ml-3 gap-1
  }

  .size-btn {
    @apply w-10 h-10 text-sm flex justify-center items-center bg-white text-black rounded-full transition-all
  }

  .common-padding {
    @apply sm:py-32 py-20 sm:px-10 px-5
  }

  .section-heading {
    @apply text-gray lg:text-6xl md:text-5xl text-3xl lg:mb-0 mb-5 font-medium opacity-0 translate-y-20
  }

  .feature-text {
    @apply text-gray max-w-md text-lg md:text-xl font-semibold opacity-0 translate-y-[100px]
  }

  .feature-text-container {
    @apply w-full flex-center flex-col md:flex-row mt-10 md:mt-16 gap-5
  }

  .feature-video {
    @apply w-full h-full object-cover object-center scale-150 opacity-0
  }

  .feature-video-container {
    @apply w-full flex flex-col md:flex-row gap-5 items-center
  }

  .link {
    @apply text-blue hover:underline cursor-pointer flex items-center text-xl opacity-0 translate-y-20
  }

  .control-btn {
    @apply ml-4 p-4 rounded-full bg-gray-300 backdrop-blur flex-center
  }

  .hero-title {
    @apply text-center font-semibold text-3xl text-gray-100 opacity-0 max-md:mb-10
  }

  .hiw-title {
    @apply text-4xl md:text-7xl font-semibold text-center
  }

  .hiw-subtitle {
    @apply text-gray font-semibold text-xl md:text-2xl py-10 text-center
  }

  .hiw-video {
    @apply absolute w-[95%] h-[90%] rounded-[56px] overflow-hidden
  }

  .hiw-text-container {
    @apply flex md:flex-row flex-col justify-between items-start gap-24
  }

  .hiw-text {
    @apply text-gray text-xl font-normal md:font-semibold
  }

  .hiw-bigtext {
    @apply text-white text-3xl md:text-5xl font-normal md:font-semibold my-2
  }

  .video-carousel_container {
    @apply relative sm:w-[70vw] w-[88vw] md:h-[70vh] sm:h-[50vh] h-[35vh]
  }

  .g_fadeIn {
    @apply opacity-0 translate-y-[100px]
  }
}
```

</details>

## <a name="links">🔗 Links</a>

Public Assets used in the project can be found [here](https://drive.google.com/file/d/1syHiNxSIGXVApaIozdrLXM2x5dPhvaJL/view?usp=sharing)

## <a name="more">🚀 More</a>

**Advance your skills with Next.js 14 Pro Course**

Enjoyed creating this project? Dive deeper into our PRO courses for a richer learning adventure. They're packed with detailed explanations, cool features, and exercises to boost your skills. Give it a go!

<a href="https://jsmastery.pro/next14" target="_blank">
<img src="https://github.com/sujatagunale/EasyRead/assets/151519281/557837ce-f612-4530-ab24-189e75133c71" alt="Project Banner">
</a>

<br />
<br />

**Accelerate your professional journey with the Expert Training program**

And if you're hungry for more than just a course and want to understand how we learn and tackle tech challenges, hop into our personalized masterclass. We cover best practices, different web skills, and offer mentorship to boost your confidence. Let's learn and grow together!

<a href="https://www.jsmastery.pro/masterclass" target="_blank">
<img src="https://github.com/sujatagunale/EasyRead/assets/151519281/fed352ad-f27b-400d-9b8f-c7fe628acb84" alt="Project Banner">
</a>

#
Commit 1 on 2024-09-15 08:05:43
Commit 2 on 2024-09-15 07:02:35
Commit 3 on 2024-09-15 04:46:59
Commit 4 on 2024-09-15 02:11:28
Commit 5 on 2024-09-15 01:47:48
Commit 6 on 2024-09-15 01:16:46
Commit 7 on 2024-09-15 00:16:31
Commit 8 on 2024-09-15 06:24:34
Commit 9 on 2024-09-15 07:18:15
Commit 1 on 2024-09-16 04:53:27
Commit 2 on 2024-09-16 02:41:39
Commit 3 on 2024-09-16 03:09:42
Commit 4 on 2024-09-16 04:23:25
Commit 5 on 2024-09-16 02:15:07
Commit 6 on 2024-09-16 08:33:08
Commit 7 on 2024-09-16 02:09:41
Commit 8 on 2024-09-16 05:48:15
Commit 9 on 2024-09-16 05:51:11
Commit 10 on 2024-09-16 08:38:38
Commit 11 on 2024-09-16 05:04:22
Commit 12 on 2024-09-16 05:56:46
Commit 1 on 2024-09-17 01:44:38
Commit 2 on 2024-09-17 04:47:55
Commit 3 on 2024-09-17 07:50:19
Commit 4 on 2024-09-17 06:33:33
Commit 5 on 2024-09-17 01:29:50
Commit 6 on 2024-09-17 04:07:03
Commit 7 on 2024-09-17 06:06:15
Commit 8 on 2024-09-17 06:15:24
Commit 9 on 2024-09-17 02:54:54
Commit 10 on 2024-09-17 02:17:55
Commit 1 on 2024-09-18 00:55:13
Commit 2 on 2024-09-18 08:57:45
Commit 3 on 2024-09-18 01:52:18
Commit 4 on 2024-09-18 08:08:02
Commit 5 on 2024-09-18 05:13:41
Commit 6 on 2024-09-18 05:22:29
Commit 7 on 2024-09-18 03:10:40
Commit 8 on 2024-09-18 02:35:19
Commit 9 on 2024-09-18 00:21:29
Commit 10 on 2024-09-18 05:31:50
Commit 11 on 2024-09-18 02:51:08
Commit 12 on 2024-09-18 03:14:05
Commit 13 on 2024-09-18 07:18:03
Commit 14 on 2024-09-18 00:30:17
Commit 1 on 2024-09-19 01:21:13
Commit 2 on 2024-09-19 05:00:04
Commit 3 on 2024-09-19 08:06:11
Commit 4 on 2024-09-19 06:37:07
Commit 5 on 2024-09-19 01:15:39
Commit 6 on 2024-09-19 06:11:44
Commit 7 on 2024-09-19 03:22:11
Commit 8 on 2024-09-19 07:38:38
Commit 9 on 2024-09-19 01:10:07
Commit 10 on 2024-09-19 00:00:46
Commit 1 on 2024-09-20 06:59:51
Commit 2 on 2024-09-20 06:55:00
Commit 3 on 2024-09-20 04:15:32
Commit 4 on 2024-09-20 02:38:52
Commit 5 on 2024-09-20 00:00:45
Commit 6 on 2024-09-20 03:33:25
Commit 7 on 2024-09-20 03:35:14
Commit 8 on 2024-09-20 00:53:33
Commit 9 on 2024-09-20 08:24:14
Commit 10 on 2024-09-20 02:33:41
Commit 11 on 2024-09-20 05:19:46
Commit 12 on 2024-09-20 07:51:55
Commit 13 on 2024-09-20 06:00:05
Commit 1 on 2024-09-21 05:34:12
Commit 2 on 2024-09-21 00:14:17
Commit 3 on 2024-09-21 07:55:16
Commit 4 on 2024-09-21 03:50:01
Commit 5 on 2024-09-21 09:05:19
Commit 6 on 2024-09-21 07:50:17
Commit 7 on 2024-09-21 03:04:43
Commit 8 on 2024-09-21 01:36:17
Commit 9 on 2024-09-21 03:54:58
Commit 1 on 2024-09-22 05:24:19
Commit 2 on 2024-09-22 04:53:59
Commit 3 on 2024-09-22 03:59:09
Commit 4 on 2024-09-22 02:55:18
Commit 5 on 2024-09-22 05:23:54
Commit 6 on 2024-09-22 03:46:21
Commit 7 on 2024-09-22 05:18:50
Commit 8 on 2024-09-22 05:43:57
Commit 1 on 2024-09-23 02:23:57
Commit 2 on 2024-09-23 06:20:50
Commit 3 on 2024-09-23 04:11:59
Commit 4 on 2024-09-23 04:31:03
Commit 5 on 2024-09-23 08:11:50
Commit 6 on 2024-09-23 01:05:47
Commit 7 on 2024-09-23 01:09:01
Commit 8 on 2024-09-23 02:03:39
Commit 9 on 2024-09-23 03:46:11
Commit 10 on 2024-09-23 07:18:00
Commit 11 on 2024-09-23 07:36:29
Commit 12 on 2024-09-23 07:05:08
Commit 13 on 2024-09-23 02:21:58
Commit 1 on 2024-09-24 02:16:45
Commit 2 on 2024-09-24 08:55:01
Commit 3 on 2024-09-24 05:26:17
Commit 4 on 2024-09-24 07:24:22
Commit 5 on 2024-09-24 05:04:23
Commit 6 on 2024-09-24 01:36:51
Commit 7 on 2024-09-24 04:15:24
Commit 8 on 2024-09-24 03:27:22
Commit 9 on 2024-09-24 06:18:24
Commit 10 on 2024-09-24 03:51:10
Commit 11 on 2024-09-24 07:00:48
Commit 12 on 2024-09-24 01:57:14
Commit 13 on 2024-09-24 07:28:13
Commit 14 on 2024-09-24 01:40:05
Commit 15 on 2024-09-24 05:22:03
Commit 1 on 2024-09-25 07:22:51
Commit 2 on 2024-09-25 08:36:17
Commit 3 on 2024-09-25 03:49:07
Commit 4 on 2024-09-25 02:52:28
Commit 5 on 2024-09-25 00:12:02
Commit 6 on 2024-09-25 06:59:08
Commit 7 on 2024-09-25 02:36:28
Commit 8 on 2024-09-25 00:54:45
Commit 9 on 2024-09-25 03:38:12
Commit 10 on 2024-09-25 00:41:16
Commit 1 on 2024-09-26 06:04:50
Commit 2 on 2024-09-26 04:33:52
Commit 3 on 2024-09-26 05:40:10
Commit 4 on 2024-09-26 04:02:59
Commit 5 on 2024-09-26 00:40:35
Commit 6 on 2024-09-26 05:15:26
Commit 7 on 2024-09-26 07:02:16
Commit 8 on 2024-09-26 01:48:36
Commit 9 on 2024-09-26 05:37:09
Commit 1 on 2024-09-27 03:14:02
Commit 2 on 2024-09-27 07:52:45
Commit 3 on 2024-09-27 05:03:46
Commit 4 on 2024-09-27 01:12:58
Commit 5 on 2024-09-27 07:36:59
Commit 6 on 2024-09-27 06:24:24
Commit 7 on 2024-09-27 04:49:17
Commit 8 on 2024-09-27 06:18:09
Commit 9 on 2024-09-27 02:57:32
Commit 1 on 2024-09-28 01:53:23
Commit 2 on 2024-09-28 01:24:39
Commit 3 on 2024-09-28 01:30:52
Commit 4 on 2024-09-28 06:12:46
Commit 5 on 2024-09-28 01:56:10
Commit 6 on 2024-09-28 04:58:47
Commit 7 on 2024-09-28 08:01:59
Commit 8 on 2024-09-28 07:32:58
Commit 9 on 2024-09-28 07:39:40
Commit 10 on 2024-09-28 08:25:58
Commit 11 on 2024-09-28 07:56:39
Commit 12 on 2024-09-28 06:03:27
Commit 13 on 2024-09-28 00:15:37
Commit 1 on 2024-09-29 08:11:40
Commit 2 on 2024-09-29 03:21:51
Commit 3 on 2024-09-29 01:00:36
Commit 4 on 2024-09-29 03:08:00
Commit 5 on 2024-09-29 08:47:42
Commit 6 on 2024-09-29 01:31:34
Commit 7 on 2024-09-29 07:38:26
Commit 8 on 2024-09-29 06:50:01
Commit 9 on 2024-09-29 01:38:54
Commit 10 on 2024-09-29 04:07:06
Commit 11 on 2024-09-29 01:38:14
Commit 12 on 2024-09-29 02:11:54
Commit 13 on 2024-09-29 01:00:21
Commit 14 on 2024-09-29 01:02:02
Commit 1 on 2024-09-30 01:38:57
Commit 2 on 2024-09-30 07:26:30
Commit 3 on 2024-09-30 03:07:04
Commit 4 on 2024-09-30 04:40:22
Commit 5 on 2024-09-30 03:52:55
Commit 6 on 2024-09-30 06:14:59
Commit 7 on 2024-09-30 03:07:36
Commit 8 on 2024-09-30 00:54:45
Commit 9 on 2024-09-30 07:34:27
Commit 10 on 2024-09-30 01:28:50
Commit 11 on 2024-09-30 01:09:24
Commit 12 on 2024-09-30 01:28:54
Commit 1 on 2024-10-01 03:15:25
Commit 2 on 2024-10-01 02:12:07
Commit 3 on 2024-10-01 08:36:05
Commit 4 on 2024-10-01 07:45:53
Commit 5 on 2024-10-01 02:08:34
Commit 6 on 2024-10-01 04:35:57
Commit 7 on 2024-10-01 05:25:39
Commit 8 on 2024-10-01 06:53:02
Commit 9 on 2024-10-01 05:53:45
Commit 10 on 2024-10-01 06:29:43
Commit 1 on 2024-10-02 06:42:26
Commit 2 on 2024-10-02 04:54:36
Commit 3 on 2024-10-02 03:01:18
Commit 4 on 2024-10-02 00:21:51
Commit 5 on 2024-10-02 02:15:25
Commit 6 on 2024-10-02 01:01:25
Commit 7 on 2024-10-02 01:44:19
Commit 8 on 2024-10-02 03:59:25
Commit 9 on 2024-10-02 08:37:20
Commit 10 on 2024-10-02 03:27:52
Commit 11 on 2024-10-02 03:24:49
Commit 12 on 2024-10-02 04:44:55
Commit 13 on 2024-10-02 07:34:56
Commit 14 on 2024-10-02 03:36:34
Commit 15 on 2024-10-02 06:43:34
Commit 1 on 2024-10-03 06:01:45
Commit 2 on 2024-10-03 02:39:34
Commit 3 on 2024-10-03 02:37:35
Commit 4 on 2024-10-03 03:25:30
Commit 5 on 2024-10-03 03:35:11
Commit 6 on 2024-10-03 06:49:35
Commit 7 on 2024-10-03 08:02:33
Commit 8 on 2024-10-03 08:00:01
Commit 9 on 2024-10-03 02:11:11
Commit 10 on 2024-10-03 03:56:42
Commit 11 on 2024-10-03 00:40:50
Commit 12 on 2024-10-03 04:24:32
Commit 13 on 2024-10-03 05:14:19
Commit 1 on 2024-10-04 02:18:47
Commit 2 on 2024-10-04 08:19:48
Commit 3 on 2024-10-04 02:50:49
