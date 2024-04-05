'use strict';

const Service = require('egg').Service;

class SensorDataService extends Service {
  async getFireSensor(fireData) {
    if (fireData) {
      return {fireData: '检测到火焰！！！' }
    }
  }
}

module.exports = SensorDataService;
