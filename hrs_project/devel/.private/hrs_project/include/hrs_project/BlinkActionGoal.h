// Generated by gencpp from file hrs_project/BlinkActionGoal.msg
// DO NOT EDIT!


#ifndef HRS_PROJECT_MESSAGE_BLINKACTIONGOAL_H
#define HRS_PROJECT_MESSAGE_BLINKACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <hrs_project/BlinkGoal.h>

namespace hrs_project
{
template <class ContainerAllocator>
struct BlinkActionGoal_
{
  typedef BlinkActionGoal_<ContainerAllocator> Type;

  BlinkActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  BlinkActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::hrs_project::BlinkGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::hrs_project::BlinkActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hrs_project::BlinkActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct BlinkActionGoal_

typedef ::hrs_project::BlinkActionGoal_<std::allocator<void> > BlinkActionGoal;

typedef boost::shared_ptr< ::hrs_project::BlinkActionGoal > BlinkActionGoalPtr;
typedef boost::shared_ptr< ::hrs_project::BlinkActionGoal const> BlinkActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hrs_project::BlinkActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hrs_project::BlinkActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hrs_project

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'hrs_project': ['/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hrs_project::BlinkActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hrs_project::BlinkActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hrs_project::BlinkActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hrs_project::BlinkActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hrs_project::BlinkActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hrs_project::BlinkActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hrs_project::BlinkActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8fb9f71a23feed1923381dc04a3cab38";
  }

  static const char* value(const ::hrs_project::BlinkActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8fb9f71a23feed19ULL;
  static const uint64_t static_value2 = 0x23381dc04a3cab38ULL;
};

template<class ContainerAllocator>
struct DataType< ::hrs_project::BlinkActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hrs_project/BlinkActionGoal";
  }

  static const char* value(const ::hrs_project::BlinkActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hrs_project::BlinkActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
BlinkGoal goal\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: hrs_project/BlinkGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Goal: colours to use for blinking, plus blinking rate mean and sd\n\
# Result: true if robot is still blinking (call was pre-empted by another user)\n\
# Feedback: last blinked colour\n\
std_msgs/ColorRGBA[] colors\n\
std_msgs/ColorRGBA bg_color\n\
duration blink_duration\n\
float32 blink_rate_mean\n\
float32 blink_rate_sd\n\
\n\
================================================================================\n\
MSG: std_msgs/ColorRGBA\n\
float32 r\n\
float32 g\n\
float32 b\n\
float32 a\n\
";
  }

  static const char* value(const ::hrs_project::BlinkActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hrs_project::BlinkActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BlinkActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hrs_project::BlinkActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hrs_project::BlinkActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::hrs_project::BlinkGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HRS_PROJECT_MESSAGE_BLINKACTIONGOAL_H
