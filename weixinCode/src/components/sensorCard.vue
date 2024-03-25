<template>
    <view class="card">
        <view class="info">
            <!-- 对应图标 -->
            <image class="sensorImg"
                :src="imgSrc"
                mode="aspectFill"
            />
            <!-- 名称 -->
            <text class="sensorName">{{sensorName}}</text>
            <!-- 主要的数据 -->
            <text class="primateInfo">{{primateInfo}}</text>
        </view>
        <button
           class="my-button"
            :disabled="false"
            :loading="false"
            hover-class="button-hover"
            @click="toggleEvent"
        >
            <image  class="actionButton"
                :src="isChange ? '../static/switchButton-on.png' : '../static/switchButton-off.png'"
                mode="aspectFit"
            />
        </button>
    </view>
</template>

<script setup lang="ts">
import { ref, defineProps,reactive } from 'vue';
const props = defineProps({
    isChange: Boolean,
    imgSrc: String,
    sensorName: String,
    primateInfo: String
    
})
const isChange = ref(false)
const cardInfo = reactive({
    imgSrc: props.imgSrc,
    sensorName: props.sensorName,
    primateInfo: props.primateInfo
})


function toggleEvent() {
    isChange.value = !isChange.value
    //开关处理事件
}
</script>

<style>
.card {
  background-color: #ffffff;
  padding: 16px;
  border-radius: 8px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.info {
  margin-bottom: 8px;
  word-wrap: break-word;
}

.sensorImg {
    width: 32px;
    height: 32px;
}

.sensorName {
    font-size: 14px;
    font-weight: bold;
}

.primateInfo {
    font-size: 10px;
}

.actionButton {
    width: 32px;
    height: 32px;
    background-color: #ffff;
  border: none;
  /* display: flex;
  align-items: center;
  justify-content: center; */

}
.my-button {
    background-color: #ffff;
}
.button-hover {
  background-color: #ffff;
  /* 设置点击效果的背景颜色 */
}

</style>