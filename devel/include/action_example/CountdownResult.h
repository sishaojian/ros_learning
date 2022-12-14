// Generated by gencpp from file action_example/CountdownResult.msg
// DO NOT EDIT!


#ifndef ACTION_EXAMPLE_MESSAGE_COUNTDOWNRESULT_H
#define ACTION_EXAMPLE_MESSAGE_COUNTDOWNRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace action_example
{
template <class ContainerAllocator>
struct CountdownResult_
{
  typedef CountdownResult_<ContainerAllocator> Type;

  CountdownResult_()
    : finish(false)  {
    }
  CountdownResult_(const ContainerAllocator& _alloc)
    : finish(false)  {
  (void)_alloc;
    }



   typedef uint8_t _finish_type;
  _finish_type finish;





  typedef boost::shared_ptr< ::action_example::CountdownResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::action_example::CountdownResult_<ContainerAllocator> const> ConstPtr;

}; // struct CountdownResult_

typedef ::action_example::CountdownResult_<std::allocator<void> > CountdownResult;

typedef boost::shared_ptr< ::action_example::CountdownResult > CountdownResultPtr;
typedef boost::shared_ptr< ::action_example::CountdownResult const> CountdownResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::action_example::CountdownResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::action_example::CountdownResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::action_example::CountdownResult_<ContainerAllocator1> & lhs, const ::action_example::CountdownResult_<ContainerAllocator2> & rhs)
{
  return lhs.finish == rhs.finish;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::action_example::CountdownResult_<ContainerAllocator1> & lhs, const ::action_example::CountdownResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace action_example

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::action_example::CountdownResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::action_example::CountdownResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::action_example::CountdownResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::action_example::CountdownResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::action_example::CountdownResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::action_example::CountdownResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::action_example::CountdownResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "474a58dbb494a45bb1ca99544cd64e45";
  }

  static const char* value(const ::action_example::CountdownResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x474a58dbb494a45bULL;
  static const uint64_t static_value2 = 0xb1ca99544cd64e45ULL;
};

template<class ContainerAllocator>
struct DataType< ::action_example::CountdownResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "action_example/CountdownResult";
  }

  static const char* value(const ::action_example::CountdownResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::action_example::CountdownResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#result define\n"
"bool finish\n"
;
  }

  static const char* value(const ::action_example::CountdownResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::action_example::CountdownResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.finish);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CountdownResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::action_example::CountdownResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::action_example::CountdownResult_<ContainerAllocator>& v)
  {
    s << indent << "finish: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.finish);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACTION_EXAMPLE_MESSAGE_COUNTDOWNRESULT_H
