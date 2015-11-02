'use strict';

const {
  NativeModules: {
    PingPP {
      setDebugMode,
      handleOpenURLInIOS8,
      handleOpenURLInIOS9,
      createPayment,
    }
  },
} = require('react-native');

class PingPlusPlus {
  
  /**
   * 设置为debug模式
   * @method setDebugMode
   * @static
   * @param {Boolean} enabled
   */
  static setDebugMode(enabled) {
    setDebugMode(enabled);
    return true;
  }
  
  /**
   * 在appDelegate中调用，iOS8及以下版本使用
   * @method handleOpenURLInIOS8
   * @static
   * @param {String} url
   * @param {Function} callback
   */
  static handleOpenURLInIOS8(url, callback) {
    return handleOpenURLInIOS8(url, callback);
  }
  
  /**
   * 在appDelegate中调用，iOS9及以上版本使用
   * @method handleOpenURLInIOS9
   * @static
   * @param {String} url
   * @param {String} source
   * @param {Function} callback
   */
  static handleOpenURLInIOS9(url, source, callback) {
    return handleOpenURLInIOS9(url, source, callback);
  }
  
  /**
   * 创建支付对象
   * @method createPayment
   * @static
   * @param {Object} charge
   * @param {String} schema
   * @param {Function} callback
   */
  static createPayment(charge, schema, callback) {
    if (typeof callback === 'function') {
      createPayment(charge, schema, callback);
    } else {
      return new Promise(
        (resolve, reject) => createPayment(charge, schema, resolve));
    }
  }

}

module.exports = PingPlusPlus;
