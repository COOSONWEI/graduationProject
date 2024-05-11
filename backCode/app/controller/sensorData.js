
const { Controller } = require('egg');


class SensorDataController extends Controller {
 
  //获取火焰传感器信息
  async getFireSensor() {
    const { ctx, service } = this
    const { status, updateTime } = ctx.request.body
    console.log('status', status);
    console.log('updateTime', updateTime);
    const moment = require('moment');
    const currentTime = moment();
    const formattedTime = currentTime.format('YYYY-MM-DD HH:mm:ss');
    // const res = await service.sensorData.getFireSensor(status,updateTime)
    // console.log(res.data)

    ctx.body = {
      data: {
        success: true,
        message: {
          status: status,
          updateTime: updateTime
        }
      }
    }
  }


  //获取温湿度信息
  async getTemperature() {
    const { ctx, service } = this
    const { temperature, humidity} = ctx.request.body;
    console.log('获取到的温度 = ', temperature);
    console.log('获取到的湿度 = ', humidity);

    //对温湿度信息进行数据过滤后返回给前端
    if (temperature > 50 || temperature < -50) {
      ctx.body = {
        data: {
          success: true,
          message: '温度数据错误'
        }
      }
    }else if (humidity > 80 || humidity < 40){
      ctx.body = {
        data: {
          success: true,
          message: '湿度数据错误'
        }
      }
    }else {
      //如果数据都没有问题则返回给前端正确数据
      ctx.body = {
        data: {
          success: true,
          message: {
            temperature: temperature,
            humidity: humidity
          }
        }
      }
    }
  }

  //获取门磁开关信息
  async getDoorSensor() {
    const {ctx, service} = this
    const { doorSensorData } = ctx.request.body;
    console.log('门磁传感器数据 = ', doorSensorData);

    const doorStates = 0 //关闭状态为 0，打开状态为 1
    if (doorSensorData.statues == 1){
      ctx.body = {
        data: {
          success: true,
          message: {
            doorData: '门磁被打开了',
            updateTime: doorSensorData.updateTime,
          }
        }
      }
    }else if (doorSensorData.statues == 1) {
      ctx.body = {
        data: {
          success: true,
          message: {
            doorData: '门磁关闭了',
            updateTime: doorSensorData.updateTime,
          }
        }
      }
    }else{
      ctx.body = {
        data: {
          success: true,
          message: {
            doorData: '门磁状态数据获取异常',
            updateTime: doorSensorData.updateTime,
          }
        }
      }
    }
  }

  //电风扇
  async getFenceSensor() {
    const {ctx, service} = this
    const {  fenceSensorData } = ctx.request.body;
    console.log('风扇传感器数据 = ', doorSensorData);

    const fenceStatus = 0 //关闭状态为 0，打开状态为 1

    if (fenceSensorData.statues == 1){
      ctx.body = {
        data: {
          success: true,
          message: {
            doorData: '风扇被打开了',
            updateTime: fenceSensorData.updateTime,
          }
        }
      }
    }else if (fenceSensorData.statues == 1) {
      ctx.body = {
        data: {
          success: true,
          message: {
            doorData: '风扇关闭了',
            updateTime: fenceSensorData.updateTime,
          }
        }
      }
    }else{
      ctx.body = {
        data: {
          success: true,
          message: {
            doorData: '风扇状态数据获取异常',
            updateTime: fenceSensorData.updateTime,
          }
        }
      }
    }
  }


  //   //登录
  // async login() {
  //   const { ctx, service } = this;
  //   const { username, password } = ctx.request.body;
  //   console.log(username);
  //   console.log(password);
  //   ctx.body = {
  //     success: true,
  //     message: '登录成功',
  //   };
  // }

  // //注册
  // async register() {
  //   const { ctx, service } = this;
  //   const { username, password } = ctx.request.body;
  //   console.log(username);
  //   console.log(password);
  //   // 注册逻辑
  //   //...

  //   ctx.body = {
  //     data:{
  //       success: true,
  //     username: username,
  //     message: '注册成功',
  //     }
  //   };
  // }
  
}

module.exports = SensorDataController;
