'use strict';

const Service = require('egg').Service;

class SensorDataService extends Service {
  async getFireSensor(status, updateTime) {
    const db = this.ctx.model.EmergencyEvent
// 获取模型
const EmergencyEvent = this.ctx.model.EmergencyEvent

// 创建初始数据对象
const initialData = {
  event_fire: 1, 
  updateTime: '2024-5-11-13:00:32'
};

// 将初始数据插入到数据库中
EmergencyEvent.create(initialData, (err, data) => {
  if (err) {
    console.error('数据创建出错:', err);
  } else {
    console.log('初始数据创建成功:', data);
  }
});
    

  }




}

module.exports = SensorDataService;
