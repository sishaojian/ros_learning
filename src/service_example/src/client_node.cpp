#include "ros/ros.h"
#include "service_example/AddTwoInts.h"
//#include "service_example/AddTwoIntsRequest.h"

int main(int argc,char **argv)
{
   ros::init(argc,argv,"client_node");
   ros::NodeHandle nh;

   ros::ServiceClient client = nh.serviceClient<service_example::AddTwoInts>("add_two_ints");

   service_example::AddTwoInts srv;

   while(ros::ok())
   {
    long int a_int,b_int;
    std::cout<<"please input a and b:";
    std::cin>>a_int>>b_int;

    srv.request.a = a_int;
    srv.request.b = b_int;
    if(client.call(srv))
    {
        ROS_INFO("sum = %1d",(long int)srv.response.sum);
    }
    else
    {
        ROS_INFO("failed to call service add_two_ints");
    }
   }
   return 0;

}