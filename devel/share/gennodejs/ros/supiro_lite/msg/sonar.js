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

class sonar {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.servopos = null;
      this.pingval = null;
    }
    else {
      if (initObj.hasOwnProperty('servopos')) {
        this.servopos = initObj.servopos
      }
      else {
        this.servopos = 0;
      }
      if (initObj.hasOwnProperty('pingval')) {
        this.pingval = initObj.pingval
      }
      else {
        this.pingval = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type sonar
    // Serialize message field [servopos]
    bufferOffset = _serializer.int16(obj.servopos, buffer, bufferOffset);
    // Serialize message field [pingval]
    bufferOffset = _serializer.int16(obj.pingval, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sonar
    let len;
    let data = new sonar(null);
    // Deserialize message field [servopos]
    data.servopos = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [pingval]
    data.pingval = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'supiro_lite/sonar';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0f1d004e38a764fd0851cbe630d9906';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 servopos
    int16 pingval
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new sonar(null);
    if (msg.servopos !== undefined) {
      resolved.servopos = msg.servopos;
    }
    else {
      resolved.servopos = 0
    }

    if (msg.pingval !== undefined) {
      resolved.pingval = msg.pingval;
    }
    else {
      resolved.pingval = 0
    }

    return resolved;
    }
};

module.exports = sonar;
