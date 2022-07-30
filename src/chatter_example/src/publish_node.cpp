#include "ros/ros.h"  //must include "ros/ros.h",this is c++ library of client provided by ROS
#include "std_msgs/String.h"//using standart message for ROS 
#include "chatter_example/Person.h"

#include <sstream> //

int main (int argc, char **argv)
{
    ros::init(argc,argv,"publish_node");//Initializing a node and name it "publish_node" 
    ros::NodeHandle nh; //creat a node handle

    //创建一个Publisher，发布名为ssj_chatter的topic，消息类型为 chatter_example::Persion，队列长度为100
    ros::Publisher ssj_pub = nh.advertise<chatter_example::Person>("ssj_chatter",1000);
    //the buffer size is 1000
    ros::Rate loop_rate(100);
    int count = 0;

    while(ros::ok())
    {
        // std_msgs::String msg;
        // std::stringstream ss;
        // ss << "hello" << count;
        // msg.data = ss.str();
        // ROS_INFO("%s",msg.data.c_str());//output on terminal

        // chatter_pub.publish(msg);

        chatter_example::Person person_msg;
        person_msg.name = "SSJ";
        person_msg.age  = 26;
        person_msg.sex  = chatter_example::Person::male;

        ssj_pub.publish(person_msg);

        ros::spinOnce();
        loop_rate.sleep();
        ++count;
    }
    return 0;

}



