// Auto-generated. Do not edit!

// (in-package srv_tutorial.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class srv1Request {
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
        this.C = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srv1Request
    // Serialize message field [A]
    bufferOffset = _serializer.int8(obj.A, buffer, bufferOffset);
    // Serialize message field [B]
    bufferOffset = _serializer.int8(obj.B, buffer, bufferOffset);
    // Serialize message field [C]
    bufferOffset = _serializer.int8(obj.C, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srv1Request
    let len;
    let data = new srv1Request(null);
    // Deserialize message field [A]
    data.A = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [B]
    data.B = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [C]
    data.C = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'srv_tutorial/srv1Request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f95c98c1d3f4b4904df88005f12f20e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 A
    int8 B
    int8 C
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srv1Request(null);
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
      resolved.C = 0
    }

    return resolved;
    }
};

class srv1Response {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sum = null;
    }
    else {
      if (initObj.hasOwnProperty('sum')) {
        this.sum = initObj.sum
      }
      else {
        this.sum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srv1Response
    // Serialize message field [sum]
    bufferOffset = _serializer.int8(obj.sum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srv1Response
    let len;
    let data = new srv1Response(null);
    // Deserialize message field [sum]
    data.sum = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'srv_tutorial/srv1Response';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6edd3a18867f763442d05d7ba12c8004';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 sum
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srv1Response(null);
    if (msg.sum !== undefined) {
      resolved.sum = msg.sum;
    }
    else {
      resolved.sum = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: srv1Request,
  Response: srv1Response,
  md5sum() { return 'f8e36621b04a3359422e55a9b256fdc3'; },
  datatype() { return 'srv_tutorial/srv1'; }
};
