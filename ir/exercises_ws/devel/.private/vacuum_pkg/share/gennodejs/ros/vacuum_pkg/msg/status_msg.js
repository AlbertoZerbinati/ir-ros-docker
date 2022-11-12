// Auto-generated. Do not edit!

// (in-package vacuum_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class status_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ROOM_ID = null;
      this.ROOM_NAME = null;
      this.BATTERY = null;
    }
    else {
      if (initObj.hasOwnProperty('ROOM_ID')) {
        this.ROOM_ID = initObj.ROOM_ID
      }
      else {
        this.ROOM_ID = '';
      }
      if (initObj.hasOwnProperty('ROOM_NAME')) {
        this.ROOM_NAME = initObj.ROOM_NAME
      }
      else {
        this.ROOM_NAME = '';
      }
      if (initObj.hasOwnProperty('BATTERY')) {
        this.BATTERY = initObj.BATTERY
      }
      else {
        this.BATTERY = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type status_msg
    // Serialize message field [ROOM_ID]
    bufferOffset = _serializer.string(obj.ROOM_ID, buffer, bufferOffset);
    // Serialize message field [ROOM_NAME]
    bufferOffset = _serializer.string(obj.ROOM_NAME, buffer, bufferOffset);
    // Serialize message field [BATTERY]
    bufferOffset = _serializer.float32(obj.BATTERY, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type status_msg
    let len;
    let data = new status_msg(null);
    // Deserialize message field [ROOM_ID]
    data.ROOM_ID = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ROOM_NAME]
    data.ROOM_NAME = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [BATTERY]
    data.BATTERY = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ROOM_ID.length;
    length += object.ROOM_NAME.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vacuum_pkg/status_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '131a6d89e159ae530e7a3b57e773cde5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string ROOM_ID
    string ROOM_NAME
    float32 BATTERY
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new status_msg(null);
    if (msg.ROOM_ID !== undefined) {
      resolved.ROOM_ID = msg.ROOM_ID;
    }
    else {
      resolved.ROOM_ID = ''
    }

    if (msg.ROOM_NAME !== undefined) {
      resolved.ROOM_NAME = msg.ROOM_NAME;
    }
    else {
      resolved.ROOM_NAME = ''
    }

    if (msg.BATTERY !== undefined) {
      resolved.BATTERY = msg.BATTERY;
    }
    else {
      resolved.BATTERY = 0.0
    }

    return resolved;
    }
};

module.exports = status_msg;
