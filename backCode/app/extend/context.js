//用于框架的拓展

module.exports = {
    get ctx() {
        return this
    },
    //自定义返回前端接口数据结构
    send(data = [], status = 200, msg = 'SUCCESS', error = null) {
        this.body = { msg, data, error }
        this.status = status
    },
    //加密生成 token
    generateToken(uid) {
        const { secret, expiresIn } = this.app.config.jwt
        return jwt.sign({ uid }, secret, { expiresIn })
    }
}