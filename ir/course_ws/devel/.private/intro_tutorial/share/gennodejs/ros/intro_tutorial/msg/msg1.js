// Auto-generated. Do not edit!

// (in-package intro_tutorial.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class msg1 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.A = null;
      this.B = null;
      this.C = null;
    }
    else {
      if (initObj.hasOwnProperty('A')) {
        this.A = initObj.A
      }
      else {
        this.A = 0;
      }
      if (initObj.hasOwnProperty('B')) {
        this.B = initObj.B
      }
      else {
        this.B = 0;
      }
      if (initObj.hasOwnProperty('C')) {
        this.C = initObj.C
      }
      else {
        this.C = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type msg1
    // Serialize message field [A]
    bufferOffset = _serializer.int32(obj.A, buffer, bufferOffset);
    // Serialize message field [B]
    bufferOffset = _serializer.int32(obj.B, buffer, bufferOffset);
    // Serialize message field [C]
    bufferOffset = _serializer.string(obj.C, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type msg1
    let len;
    let data = new msg1(null);
    // Deserialize message field [A]
    data.A = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [B]
    data.B = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [C]
    data.C = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.C.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'intro_tutorial/msg1';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9660119d8b929d1f29ca833ea8ed329f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 A
    int32 B
    string C
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new msg1(null);
    if (msg.A !== undefined) {
      resolved.A = msg.A;
    }
    else {
      resolved.A = 0
    }

    if (msg.B !== undefined) {
      resolved.B = msg.B;
    }
    else {
      resolved.B = 0
    }

    if (msg.C !== undefined) {
      resolved.C = msg.C;
    }
    else {
      resolved.C = ''
    }

    return resolved;
    }
};

module.exports = msg1;
