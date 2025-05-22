<script setup>
import { ref, reactive, onMounted } from 'vue'
import IconGithub from '@/components/icons/github.vue'
import IconEmail from '@/components/icons/email.vue'
import IconLink from '@/components/icons/link.vue'
import IconTooling from '@/components/icons/IconTooling.vue'
import IconSupport from '@/components/icons/IconSupport.vue'
import defaultSet from '../settings'
import { CursorSpecialEffects } from '@/assets/js/mouseClick.js'

onMounted(() => {
  const cursorSpecialEffects = new CursorSpecialEffects()
  cursorSpecialEffects.init()
})
</script>

<template>
  <div class="about-container">
    <div class="content-wrapper">
      <!-- 技术栈部分 -->
      <section class="section-block">
        <h2 class="section-title">技术栈</h2>
        <div class="tech-tags">
          <span class="tech-tag">H5</span>
          <span class="tech-tag">Vue</span>
          <span class="tech-tag">微信小程序 (Uniapp)</span>
          <span class="tech-tag">.Net Core</span>
          <span class="tech-tag">SpringBoot</span>
          <span class="tech-tag">MySql</span>
        </div>
      </section>

      <!-- 社交平台部分 -->
      <section class="section-block">
        <h2 class="section-title">社交平台</h2>
        <div class="social-links">
          <a href="https://juejin.cn/user/Genc" target="_blank" class="social-link">
            <span class="platform-icon">📚</span>
            <span class="platform-name">掘金</span>
          </a>
          <a href="https://github.com/JamesGnc" target="_blank" class="social-link">
            <span class="platform-icon">💻</span>
            <span class="platform-name">Github</span>
          </a>
        </div>
        <p class="welcome-text">欢迎找到我，欢迎交流 👾</p>
      </section>

      <!-- 联系方式部分 -->
      <section class="section-block contact-section">
        <h2 class="section-title">联系方式</h2>
        <div class="contact-list">
          <a class="contact-item" rel="email">
            <IconEmail class="contact-icon" />
            <span class="contact-text">{{ defaultSet.email }}</span>
          </a>

          <a :href="defaultSet.github" class="contact-item" target="_blank">
            <IconGithub class="contact-icon" />
            <span class="contact-text">Github.com</span>
          </a>

          <div class="contact-item">
            <IconLink class="contact-icon" />
            <span class="contact-text">Wx : laiheheda</span>
          </div>

          <div class="contact-item">
            <IconLink class="contact-icon" />
            <span class="contact-text">QQ : 1796487364</span>
          </div>
        </div>
      </section>

      <!-- 作品展示部分 -->
      <section class="section-block works-section">
        <h2 class="section-title">作品展示</h2>
        <div class="works-grid">
          <!-- 小程序作品 1 -->
          <div class="work-card">
            <div class="work-image">
              <img
                src="https://www.xn--tsl-ww1em0jbvwvjn4r5e44ta.cn/images/lz.png"
                alt="小程序二维码"
                class="qr-code"
              />
            </div>
            <div class="work-content">
              <h3 class="work-title">每日一字</h3>
              <div class="work-tags">
                <span class="work-tag tag-primary">小程序</span>
                <span class="work-tag tag-secondary">.Net Core</span>
              </div>
              <p class="work-desc">用户可以根据每日字帖进行上传练字图片打卡，管理员点评和查阅。</p>
            </div>
          </div>

          <!-- 小程序作品 2 -->
          <div class="work-card">
            <div class="work-image">
              <img
                src="https://www.xn--tsl-ww1em0jbvwvjn4r5e44ta.cn/images/dk.png"
                alt="小程序二维码"
                class="qr-code"
              />
            </div>
            <div class="work-content">
              <h3 class="work-title">网球场预定</h3>
              <div class="work-tags">
                <span class="work-tag tag-primary">小程序</span>
                <span class="work-tag tag-secondary">SpringBoot</span>
              </div>
              <p class="work-desc">
                基于小程序实现在线场地预定，通过智能时段匹配算法提升球场资源利用率。
              </p>
            </div>
          </div>
        </div>
      </section>
    </div>
  </div>
</template>

<style lang="scss" scoped>
.about-container {
  min-height: 100vh;
  padding: 2rem;
  background-color: #fafafa;

  @media (min-width: 640px) {
    padding: 4rem;
  }
}

.content-wrapper {
  max-width: 800px;
  margin: 0 auto;
  margin-top: 10vh;
  padding: 2rem;
  background: white;
  border-radius: 16px;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.05);
}

.section-block {
  margin-bottom: 3rem;

  &:last-child {
    margin-bottom: 0;
  }
}

.section-title {
  font-size: 1.5rem;
  font-weight: 600;
  color: #333;
  margin-bottom: 1.5rem;
  position: relative;
  padding-left: 1rem;

  &::before {
    content: '';
    position: absolute;
    left: 0;
    top: 50%;
    transform: translateY(-50%);
    width: 4px;
    height: 1.5rem;
    background: #1e80ff;
    border-radius: 2px;
  }
}

.tech-tags {
  display: flex;
  flex-wrap: wrap;
  gap: 1rem;
}

.tech-tag {
  padding: 0.5rem 1rem;
  background: #f0f7ff;
  color: #1e80ff;
  border-radius: 20px;
  font-size: 0.9rem;
  font-weight: 500;
  transition: all 0.3s ease;

  &:hover {
    background: #1e80ff;
    color: white;
    transform: translateY(-2px);
  }
}

.social-links {
  display: flex;
  gap: 1.5rem;
  margin-bottom: 1rem;
}

.social-link {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  padding: 0.75rem 1.25rem;
  background: #f5f5f5;
  border-radius: 8px;
  color: #333;
  text-decoration: none;
  transition: all 0.3s ease;

  &:hover {
    background: #333;
    color: white;
    transform: translateY(-2px);
  }
}

.platform-icon {
  font-size: 1.2rem;
}

.platform-name {
  font-weight: 500;
}

.welcome-text {
  margin-top: 1rem;
  color: #666;
  font-size: 0.9rem;
}

.contact-section {
  background: #f8f9fa;
  padding: 2rem;
  border-radius: 12px;
}

.contact-list {
  display: flex;
  flex-direction: column;
  gap: 1rem;
}

.contact-item {
  display: flex;
  align-items: center;
  gap: 1rem;
  padding: 0.75rem;
  background: white;
  border-radius: 8px;
  color: #333;
  text-decoration: none;
  transition: all 0.3s ease;

  &:hover {
    transform: translateX(8px);
    background: #f0f7ff;
  }
}

.contact-icon {
  width: 24px;
  height: 24px;
  color: #1e80ff;
}

.contact-text {
  font-size: 0.9rem;
  font-weight: 500;
}

/* 作品展示样式 */
.works-section {
  margin-top: 3rem;
}

.works-grid {
  display: flex;
  flex-direction: column;
  gap: 2rem;
}

.work-card {
  display: flex;
  background: white;
  border-radius: 16px;
  overflow: hidden;
  box-shadow: 0 2px 12px rgba(0, 0, 0, 0.08);
  transition: all 0.3s ease;

  &:hover {
    transform: translateY(-4px);
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.12);
  }
}

.work-image {
  flex: 0 0 200px;
  padding: 1.5rem;
  background: #f8f9fa;
  display: flex;
  justify-content: center;
  align-items: center;
}

.qr-code {
  width: 160px;
  height: 160px;
  object-fit: contain;
  border-radius: 8px;
}

.work-content {
  flex: 1;
  padding: 1.5rem;
  display: flex;
  flex-direction: column;
  gap: 1rem;
}

.work-title {
  font-size: 1.4rem;
  font-weight: 600;
  color: #333;
  margin: 0;
}

.work-tags {
  display: flex;
  gap: 0.75rem;
  flex-wrap: wrap;
}

.work-tag {
  padding: 0.35rem 1rem;
  border-radius: 20px;
  font-size: 0.85rem;
  font-weight: 500;
  transition: all 0.3s ease;

  &.tag-primary {
    background: #e8f3ff;
    color: #1e80ff;
  }

  &.tag-secondary {
    background: #f0f7ff;
    color: #0056b3;
  }

  &:hover {
    transform: translateY(-2px);
  }
}

.work-desc {
  font-size: 0.95rem;
  color: #666;
  line-height: 1.6;
  margin: 0;
}

/* 响应式调整 */
@media (max-width: 640px) {
  .content-wrapper {
    padding: 1rem;
  }

  .tech-tags {
    gap: 0.5rem;
  }

  .tech-tag {
    padding: 0.4rem 0.8rem;
    font-size: 0.8rem;
  }

  .social-links {
    flex-direction: column;
  }

  .contact-section {
    padding: 1rem;
  }

  .work-card {
    flex-direction: column;
  }

  .work-image {
    flex: none;
    width: 100%;
  }

  .qr-code {
    width: 140px;
    height: 140px;
  }

  .work-content {
    padding: 1.25rem;
  }
}
</style>
