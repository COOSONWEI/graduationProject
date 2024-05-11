/**
 * @param {Egg.Application} app - egg application
 */
const { version } = require("webpack");

//环境信息
 module.exports = app => {
    const mongoose = app.mongoose
    mongoose.pluralize(null) //去除集合后的 s
    const Schema = mongoose.Schema;
    const moment = require('moment');
    const currentTime = moment();
    const formattedTime = currentTime.format('YYYY-MM-DD HH:mm:ss');

    const EnviromentSensor = new Schema({  //创建字段
        //环境信息
        temperature_Data: {
            type:String,
            default: '',
        },
        humidity_Data: {
            type: String,
            default: '',
        },
        //空气质量数据
        air_Data: {
            type: String,
            default: '',
        },
        air_quality: {
            type: String,
            default: '',
        },
        create_time: {
            type: String,
            default: formattedTime,
        },
        update_time: {
            type: String,
            default: '',
        },
       
    }, {versionKey: false})

    return mongoose.model('EnviromentData', EnviromentSensor )
 }


 //应急事件信息
 module.exports = app => {
    const mongoose = app.mongoose
    mongoose.pluralize(null) //去除集合后的 s
    const Schema = mongoose.Schema;
    const moment = require('moment');
    const currentTime = moment();
    const formattedTime = currentTime.format('YYYY-MM-DD HH:mm:ss');

    const EmergencySensor = new Schema({  //创建字段
        //环境信息
        eventFire: {
            type: Number,
            default: 0
        },
        updateTime: {
            type: String,
            default: '2024-5-11-13:00:32',
        }
       
    }, {versionKey: false})

    return mongoose.model('EmergencyEvent', EmergencySensor )
 }