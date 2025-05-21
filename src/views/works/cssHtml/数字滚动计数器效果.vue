<!-- <script>
export default {
  cover: 'https://iili.io/Jq9GrUg.gif',
  link: 'https://juejin.cn/post/7262007830721413180',
  date:'2023-09-09',
  info: `参考大佬 Chokcoco 的作品，用 Vue3.0 实现了一下，代码比较简单，就不多说了。
  知识点：
  1.通过伪元素制造多层表情标签，制造3D假象；
  2.通过记录下落转向上升的那一帧开始，更换表情和背景；
  3.学会如何通过 <code>conic-gradient</code> <code>linear-gradient</code> <code>radial-gradient </code> 实现多样化的背景效果；
`
}
</script> -->

<template>
  <div class="counter-container">
    <div class="prefix">今日已解决</div>
    <div id="counter" ref="counter"></div>
    <div class="suffix">个问题</div>
  </div>
</template>

<script>
export default {
  // 组件元数据配置
  name: 'NumberCounter',
  code: 'https://github.com/JamesGnc/HTML-Interesting-Demos/blob/main/NumberRow/index.html',
  link: '', // 可选：相关文章链接
  cover: 'https://www.xn--tsl-ww1em0jbvwvjn4r5e44ta.cn/images/20250521-153439.gif', // 可选：封面图片
  info: '一个使用CSS和JavaScript实现的数字滚动计数器效果，支持自定义滚动时间、循环次数等参数，展示了平滑的数字变换动画。',
  sort: 1,
  date: '2025-05-21',
  
  data() {
    return {
      CONFIG: {
        DURATION: 2000,      // 动画持续时间（毫秒）
        ROLL_COUNT: 2,       // 数字滚动的额外循环次数
        DELAY_BETWEEN_DIGITS: 40, // 数字之间的延迟时间（毫秒）
        DIGIT_HEIGHT: 60,    // 数字高度（像素）
        TARGET_NUMBER: 7140909, // 目标数字
      }
    }
  },
  mounted() {
    this.createCounter(this.CONFIG.TARGET_NUMBER)
  },
  methods: {
    createCounter(targetNumber) {
      const counterEl = this.$refs.counter
      const digits = targetNumber.toString().split('')

      // 为每个数字创建容器和滚动效果
      digits.forEach((digit, index) => {
        const digitContainer = document.createElement('div')
        digitContainer.className = 'digit-container'

        const digitList = document.createElement('div')
        digitList.className = 'digit-list'

        // 设置动画延迟，从左到右依次延迟
        const delay = (digits.length - index - 1) * this.CONFIG.DELAY_BETWEEN_DIGITS
        digitList.style.transition = `transform ${this.CONFIG.DURATION - delay}ms ease-in-out`

        // 创建滚动序列（0-9 重复多次）
        for (let i = 0; i <= this.CONFIG.ROLL_COUNT; i++) {
          for (let j = 0; j < 10; j++) {
            const digitEl = document.createElement('div')
            digitEl.className = 'digit'
            digitEl.textContent = j
            digitList.appendChild(digitEl)
          }
        }

        digitContainer.appendChild(digitList)
        counterEl.appendChild(digitContainer)
      })

      // 开始动画
      setTimeout(() => {
        this.animateToTarget(targetNumber)
      }, 100)
    },
    animateToTarget(targetNumber) {
      const digits = targetNumber.toString().split('')
      const digitLists = document.querySelectorAll('.digit-list')

      digitLists.forEach((list, i) => {
        const targetDigit = parseInt(digits[i], 10)
        const extraRolls = this.CONFIG.ROLL_COUNT * 10
        const targetY = -(extraRolls + targetDigit) * this.CONFIG.DIGIT_HEIGHT
        list.style.transform = `translateY(${targetY}px)`
      })
    }
  }
}
</script>

<style scoped>
body {
  font-family: Arial, sans-serif;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  margin: 0;
  background-color: #f5f5f5;
}

.counter-container {
  display: flex;
  background-color: #fff;
  border-radius: 8px;
  padding: 20px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
}

.digit-container {
  width: 40px;
  height: 60px;
  overflow: hidden;
  position: relative;
  margin: 0 2px;
}

.digit-list {
  position: absolute;
  transition: transform 2s ease-in-out;
  transform: translateY(0);
}

.digit {
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 36px;
  height: 60px;
  font-weight: bold;
}

.prefix,
.suffix {
  font-size: 24px;
  margin: 0 10px;
  align-self: center;
}

#counter {
  display: flex;
}
</style>