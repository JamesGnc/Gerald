<script setup>
import 'element-plus/es/components/message/style/css'
import { ElMessage } from 'element-plus'
</script>
<template>
  <div
    class="pt-28 px-12 sm:px-60 text-xs tracking-widest sm:max-w-screen-sm sm:m-auto selection:bg-stone-700 selection:text-white"
  >
    <br />
    <p>
      留下你想说话的话 💬
    </p>
    
    <el-empty>
      <el-button type="info" plain description="description">写几句</el-button>
    </el-empty>
    
  </div>
</template>
<style lang="scss" scoped></style>
