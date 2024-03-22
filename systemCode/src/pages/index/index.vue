<template>
  <!-- 用户信息聊天机器人按钮 -->
  <view class="container">
    <view style="display:flex; align-items: center;">
      <image src="../../static/Bot.png" mode="aspectFit"
        style="width:48px;height:48px;margin-top:4px;margin-bottom:4px;" />
      <view>
        <text class="title">Hello,Weikkxin</text>
        <text class="title_2">Hi,Weikkxin</text>
      </view>

    </view>

    <button class="my-button" :disabled="false" :loading="false" hover-class="button-hover" @click="handleClick">
      <image src="../../static/Bot.png" mode="aspectFit" style="transform: scale(2);" />
    </button>


  </view>
  <!-- 天气和温湿度情况显示 -->
  <view class="rectangle">

    <view class="text-show">
      <text style="font-size: 10px;color:white;margin-bottom: 8px;">上海市徐汇区</text>
      <text style="font-size: 20px;font-weight: bold;color:white;margin-bottom: 8px;">上海市徐汇区</text>
      <text style="font-size: 10px;color:white;margin-bottom: 8px;">上海市徐汇区</text>
      <text style="font-size: 16px;font-weight: bold;color:white;">18℃</text>

    </view>

    <!-- 天气对应的图片 -->
    <image src="../../static/weather/SunAndLittleRain.png" mode="aspectFill" style="width:128px;height:126px;" />

  </view>

  <!-- 房间选项卡 -->
  <view class="room-selector">
    <view  v-for="(item, index) in rooms" :key="index">
      <button class="box" :class="{ 'active': current === index }" :disabled="false" :loading="false"
      :style="{ color: current === index ? '#ffffff' : '#000000' }" @click="toggleSelection(index)" hover-class="button-hover">
        {{ item }}
      </button>
    </view>

  </view>


</template>

<script setup lang="ts">
import { ref, computed } from 'vue';

const current = ref(0)
const rooms = ref(['客厅', '厨房', '卧室'])

const isSelected = ref(false);


function toggleSelection(index: number): void {
  current.value = index;
}


</script>

<style scoped>
page {
  background-color: #F9F9F9;
}


.container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-left: 24px;
  margin-right: 24px;
  height: 56px;

}

.title {
  font-size: 14px;
  font-weight: bold;
  margin-right: 12px;
}

.title_1 {
  font-size: 12px;
  color: #8E8E93;
}

.rectangle {
  display: flex;
  align-items: center;
  height: 178px;
  border-radius: 20px;
  background-color: #527FF4;
  margin-left: 24px;
  margin-right: 24px;
  margin-top: 24px;
}

.box {
  border-Radius: 28px;
  background-Color: #ffff;
  width: 93px;
  transition-property: width, background-color,;
  transition-duration: 0.3s;
  transition-delay: 0.1s;
}

.active {
  width: 138px;
  background-color: #0F2051;
}


.my-button {
  background-color: #ffff;
  border: none;
  display: flex;
  align-items: center;
  justify-content: center;
  width: 64px;
  height: 64px;
  border-radius: 50%;
  margin-right: 1px;
}

.button-hover {
  background-color: #F9F9F9;
  /* 设置点击效果的背景颜色 */
}

.text-show {
  margin-left: 24px;
  margin-top: 24px;
  width: 149px;
  height: 130px;
  justify-content: space-between;
}

.room-selector {
  display: flex;
  margin-left: 24px;
  margin-top: 24px;
}
</style>
