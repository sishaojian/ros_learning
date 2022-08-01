#include "ros/ros.h"
#include "service_example/AddTwoInts.h"
#include "service_example/AddTwoIntsResponse.h"

bool add_execute(service_example::AddTwoInts::Request &req,   
                 service_example::AddTwoInts::Response &res)
{
    res.sum = req.a + req.b;
    ROS_INFO("recieve request: a=%1d,b=%1d",(long int)req.a,(long int)req.b);
    ROS_INFO("send response: sum=%1d",(long int)res.sum);
    return true;
}

int main(int argc,char **argv)
{
   ros::init(argc,argv,"service_node");
   ros::NodeHandle nh;

   ros::ServiceServer service = nh.advertiseService("add_two_ints",add_execute);
   ROS_INFO("service is ready!!");
   ros::spin();

   return 0;
}
   
