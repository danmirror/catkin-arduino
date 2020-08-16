// Auto-generated. Do not edit!

// (in-package supiro_lite.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class encoder {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.leftenc = null;
      this.rightenc = null;
    }
    else {
      if (initObj.hasOwnProperty('leftenc')) {
        this.leftenc = initObj.leftenc
      }
      else {
        this.leftenc = 0;
      }
      if (initObj.hasOwnProperty('rightenc')) {
        this.rightenc = initObj.rightenc
      }
      else {
        this.rightenc = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type encoder
    // Serialize message field [leftenc]
    bufferOffset = _serializer.int16(obj.leftenc, buffer, bufferOffset);
    // Serialize message field [rightenc]
    bufferOffset = _serializer.int16(obj.rightenc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type encoder
    let len;
    let data = new encoder(null);
    // Deserialize message field [leftenc]
    data.leftenc = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [rightenc]
    data.rightenc = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'supiro_lite/encoder';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c4b5437db1e679395a40f17a7aeba00';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 leftenc
    int16 rightenc
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new encoder(null);
    if (msg.leftenc !== undefined) {
      resolved.leftenc = msg.leftenc;
    }
    else {
      resolved.leftenc = 0
    }

    if (msg.rightenc !== undefined) {
      resolved.rightenc = msg.rightenc;
    }
    else {
      resolved.rightenc = 0
    }

    return resolved;
    }
};

module.exports = encoder;
