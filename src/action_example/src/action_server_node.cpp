#include "ros/ros.h"
#include "actionlib/server/simple_action_server.h"
#include "action_example/CountdownAction.h"

#include <string>
#include <boost/bind.hpp>

class ActionServer
{        
private:
    ros::NodeHandle nh_;
    actionlib::SimpleActionServer<action_example::CountdownAction> as_;

    action_example::CountdownGoal goal_;
    action_example::CountdownResult result_;
    action_example::CountdownFeedback feedback_;

public:
    ActionServer(std::string name): ///opt/ros/melodic/include/ros/duration.h
      as_(nh_,name,boost::bind(&ActionServer::executeCB,this,_1),false) //
    {
      as_.start();
      ROS_INFO("action server started!");  
    }
    ~ActionServer(void){}
    void executeCB(const action_example::CountdownGoalConstPtr &goal)
    {
        ros::Rate r(1);
        goal_.target_number = goal->target_number;
        goal_.target_step = goal->target_step;
        ROS_INFO("get goal:[%d,%d]",goal_.target_number,goal_.target_step);

        int count_num = goal_.target_number;
        int count_step = goal_.target_step;
        bool flag = true;
        for(int i=count_num; i>0; i=i-count_step)
        {
            if(as_.isPreemptRequested() || !ros::ok())
            {
                as_.setPreempted();
                flag=false;
                ROS_INFO("Preempted");
                break;

            }
            feedback_.count_percent = 1.0*i/count_num;
            feedback_.count_current = i;
            as_.publishFeedback(feedback_);

            r.sleep();
        }
        if(flag)
        {
            result_.finish = true;
            as_.setSucceeded(result_);
            ROS_INFO("succeeded");
        }
    }  
};


int main(int argc, char **argv)
{
    ros::init(argc, argv, "action_service_node");

    ActionServer my_action_server("/count_down");
    ros::spin();
    return 0;
}

















