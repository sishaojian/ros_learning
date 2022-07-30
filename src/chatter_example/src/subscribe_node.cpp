#include "ros/ros.h"
#include "chatter_example/Person.h"
#include "std_msgs/String.h"

//message Callback fun
void chatterCallback(const chatter_example::Person::ConstPtr& msg)
{
    ROS_INFO("Subcribe Persion Info:name:%s age:%d sex:%d", msg->name.c_str(),msg->age,msg->sex );
}

int main(int argc,char **argv)
{
    ros::init(argc,argv,"subscribe_node");
    ros::NodeHandle nh;

    ros::Subscriber ssj_sub = nh.subscribe("ssj_chatter",1000,chatterCallback);

    ros::spin();

    return 0;
}



