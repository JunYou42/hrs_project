// Auto-generated. Do not edit!

// (in-package hrs_project.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class MoveJointsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_name = null;
      this.end_effector = null;
      this.goal_6Dposition_Marker = null;
      this.goal_6Dposition_Cloth = null;
      this.goal_6Dposition = null;
      this.SpeedorTime = null;
      this.axisMask = null;
      this.control_mod = null;
      this.getMarker = null;
      this.getMarker_Ground = null;
      this.cloth_color = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_name')) {
        this.joint_name = initObj.joint_name
      }
      else {
        this.joint_name = '';
      }
      if (initObj.hasOwnProperty('end_effector')) {
        this.end_effector = initObj.end_effector
      }
      else {
        this.end_effector = '';
      }
      if (initObj.hasOwnProperty('goal_6Dposition_Marker')) {
        this.goal_6Dposition_Marker = initObj.goal_6Dposition_Marker
      }
      else {
        this.goal_6Dposition_Marker = [];
      }
      if (initObj.hasOwnProperty('goal_6Dposition_Cloth')) {
        this.goal_6Dposition_Cloth = initObj.goal_6Dposition_Cloth
      }
      else {
        this.goal_6Dposition_Cloth = [];
      }
      if (initObj.hasOwnProperty('goal_6Dposition')) {
        this.goal_6Dposition = initObj.goal_6Dposition
      }
      else {
        this.goal_6Dposition = [];
      }
      if (initObj.hasOwnProperty('SpeedorTime')) {
        this.SpeedorTime = initObj.SpeedorTime
      }
      else {
        this.SpeedorTime = 0.0;
      }
      if (initObj.hasOwnProperty('axisMask')) {
        this.axisMask = initObj.axisMask
      }
      else {
        this.axisMask = 0.0;
      }
      if (initObj.hasOwnProperty('control_mod')) {
        this.control_mod = initObj.control_mod
      }
      else {
        this.control_mod = 0;
      }
      if (initObj.hasOwnProperty('getMarker')) {
        this.getMarker = initObj.getMarker
      }
      else {
        this.getMarker = false;
      }
      if (initObj.hasOwnProperty('getMarker_Ground')) {
        this.getMarker_Ground = initObj.getMarker_Ground
      }
      else {
        this.getMarker_Ground = false;
      }
      if (initObj.hasOwnProperty('cloth_color')) {
        this.cloth_color = initObj.cloth_color
      }
      else {
        this.cloth_color = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveJointsRequest
    // Serialize message field [joint_name]
    bufferOffset = _serializer.string(obj.joint_name, buffer, bufferOffset);
    // Serialize message field [end_effector]
    bufferOffset = _serializer.string(obj.end_effector, buffer, bufferOffset);
    // Serialize message field [goal_6Dposition_Marker]
    bufferOffset = _arraySerializer.float64(obj.goal_6Dposition_Marker, buffer, bufferOffset, null);
    // Serialize message field [goal_6Dposition_Cloth]
    bufferOffset = _arraySerializer.float64(obj.goal_6Dposition_Cloth, buffer, bufferOffset, null);
    // Serialize message field [goal_6Dposition]
    bufferOffset = _arraySerializer.float64(obj.goal_6Dposition, buffer, bufferOffset, null);
    // Serialize message field [SpeedorTime]
    bufferOffset = _serializer.float64(obj.SpeedorTime, buffer, bufferOffset);
    // Serialize message field [axisMask]
    bufferOffset = _serializer.float64(obj.axisMask, buffer, bufferOffset);
    // Serialize message field [control_mod]
    bufferOffset = _serializer.int8(obj.control_mod, buffer, bufferOffset);
    // Serialize message field [getMarker]
    bufferOffset = _serializer.bool(obj.getMarker, buffer, bufferOffset);
    // Serialize message field [getMarker_Ground]
    bufferOffset = _serializer.bool(obj.getMarker_Ground, buffer, bufferOffset);
    // Serialize message field [cloth_color]
    bufferOffset = _serializer.string(obj.cloth_color, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveJointsRequest
    let len;
    let data = new MoveJointsRequest(null);
    // Deserialize message field [joint_name]
    data.joint_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [end_effector]
    data.end_effector = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [goal_6Dposition_Marker]
    data.goal_6Dposition_Marker = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [goal_6Dposition_Cloth]
    data.goal_6Dposition_Cloth = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [goal_6Dposition]
    data.goal_6Dposition = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [SpeedorTime]
    data.SpeedorTime = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [axisMask]
    data.axisMask = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [control_mod]
    data.control_mod = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [getMarker]
    data.getMarker = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [getMarker_Ground]
    data.getMarker_Ground = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cloth_color]
    data.cloth_color = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.joint_name.length;
    length += object.end_effector.length;
    length += 8 * object.goal_6Dposition_Marker.length;
    length += 8 * object.goal_6Dposition_Cloth.length;
    length += 8 * object.goal_6Dposition.length;
    length += object.cloth_color.length;
    return length + 43;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hrs_project/MoveJointsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '83ee43bf529a242f799bbf5126b68060';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string joint_name
    string end_effector
    float64[] goal_6Dposition_Marker
    float64[] goal_6Dposition_Cloth
    float64[] goal_6Dposition
    
    float64 SpeedorTime
    float64 axisMask
    int8 control_mod
    bool getMarker
    bool getMarker_Ground
    
    string cloth_color
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveJointsRequest(null);
    if (msg.joint_name !== undefined) {
      resolved.joint_name = msg.joint_name;
    }
    else {
      resolved.joint_name = ''
    }

    if (msg.end_effector !== undefined) {
      resolved.end_effector = msg.end_effector;
    }
    else {
      resolved.end_effector = ''
    }

    if (msg.goal_6Dposition_Marker !== undefined) {
      resolved.goal_6Dposition_Marker = msg.goal_6Dposition_Marker;
    }
    else {
      resolved.goal_6Dposition_Marker = []
    }

    if (msg.goal_6Dposition_Cloth !== undefined) {
      resolved.goal_6Dposition_Cloth = msg.goal_6Dposition_Cloth;
    }
    else {
      resolved.goal_6Dposition_Cloth = []
    }

    if (msg.goal_6Dposition !== undefined) {
      resolved.goal_6Dposition = msg.goal_6Dposition;
    }
    else {
      resolved.goal_6Dposition = []
    }

    if (msg.SpeedorTime !== undefined) {
      resolved.SpeedorTime = msg.SpeedorTime;
    }
    else {
      resolved.SpeedorTime = 0.0
    }

    if (msg.axisMask !== undefined) {
      resolved.axisMask = msg.axisMask;
    }
    else {
      resolved.axisMask = 0.0
    }

    if (msg.control_mod !== undefined) {
      resolved.control_mod = msg.control_mod;
    }
    else {
      resolved.control_mod = 0
    }

    if (msg.getMarker !== undefined) {
      resolved.getMarker = msg.getMarker;
    }
    else {
      resolved.getMarker = false
    }

    if (msg.getMarker_Ground !== undefined) {
      resolved.getMarker_Ground = msg.getMarker_Ground;
    }
    else {
      resolved.getMarker_Ground = false
    }

    if (msg.cloth_color !== undefined) {
      resolved.cloth_color = msg.cloth_color;
    }
    else {
      resolved.cloth_color = ''
    }

    return resolved;
    }
};

class MoveJointsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num = null;
      this.RosePick_Ready = null;
      this.bMarkerArrived = null;
      this.speechCommand = null;
    }
    else {
      if (initObj.hasOwnProperty('num')) {
        this.num = initObj.num
      }
      else {
        this.num = 0.0;
      }
      if (initObj.hasOwnProperty('RosePick_Ready')) {
        this.RosePick_Ready = initObj.RosePick_Ready
      }
      else {
        this.RosePick_Ready = false;
      }
      if (initObj.hasOwnProperty('bMarkerArrived')) {
        this.bMarkerArrived = initObj.bMarkerArrived
      }
      else {
        this.bMarkerArrived = false;
      }
      if (initObj.hasOwnProperty('speechCommand')) {
        this.speechCommand = initObj.speechCommand
      }
      else {
        this.speechCommand = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveJointsResponse
    // Serialize message field [num]
    bufferOffset = _serializer.float64(obj.num, buffer, bufferOffset);
    // Serialize message field [RosePick_Ready]
    bufferOffset = _serializer.bool(obj.RosePick_Ready, buffer, bufferOffset);
    // Serialize message field [bMarkerArrived]
    bufferOffset = _serializer.bool(obj.bMarkerArrived, buffer, bufferOffset);
    // Serialize message field [speechCommand]
    bufferOffset = _serializer.string(obj.speechCommand, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveJointsResponse
    let len;
    let data = new MoveJointsResponse(null);
    // Deserialize message field [num]
    data.num = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [RosePick_Ready]
    data.RosePick_Ready = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bMarkerArrived]
    data.bMarkerArrived = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [speechCommand]
    data.speechCommand = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.speechCommand.length;
    return length + 14;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hrs_project/MoveJointsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ba6f0325e3a676f603e6569a23450230';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    float64 num
    bool RosePick_Ready
    bool bMarkerArrived
    string speechCommand
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveJointsResponse(null);
    if (msg.num !== undefined) {
      resolved.num = msg.num;
    }
    else {
      resolved.num = 0.0
    }

    if (msg.RosePick_Ready !== undefined) {
      resolved.RosePick_Ready = msg.RosePick_Ready;
    }
    else {
      resolved.RosePick_Ready = false
    }

    if (msg.bMarkerArrived !== undefined) {
      resolved.bMarkerArrived = msg.bMarkerArrived;
    }
    else {
      resolved.bMarkerArrived = false
    }

    if (msg.speechCommand !== undefined) {
      resolved.speechCommand = msg.speechCommand;
    }
    else {
      resolved.speechCommand = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: MoveJointsRequest,
  Response: MoveJointsResponse,
  md5sum() { return '904bb3e81ce1f0698f6188c53777d573'; },
  datatype() { return 'hrs_project/MoveJoints'; }
};
