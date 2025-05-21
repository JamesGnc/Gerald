<script setup>
import 'element-plus/es/components/message/style/css'
import { onMounted } from 'vue'; 
import { CursorSpecialEffects  } from '@/assets/js/mouseClick.js';

onMounted(() => {
  const cursorSpecialEffects = new CursorSpecialEffects();
  cursorSpecialEffects.init();
});

</script>
<template>
  <div
    id = "app"
    class="pt-28 px-12 sm:px-60 text-xs tracking-widest sm:max-w-screen-sm sm:m-auto selection:bg-stone-700 selection:text-white"
  >
    <br />
    <!-- <p>
      留下你想说话的话 💬
    </p>
    
    <el-empty>
      <el-button type="info" plain description="description">写几句</el-button>
    </el-empty> -->
      <div class="comment-container">

    <!-- 评论输入区域 -->
    <div class="comment-input-section">
      <div class="input-wrapper">
        <!-- <img src="/path/to/avatar.jpg" alt="用户头像" class="user-avatar"> -->
        <div class="input-area">
          <textarea 
            placeholder="平等表达，友善交流" 
            v-model="commentContent"
            @input="updateCharCount"
          ></textarea>
          <div class="input-footer">
            <div class="tools">
              <button class="tool-btn"></button>
              <button class="tool-btn"></button>
            </div>
            <div class="submit-area">
              <span class="char-count">{{ charCount }}/1000</span>
              <button class="send-btn" :disabled="!commentContent.trim()">发送</button>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- 评论分类标签 -->
    <div class="comment-tabs">
      <button :class="['tab-btn', activeTab === 'hot' ? 'active' : '']" @click="activeTab = 'hot'">最热</button>
      <button :class="['tab-btn', activeTab === 'new' ? 'active' : '']" @click="activeTab = 'new'">最新</button>
    </div>

    <!-- 评论列表 -->
    <div class="comment-list">
      <div v-for="(comment, index) in comments" :key="index" class="comment-item">
        <img :src="comment.avatar" :alt="comment.username" class="comment-avatar">
        <div class="comment-main">
          <div class="comment-info">
            <span class="username">{{ comment.username }}</span>
            <span v-if="comment.tag" class="user-tag">{{ comment.tag }}</span>
          </div>
          <p class="comment-text">{{ comment.content }}</p>
          <div class="comment-actions">
            <span class="time">{{ comment.time }}</span>
            <button class="action-btn">
              <span class="icon">👍</span>
              <span>点赞</span>
            </button>
            <button class="action-btn">
              <span class="icon">💬</span>
              <span>评论</span>
            </button>
            <button class="more-btn">...</button>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
</template>

<script>
export default {
  name: 'CommentView',
  data() {
    return {
      commentContent: '',
      charCount: 0,
      activeTab: 'hot',
      commentCount: 10,
      comments: [
        {
          username: '西兰花叮',
          tag: 'PHP 程儿',
          avatar: '/path/to/avatar1.jpg',
          content: '所以你整夜整的是怎么个效果？',
          time: '1小时前'
        },
        {
          username: 'Yser',
          tag: '摸鱼',
          avatar: '/path/to/avatar2.jpg',
          content: '换一个思路，老虎机🎰，跟这个也差不多',
          time: '1天前'
        }
      ]
    }
  },
  methods: {
    updateCharCount() {
      this.charCount = this.commentContent.length
    }
  }
}
</script>


<style lang="scss" scoped>
  .comment-container {
  max-width: 800px;
  margin: 0 auto;
  padding: 20px;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
}

.comment-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 24px;
}

.comment-count {
  font-size: 16px;
  font-weight: 600;
  color: #333;
}

.nav-tabs {
  display: flex;
  gap: 24px;
}

.nav-tabs span {
  color: #666;
  cursor: pointer;
  font-size: 14px;
}

.comment-input-section {
  background: #f8f9fa;
  border-radius: 8px;
  padding: 16px;
  margin-bottom: 24px;
}

.input-wrapper {
  display: flex;
  gap: 12px;
}

.user-avatar {
  width: 32px;
  height: 32px;
  border-radius: 50%;
}

.input-area {
  flex: 1;
}

textarea {
  width: 96%;
  min-height: 80px;
  padding: 12px;
  border: none;
  border-radius: 4px;
  background: #fff;
  resize: none;
  font-size: 14px;
  margin-bottom: 8px;
}

textarea:focus {
  outline: none;
}

.input-footer {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.tools {
  display: flex;
  gap: 8px;
}

.tool-btn {
  background: none;
  border: none;
  cursor: pointer;
  font-size: 18px;
  padding: 4px;
}

.submit-area {
  display: flex;
  align-items: center;
  gap: 12px;
}

.char-count {
  color: #999;
  font-size: 12px;
}

.send-btn {
  background: #1e80ff;
  color: white;
  border: none;
  padding: 6px 16px;
  border-radius: 4px;
  font-size: 14px;
  cursor: pointer;
}

.send-btn:disabled {
  background: #ccc;
  cursor: not-allowed;
}

.comment-tabs {
  border-bottom: 1px solid #eee;
  margin-bottom: 20px;
}

.tab-btn {
  background: none;
  border: none;
  padding: 8px 16px;
  font-size: 14px;
  color: #666;
  cursor: pointer;
  position: relative;
  margin-right: 16px;
}

.tab-btn.active {
  color: #1e80ff;
  font-weight: 500;
}

.tab-btn.active::after {
  content: '';
  position: absolute;
  bottom: -1px;
  left: 0;
  right: 0;
  height: 2px;
  background: #1e80ff;
}

.comment-list {
  margin-top: 20px;
}

.comment-item {
  display: flex;
  gap: 12px;
  padding: 16px 0;
  border-bottom: 1px solid #eee;
}

.comment-avatar {
  width: 36px;
  height: 36px;
  border-radius: 50%;
}

.comment-main {
  flex: 1;
}

.comment-info {
  margin-bottom: 4px;
}

.username {
  font-weight: 500;
  color: #333;
  margin-right: 8px;
}

.user-tag {
  background: #f2f3f5;
  padding: 2px 6px;
  border-radius: 3px;
  font-size: 12px;
  color: #666;
}

.comment-text {
  font-size: 14px;
  color: #333;
  line-height: 1.6;
  margin-bottom: 8px;
}

.comment-actions {
  display: flex;
  align-items: center;
  gap: 16px;
}

.time {
  color: #999;
  font-size: 12px;
}

.action-btn {
  background: none;
  border: none;
  color: #666;
  font-size: 13px;
  cursor: pointer;
  display: flex;
  align-items: center;
  gap: 4px;
  padding: 0;
}

.action-btn:hover {
  color: #1e80ff;
}

.more-btn {
  background: none;
  border: none;
  color: #666;
  font-size: 16px;
  cursor: pointer;
  padding: 0 4px;
}

</style>
