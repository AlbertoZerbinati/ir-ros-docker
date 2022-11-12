// Auto-generated. Do not edit!

// (in-package vacuum_pkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

let status_msg = require('../msg/status_msg.js');

//-----------------------------------------------------------

class status_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ID = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ID')) {
        this.ID = initObj.ID
      }
      else {
        this.ID = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type status_srvRequest
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ID]
    bufferOffset = _serializer.string(obj.ID, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type status_srvRequest
    let len;
    let data = new status_srvRequest(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ID]
    data.ID = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.ID.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vacuum_pkg/status_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8caa789e0e9e694137371d6f18f32e6f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string ID
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new status_srvRequest(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ID !== undefined) {
      resolved.ID = msg.ID;
    }
    else {
      resolved.ID = ''
    }

    return resolved;
    }
};

class status_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new status_msg();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type status_srvResponse
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = status_msg.serialize(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type status_srvResponse
    let len;
    let data = new status_srvResponse(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = status_msg.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += status_msg.getMessageSize(object.status);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vacuum_pkg/status_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0646b5edbc1a7a1956a8ea474e52ba1f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    status_msg status # include the msg status defined in the package
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: vacuum_pkg/status_msg
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
    const resolved = new status_srvResponse(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.status !== undefined) {
      resolved.status = status_msg.Resolve(msg.status)
    }
    else {
      resolved.status = new status_msg()
    }

    return resolved;
    }
};

module.exports = {
  Request: status_srvRequest,
  Response: status_srvResponse,
  md5sum() { return '3718bc835b72cc299bc62d56555ebaea'; },
  datatype() { return 'vacuum_pkg/status_srv'; }
};
