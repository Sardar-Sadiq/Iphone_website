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
Commit 4 on 2024-10-04 06:45:47
Commit 5 on 2024-10-04 07:37:27
Commit 6 on 2024-10-04 07:57:58
Commit 7 on 2024-10-04 06:24:28
Commit 8 on 2024-10-04 08:05:07
Commit 9 on 2024-10-04 03:35:08
Commit 10 on 2024-10-04 07:18:50
Commit 11 on 2024-10-04 03:38:41
Commit 12 on 2024-10-04 07:29:39
Commit 13 on 2024-10-04 03:57:30
Commit 14 on 2024-10-04 06:13:24
Commit 15 on 2024-10-04 01:56:55
Commit 1 on 2024-10-05 05:39:16
Commit 2 on 2024-10-05 07:01:26
Commit 3 on 2024-10-05 08:28:35
Commit 4 on 2024-10-05 00:19:27
Commit 5 on 2024-10-05 07:55:30
Commit 6 on 2024-10-05 06:15:32
Commit 7 on 2024-10-05 06:27:08
Commit 8 on 2024-10-05 06:53:43
Commit 9 on 2024-10-05 02:34:33
Commit 10 on 2024-10-05 05:37:32
Commit 1 on 2024-10-06 07:56:04
Commit 2 on 2024-10-06 06:55:00
Commit 3 on 2024-10-06 06:55:37
Commit 4 on 2024-10-06 03:11:31
Commit 5 on 2024-10-06 03:33:28
Commit 6 on 2024-10-06 04:50:09
Commit 7 on 2024-10-06 06:31:19
Commit 8 on 2024-10-06 08:23:58
Commit 9 on 2024-10-06 01:33:23
Commit 10 on 2024-10-06 02:14:33
Commit 11 on 2024-10-06 04:56:46
Commit 1 on 2024-10-07 08:50:43
Commit 2 on 2024-10-07 04:02:01
Commit 3 on 2024-10-07 05:57:54
Commit 4 on 2024-10-07 03:03:43
Commit 5 on 2024-10-07 07:57:56
Commit 6 on 2024-10-07 06:26:00
Commit 7 on 2024-10-07 05:32:42
Commit 8 on 2024-10-07 01:22:48
Commit 1 on 2024-10-08 01:56:15
Commit 2 on 2024-10-08 00:42:05
Commit 3 on 2024-10-08 08:20:16
Commit 4 on 2024-10-08 01:04:31
Commit 5 on 2024-10-08 06:57:37
Commit 6 on 2024-10-08 06:37:56
Commit 7 on 2024-10-08 01:50:36
Commit 8 on 2024-10-08 07:47:03
Commit 1 on 2024-10-09 08:03:00
Commit 2 on 2024-10-09 08:31:04
Commit 3 on 2024-10-09 04:28:55
Commit 4 on 2024-10-09 08:15:03
Commit 5 on 2024-10-09 01:48:29
Commit 6 on 2024-10-09 07:38:20
Commit 7 on 2024-10-09 07:53:40
Commit 8 on 2024-10-09 04:01:29
Commit 9 on 2024-10-09 00:08:14
Commit 10 on 2024-10-09 03:29:30
Commit 11 on 2024-10-09 00:35:33
Commit 12 on 2024-10-09 04:26:53
Commit 1 on 2024-10-10 00:45:01
Commit 2 on 2024-10-10 03:11:27
Commit 3 on 2024-10-10 03:01:59
Commit 4 on 2024-10-10 07:40:08
Commit 5 on 2024-10-10 04:32:30
Commit 6 on 2024-10-10 04:55:36
Commit 7 on 2024-10-10 07:44:55
Commit 8 on 2024-10-10 07:48:55
Commit 9 on 2024-10-10 00:22:43
Commit 10 on 2024-10-10 07:21:17
Commit 1 on 2024-10-11 08:41:16
Commit 2 on 2024-10-11 00:53:38
Commit 3 on 2024-10-11 03:00:07
Commit 4 on 2024-10-11 06:18:38
Commit 5 on 2024-10-11 07:17:16
Commit 6 on 2024-10-11 01:59:14
Commit 7 on 2024-10-11 05:06:18
Commit 8 on 2024-10-11 05:26:29
Commit 1 on 2024-10-12 04:34:06
Commit 2 on 2024-10-12 03:37:41
Commit 3 on 2024-10-12 05:25:35
Commit 4 on 2024-10-12 04:45:57
Commit 5 on 2024-10-12 07:04:37
Commit 6 on 2024-10-12 05:27:44
Commit 7 on 2024-10-12 00:40:35
Commit 8 on 2024-10-12 08:03:42
Commit 9 on 2024-10-12 03:19:09
Commit 10 on 2024-10-12 04:21:25
Commit 11 on 2024-10-12 07:38:40
Commit 12 on 2024-10-12 05:05:52
Commit 13 on 2024-10-12 03:00:48
Commit 14 on 2024-10-12 07:45:15
Commit 15 on 2024-10-12 06:37:40
Commit 1 on 2024-10-13 07:55:35
Commit 2 on 2024-10-13 05:06:27
Commit 3 on 2024-10-13 03:15:08
Commit 4 on 2024-10-13 08:14:34
Commit 5 on 2024-10-13 01:39:05
Commit 6 on 2024-10-13 02:47:06
Commit 7 on 2024-10-13 02:48:49
Commit 8 on 2024-10-13 01:46:33
Commit 9 on 2024-10-13 05:56:00
Commit 10 on 2024-10-13 05:27:57
Commit 11 on 2024-10-13 04:04:48
Commit 12 on 2024-10-13 07:00:47
Commit 13 on 2024-10-13 02:58:25
Commit 14 on 2024-10-13 07:03:32
Commit 1 on 2024-10-14 01:15:21
Commit 2 on 2024-10-14 01:43:07
Commit 3 on 2024-10-14 07:19:45
Commit 4 on 2024-10-14 02:52:43
Commit 5 on 2024-10-14 08:22:22
Commit 6 on 2024-10-14 01:02:30
Commit 7 on 2024-10-14 08:51:22
Commit 8 on 2024-10-14 00:09:00
Commit 9 on 2024-10-14 06:57:28
Commit 10 on 2024-10-14 05:05:15
Commit 11 on 2024-10-14 08:06:27
Commit 12 on 2024-10-14 02:31:38
Commit 1 on 2024-10-15 02:16:18
Commit 2 on 2024-10-15 05:17:07
Commit 3 on 2024-10-15 01:31:17
Commit 4 on 2024-10-15 01:33:29
Commit 5 on 2024-10-15 00:54:20
Commit 6 on 2024-10-15 03:14:12
Commit 7 on 2024-10-15 08:18:51
Commit 8 on 2024-10-15 05:03:17
Commit 1 on 2024-10-16 05:25:35
Commit 2 on 2024-10-16 06:10:25
Commit 3 on 2024-10-16 05:58:00
Commit 4 on 2024-10-16 00:13:33
Commit 5 on 2024-10-16 08:16:25
Commit 6 on 2024-10-16 08:30:05
Commit 7 on 2024-10-16 00:06:55
Commit 8 on 2024-10-16 07:03:37
Commit 9 on 2024-10-16 02:36:51
Commit 10 on 2024-10-16 05:43:39
Commit 11 on 2024-10-16 08:50:16
Commit 12 on 2024-10-16 00:41:11
Commit 13 on 2024-10-16 01:30:27
Commit 14 on 2024-10-16 01:03:34
Commit 1 on 2024-10-17 07:48:12
Commit 2 on 2024-10-17 03:45:34
Commit 3 on 2024-10-17 06:59:24
Commit 4 on 2024-10-17 01:44:39
Commit 5 on 2024-10-17 05:40:32
Commit 6 on 2024-10-17 08:50:25
Commit 7 on 2024-10-17 00:10:15
Commit 8 on 2024-10-17 04:31:21
Commit 9 on 2024-10-17 02:51:37
Commit 10 on 2024-10-17 07:01:51
Commit 11 on 2024-10-17 06:59:59
Commit 12 on 2024-10-17 07:34:38
Commit 1 on 2024-10-18 00:21:01
Commit 2 on 2024-10-18 00:22:48
Commit 3 on 2024-10-18 08:27:00
Commit 4 on 2024-10-18 06:43:12
Commit 5 on 2024-10-18 02:17:39
Commit 6 on 2024-10-18 07:55:46
Commit 7 on 2024-10-18 08:45:44
Commit 8 on 2024-10-18 01:33:07
Commit 9 on 2024-10-18 06:17:14
Commit 10 on 2024-10-18 00:11:52
Commit 11 on 2024-10-18 07:38:26
Commit 12 on 2024-10-18 00:28:04
Commit 13 on 2024-10-18 08:13:03
Commit 1 on 2024-10-19 04:33:33
Commit 2 on 2024-10-19 07:53:42
Commit 3 on 2024-10-19 01:17:43
Commit 4 on 2024-10-19 06:37:16
Commit 5 on 2024-10-19 02:16:25
Commit 6 on 2024-10-19 03:27:15
Commit 7 on 2024-10-19 03:03:48
Commit 8 on 2024-10-19 06:24:03
Commit 9 on 2024-10-19 05:18:05
Commit 10 on 2024-10-19 04:15:42
Commit 11 on 2024-10-19 08:30:00
Commit 12 on 2024-10-19 05:49:51
Commit 13 on 2024-10-19 05:51:40
Commit 14 on 2024-10-19 05:22:10
Commit 1 on 2024-10-20 03:26:32
Commit 2 on 2024-10-20 07:57:33
Commit 3 on 2024-10-20 00:06:22
Commit 4 on 2024-10-20 01:39:10
Commit 5 on 2024-10-20 05:08:30
Commit 6 on 2024-10-20 05:02:39
Commit 7 on 2024-10-20 00:43:19
Commit 8 on 2024-10-20 06:57:17
Commit 9 on 2024-10-20 08:31:43
Commit 10 on 2024-10-20 07:55:07
Commit 11 on 2024-10-20 05:57:48
Commit 12 on 2024-10-20 06:10:15
Commit 13 on 2024-10-20 07:41:33
Commit 1 on 2024-10-21 02:19:27
Commit 2 on 2024-10-21 08:10:37
Commit 3 on 2024-10-21 07:51:00
Commit 4 on 2024-10-21 02:12:07
Commit 5 on 2024-10-21 00:52:22
Commit 6 on 2024-10-21 03:31:26
Commit 7 on 2024-10-21 05:18:21
Commit 8 on 2024-10-21 02:39:00
Commit 9 on 2024-10-21 06:49:04
Commit 1 on 2024-10-22 02:21:35
Commit 2 on 2024-10-22 02:58:42
Commit 3 on 2024-10-22 02:55:34
Commit 4 on 2024-10-22 00:11:12
Commit 5 on 2024-10-22 01:04:52
Commit 6 on 2024-10-22 06:39:59
Commit 7 on 2024-10-22 03:21:51
Commit 8 on 2024-10-22 07:39:28
Commit 9 on 2024-10-22 08:31:06
Commit 10 on 2024-10-22 02:26:36
Commit 11 on 2024-10-22 02:51:47
Commit 12 on 2024-10-22 05:06:45
Commit 1 on 2024-10-23 08:56:48
Commit 2 on 2024-10-23 02:47:16
Commit 3 on 2024-10-23 08:45:45
Commit 4 on 2024-10-23 08:29:47
Commit 5 on 2024-10-23 06:34:33
Commit 6 on 2024-10-23 03:25:56
Commit 7 on 2024-10-23 05:23:17
Commit 8 on 2024-10-23 06:52:37
Commit 1 on 2024-10-24 07:38:34
Commit 2 on 2024-10-24 02:38:54
Commit 3 on 2024-10-24 05:23:16
Commit 4 on 2024-10-24 08:48:22
Commit 5 on 2024-10-24 09:04:23
Commit 6 on 2024-10-24 03:57:37
Commit 7 on 2024-10-24 01:53:22
Commit 8 on 2024-10-24 02:45:38
Commit 1 on 2024-10-25 03:43:04
Commit 2 on 2024-10-25 03:18:09
Commit 3 on 2024-10-25 02:15:35
Commit 4 on 2024-10-25 06:19:03
Commit 5 on 2024-10-25 06:20:20
Commit 6 on 2024-10-25 03:21:02
Commit 7 on 2024-10-25 06:13:39
Commit 8 on 2024-10-25 04:38:11
Commit 9 on 2024-10-25 05:50:17
Commit 10 on 2024-10-25 06:09:54
Commit 11 on 2024-10-25 07:55:55
Commit 1 on 2024-10-26 08:33:45
Commit 2 on 2024-10-26 04:26:46
Commit 3 on 2024-10-26 04:07:54
Commit 4 on 2024-10-26 04:00:46
Commit 5 on 2024-10-26 00:25:59
Commit 6 on 2024-10-26 02:12:49
Commit 7 on 2024-10-26 04:25:02
Commit 8 on 2024-10-26 05:29:59
Commit 9 on 2024-10-26 08:34:10
Commit 10 on 2024-10-26 04:59:59
Commit 11 on 2024-10-26 03:43:13
Commit 1 on 2024-10-27 06:41:23
Commit 2 on 2024-10-27 02:31:49
Commit 3 on 2024-10-27 01:56:59
Commit 4 on 2024-10-27 07:02:44
Commit 5 on 2024-10-27 01:02:04
Commit 6 on 2024-10-27 00:45:43
Commit 7 on 2024-10-27 05:21:06
Commit 8 on 2024-10-27 06:26:06
Commit 1 on 2024-10-28 00:33:19
Commit 2 on 2024-10-28 04:59:59
Commit 3 on 2024-10-28 00:28:55
Commit 4 on 2024-10-28 06:29:12
Commit 5 on 2024-10-28 04:31:59
Commit 6 on 2024-10-28 02:44:06
Commit 7 on 2024-10-28 02:46:59
Commit 8 on 2024-10-28 03:09:44
Commit 1 on 2024-10-29 04:46:11
Commit 2 on 2024-10-29 00:17:31
Commit 3 on 2024-10-29 03:22:06
Commit 4 on 2024-10-29 05:20:17
Commit 5 on 2024-10-29 08:11:50
Commit 6 on 2024-10-29 04:32:58
Commit 7 on 2024-10-29 00:45:11
Commit 8 on 2024-10-29 08:37:19
Commit 9 on 2024-10-29 07:14:34
Commit 10 on 2024-10-29 04:02:55
Commit 11 on 2024-10-29 06:50:41
Commit 12 on 2024-10-29 01:36:52
Commit 1 on 2024-10-30 01:26:30
Commit 2 on 2024-10-30 08:48:37
Commit 3 on 2024-10-30 00:28:51
Commit 4 on 2024-10-30 07:19:15
Commit 5 on 2024-10-30 06:38:38
Commit 6 on 2024-10-30 00:26:23
Commit 7 on 2024-10-30 03:45:17
Commit 8 on 2024-10-30 00:02:51
Commit 9 on 2024-10-30 05:39:06
Commit 10 on 2024-10-30 05:34:19
Commit 11 on 2024-10-30 03:05:20
Commit 12 on 2024-10-30 00:43:09
Commit 13 on 2024-10-30 07:12:43
Commit 14 on 2024-10-30 07:19:34
Commit 1 on 2024-10-31 08:51:01
Commit 2 on 2024-10-31 08:23:28
Commit 3 on 2024-10-31 05:50:46
Commit 4 on 2024-10-31 05:14:08
Commit 5 on 2024-10-31 08:12:55
Commit 6 on 2024-10-31 04:20:10
Commit 7 on 2024-10-31 01:02:59
Commit 8 on 2024-10-31 08:10:10
Commit 9 on 2024-10-31 00:20:16
Commit 10 on 2024-10-31 08:36:29
Commit 11 on 2024-10-31 00:10:22
Commit 1 on 2024-11-01 03:42:15
Commit 2 on 2024-11-01 04:48:50
Commit 3 on 2024-11-01 05:48:12
Commit 4 on 2024-11-01 00:31:00
Commit 5 on 2024-11-01 03:27:10
Commit 6 on 2024-11-01 07:06:27
Commit 7 on 2024-11-01 08:08:47
Commit 8 on 2024-11-01 04:15:19
Commit 9 on 2024-11-01 06:10:09
Commit 1 on 2024-11-02 08:55:26
Commit 2 on 2024-11-02 05:46:16
Commit 3 on 2024-11-02 01:25:55
Commit 4 on 2024-11-02 03:32:07
Commit 5 on 2024-11-02 00:26:34
Commit 6 on 2024-11-02 04:54:20
Commit 7 on 2024-11-02 04:39:03
Commit 8 on 2024-11-02 07:38:13
Commit 9 on 2024-11-02 02:46:14
Commit 10 on 2024-11-02 06:51:07
Commit 11 on 2024-11-02 02:04:11
Commit 12 on 2024-11-02 00:56:59
Commit 1 on 2024-11-03 00:20:23
Commit 2 on 2024-11-03 05:12:17
Commit 3 on 2024-11-03 03:12:05
Commit 4 on 2024-11-03 05:35:05
Commit 5 on 2024-11-03 08:00:10
Commit 6 on 2024-11-03 07:37:47
Commit 7 on 2024-11-03 06:32:49
Commit 8 on 2024-11-03 02:07:13
Commit 9 on 2024-11-03 06:26:58
Commit 10 on 2024-11-03 00:00:40
Commit 11 on 2024-11-03 03:40:35
Commit 12 on 2024-11-03 04:07:21
Commit 1 on 2024-11-04 01:19:16
Commit 2 on 2024-11-04 07:45:33
Commit 3 on 2024-11-04 06:58:30
Commit 4 on 2024-11-04 06:41:13
Commit 5 on 2024-11-04 06:00:56
Commit 6 on 2024-11-04 02:32:13
Commit 7 on 2024-11-04 07:09:58
