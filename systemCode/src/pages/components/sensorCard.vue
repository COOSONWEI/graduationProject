<template>
    <view class="card">
        <view class="info">
            <!-- 对应图标 -->
            <image class="sensorImg"
                :src="imgSrc"
                mode="aspectFit"
            />
            <!-- 名称 -->
            <text class="sensorName">{{sensorName}}</text>
            <!-- 主要的数据 -->
            <text class="primateInfo">{{primateInfo}}</text>
        </view>
        <button
            :disabled="false"
            :loading="false"
            hover-class="button-hover"
            @click="toggleEvent"
        >
            <image class="actionButton"
                src=""
                mode="scaleToFill"
            />
        </button>
    </view>
</template>

<script setup lang="ts">
import { ref } from 'vue';

const imgSrc = ref('')
const sensorName = ref('')
const primateInfo = ref('')

function toggleEvent() {
    
}
</script>

<style>
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
}

</style>