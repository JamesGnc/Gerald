<script setup>
import { ref, reactive, onMounted, onUnmounted } from 'vue'
import { gsap } from 'gsap'
import defaultSet from '../settings'
const layer = ref(null)
onMounted(() => {
  window.addEventListener('mousemove', mouseListener)
})
onUnmounted(() => {
  window.removeEventListener('mousemove', mouseListener)
})
// 图层根据鼠标移动
const mouseListener = function (event) {
  let rect = layer.value.getBoundingClientRect()
  let x = event.pageX - rect.width / 2
  let y = event.pageY - rect.height / 2
  gsap.to(layer.value, {
    x: x * 0.05,
    y: y * 0.05
  })
}

// 控制台打印
const prettyLog = () => {
    const isEmpty = (value) => {
        return value == null || value === undefined || value === '';
    };

    // 打印文字
    const prettyPrint = (title, text, color) => {
        console.log(
            `%c ${title} %c ${text} %c`,
            `background:${color};border:1px solid ${color}; padding: 1px; border-radius: 2px 0 0 2px; color: #fff;`,
            `border:1px solid ${color}; padding: 1px; border-radius: 0 2px 2px 0; color: ${color};`,
            'background:transparent'
        );
    };

    // 打印图片
    const picture = (url, scale = 1) => {
    const img = new Image();
    img.crossOrigin = 'anonymous';
    img.onload = () => {
        const c = document.createElement('canvas');
        const ctx = c.getContext('2d');
        if (ctx) {
            c.width = img.width;
            c.height = img.height;
            ctx.fillStyle = 'red';
            ctx.fillRect(0, 0, c.width, c.height);
            ctx.drawImage(img, 0, 0);
            const dataUri = c.toDataURL('image/png');

            console.log(
                `%c sup?`,
                `font-size: 1px;
                padding: ${Math.floor((img.height * scale) / 2)}px ${Math.floor((img.width * scale) / 2)}px;
                background-image: url(${dataUri});
                background-repeat: no-repeat;
                background-size: ${img.width * scale}px ${img.height * scale}px;
                color: transparent;
                `
            );
        }
    };
    img.src = url;
};


    const info = (textOrTitle, content = '') => {
        const title = isEmpty(content) ? 'Info' : textOrTitle;
        const text = isEmpty(content) ? textOrTitle : content;
        prettyPrint(title, text, '#909399');
    };
    const error = (textOrTitle, content = '') => {
        const title = isEmpty(content) ? 'Error' : textOrTitle;
        const text = isEmpty(content) ? textOrTitle : content;
        prettyPrint(title, text, '#F56C6C');
    };
    const warning = (textOrTitle, content = '') => {
        const title = isEmpty(content) ? 'Warning' : textOrTitle;
        const text = isEmpty(content) ? textOrTitle : content;
        prettyPrint(title, text, '#E6A23C');
    };
    const success = (textOrTitle, content = '') => {
        const title = isEmpty(content) ? 'Success ' : textOrTitle;
        const text = isEmpty(content) ? textOrTitle : content;
        prettyPrint(title, text, '#67C23A');
    };
    const Gerald = (textOrTitle, content = '') => {
        const title = isEmpty(content) ? 'Gerald' : textOrTitle;
        const text = isEmpty(content) ? textOrTitle : content;
        prettyPrint(title, text, 'skyblue');
    };

    return {
        info,
        error,
        warning,
        success,
        picture,
        Gerald
    };
};

// 创建打印对象
const log = prettyLog();

log.info('Gnc', '代码就是诗，编写代码是一种艺术。');

log.warning('Hahoc', '99%的性能问题源自于最后的1%代码。');

log.success('James', '没有哪段代码是写不完的，只是时间不够了。');

log.Gerald('Gerald', '代码是一种艺术，它可以让你感受到自己的创造力和想象力。');

log.error('Howard', '调试一段代码，有时需要更多时间来找到错误，而不是修复它。');

// log.picture('https://nimg.ws.126.net/?url=http%3A%2F%2Fdingyue.ws.126.net%2F2024%2F0514%2Fd0ea93ebj00sdgx56001xd200u000gtg00hz00a2.jpg&thumbnail=660x2147483647&quality=80&type=jpg');

log.picture('https://picsum.photos/640/360');



</script>
<template>
  <div class="w-screen h-screen flex items-center justify-center overflow-hidden">
    <div
      class="w-screen h-screen box-border relative flex items-center overflow-hidden sm:bg-clip-content sm:w-[calc(100%-12rem)] sm:max-w-screen-lg sm:h-2/3"
    >
      <div
        ref="layer"
        class="absolute left-0 w-full h-full bg-[url('https://picsum.photos/1920/1080')] bg-cover bg-center bg-zinc-800 scale-125"
      ></div>

      <div class="w-80 h-full absolute left-0 top-0 hidden sm:block home-glass" style="backdrop-filter: blur(3px); filter: url(#image5)"></div>
      <div class="text-white text-2xl font-black tracking-[.5rem] z-10 px-24 pointer-events-none">
        <p>A LIKE</p>
        <!-- <p>花里胡哨</p> -->
        <p>前端</p>
        <p>的</p>
        <p>后端程序员</p>
      </div>
    </div>
    <div
      class="absolute bottom-12 left-12 sm:left-24 font-bold text-white sm:text-black text-xs"
      style="font-family: 'Rajdhani', sans-serif"
    >
      ©2024 {{ defaultSet.userName }}
    </div>
    <svg width="0" height="0">
      <defs>
        <filter id="image5">
          <feImage
            result="pict7"
            xlink:href="/images/displacement/10.jpg"
            x="0"
            y="0"
            width="517"
            height="517"
          ></feImage>
          <feDisplacementMap
            scale="20"
            xChannelSelector="R"
            yChannelSelector="R"
            in2="pict7"
            in="SourceGraphic"
          ></feDisplacementMap>
        </filter>
      </defs>
    </svg>
  </div>
</template>
<style lang="scss" scoped>
@import url('https://fonts.googleapis.com/css?family=Rajdhani:300&display=swap');
.home-glass {
  mask: linear-gradient(to left,transparent 0%,  #000 100%);
}
</style>
