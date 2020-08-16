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

class motorpower {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.leftpwr = null;
      this.rightpwr = null;
      this.leftdir = null;
      this.rightdir = null;
    }
    else {
      if (initObj.hasOwnProperty('leftpwr')) {
        this.leftpwr = initObj.leftpwr
      }
      else {
        this.leftpwr = 0;
      }
      if (initObj.hasOwnProperty('rightpwr')) {
        this.rightpwr = initObj.rightpwr
      }
      else {
        this.rightpwr = 0;
      }
      if (initObj.hasOwnProperty('leftdir')) {
        this.leftdir = initObj.leftdir
      }
      else {
        this.leftdir = 0;
      }
      if (initObj.hasOwnProperty('rightdir')) {
        this.rightdir = initObj.rightdir
      }
      else {
        this.rightdir = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type motorpower
    // Serialize message field [leftpwr]
    bufferOffset = _serializer.int16(obj.leftpwr, buffer, bufferOffset);
    // Serialize message field [rightpwr]
    bufferOffset = _serializer.int16(obj.rightpwr, buffer, bufferOffset);
    // Serialize message field [leftdir]
    bufferOffset = _serializer.int16(obj.leftdir, buffer, bufferOffset);
    // Serialize message field [rightdir]
    bufferOffset = _serializer.int16(obj.rightdir, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type motorpower
    let len;
    let data = new motorpower(null);
    // Deserialize message field [leftpwr]
    data.leftpwr = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [rightpwr]
    data.rightpwr = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [leftdir]
    data.leftdir = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [rightdir]
    data.rightdir = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'supiro_lite/motorpower';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0ec0221cf467c083d5f32af96e0b92dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 leftpwr
    int16 rightpwr
    int16 leftdir
    int16 rightdir
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new motorpower(null);
    if (msg.leftpwr !== undefined) {
      resolved.leftpwr = msg.leftpwr;
    }
    else {
      resolved.leftpwr = 0
    }

    if (msg.rightpwr !== undefined) {
      resolved.rightpwr = msg.rightpwr;
    }
    else {
      resolved.rightpwr = 0
    }

    if (msg.leftdir !== undefined) {
      resolved.leftdir = msg.leftdir;
    }
    else {
      resolved.leftdir = 0
    }

    if (msg.rightdir !== undefined) {
      resolved.rightdir = msg.rightdir;
    }
    else {
      resolved.rightdir = 0
    }

    return resolved;
    }
};

module.exports = motorpower;
