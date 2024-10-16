<script setup>
import { ref, reactive, onMounted } from 'vue'
import IconGithub from '@/components/icons/github.vue'
import IconEmail from '@/components/icons/email.vue'
import IconLink from '@/components/icons/link.vue'
import defaultSet from '../settings'
onMounted(() => {})
</script>
<template>
  <div
    class="pt-28 px-12 sm:px-60 text-xs tracking-widest sm:max-w-screen-sm sm:m-auto selection:bg-stone-700 selection:text-white"
  >
    <!-- <p>关于作者是个菜鸡🐔。</p> -->
    <br />
    <p>
      喜欢并且略有涉猎的技术，大致包含
      <span class="font-bold underline text-sm">HTML / CSS / JS</span>、
      <!-- <span class="font-bold underline text-sm">html</span>、
      <span class="font-bold underline text-sm">js</span>、 -->
      <span class="font-bold underline text-sm">Vue</span>、
      <span class="font-bold underline text-sm">微信小程序 (Uniapp)</span>、
      <span class="font-bold underline text-sm">SpringBoot</span>、
      <span class="font-bold underline text-sm">.Net Core</span>等。
    </p>
    <br>
    <!-- <p>大多是以动画效果形式展示，方便有效理解和提起我的兴趣。偶尔我自己也会翻着看🤣</p> -->
    <p>
      目前也有游走于各大技术交流平台，如
      <a
        class="text-sm text-stone-800 font-bold"
        href="https://juejin.cn/user/Genc"
        target="_blank"
        >掘金👍</a
      >、
      <!-- <a
        class="text-sm text-stone-800 font-bold"
        href="https://www.jianshu.com/u/5294c349f0f1"
        target="_blank"
        >简书</a
      >都有记录，你也可以通过 -->
      <a
        class="text-sm text-stone-800 font-bold"
        href="https://github.com/JamesGnc"
        target="_blank"
        >Github</a
      >
      <br><br>
      <a
        class="text-sm text-stone-800 font-bold"
        target="_blank"
        ></a
      >
        欢迎找到我， 欢迎交流👾。
    </p>
    <br /><br /><br />
    <p class="mb-2 flex items-center select-none">
      <IconEmail class="mr-2" />
      <a
        :href="'mailto:' + defaultSet.email"
        class="text-stone-800 text-sm font-bold hover:opacity-50 hover:no-underline"
        rel="email"
        >{{ defaultSet.email }}</a
      >
    </p>
    <p class="mb-2 flex items-center select-none">
      <IconGithub class="mr-2" />
      <a
        :href="defaultSet.github"
        class="text-stone-800 text-sm font-bold hover:opacity-50 hover:no-underline"
        target="_blank"
        >Github.com</a
      >
    </p>

    <p class="mb-2 flex items-center select-none">
      <IconLink class="mr-2" />
      <a
        class="text-stone-800 text-sm font-bold hover:opacity-50 hover:no-underline"
        target="_blank"
        >Wx : laiheheda</a
      >
    </p>

  </div>
</template>
<style lang="scss" scoped></style>
