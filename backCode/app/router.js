/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const { router, controller } = app;
  router.get('/', controller.home.index);

  router.post('/api/getSensor/fire', controller.sensorData.getFireSensor);
  router.post('/api/getSensor/temperature', controller.sensorData.getTemperature);
  router.post('/api/getSensor/door', controller.sensorData.getDoorSensor);
  router.post('/api/getSensor/fence', controller.sensorData.getDoorSensor);
  router.post('/api/getSensor/door', controller.sensorData.getDoorSensor);
  // router.post('/api/register', controller.sensorData.register);
  // router.post('/register', server.sensorData.register);
}
