TaskTemplate= """I need you to generate subtasks for each of the tasks. Assume the gripping device is a robot arm and u are talking to the robot.

            And it has gripper. Here is an exaample.
            Example:
            Task: Place the red block on the blue block
            Subtasks:
            - Locate the red block.
            - Grasp the red block securely with your hand.
            - Move towards the blue block while holding the red block.
            - Position the red block directly above the blue block.
            - Carefully lower the red block onto the blue block.
            - Release your grip on the red block, ensuring it is stable on the blue block. 
            
            I need the output in this format
            Task: {Task_Title}
            Subtasks:
            """