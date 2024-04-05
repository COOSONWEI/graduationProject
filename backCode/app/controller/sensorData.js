
const { Controller } = require('egg');


class SensorDataController extends Controller {
  async getFireSensor() {
    const { ctx, service } = this
    const { fireData } = ctx.request.body
   ctx.body = {
    data: {
        fireData: fireData
    }
   }
    console.log(fireData)
  }
}

module.exports = SensorDataController;
