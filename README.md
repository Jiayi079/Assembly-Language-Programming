# Assembly-Language-Programming
 - Translate C/C++ code into assembly language
 - Perform simple optimizations by hand
 - Trace and debug at the assembly level
 - Understand and extend simple CPU implementations
 - Understand basic interrupt/exception handling
 - Make simple performance estimates for assembly code

# C++ convert to assembly language
convert_C++.asm:
```
int pow(int, int);

int main() {
  int x = 3, p = 4, y = 5, q = 6;
  int result;

  result = pow(x, p);
  cout << result << endl;

  result = pow(y, q);
  cout << result << endl;
}

int pow(int arg0, int arg1) {
  int product = 1;
  for (int i=0; i<arg1; i++) {
    product *= arg0;
  }
  return product;
}
```
sum_integer_assignment.asm: 
```
input and integer, output the sum from 1 to integer.
```

translate_c++_to_MIPS_assembly_language.asm:
```
int v = 0, w = 1, x = 2, y = 3, z = 5;

int main(void)
{
	w = z;
	v = w + x; 
	y = w - x;
	z = z -1;
}
```
# flowchat
flowchat.asm:
![image](https://user-images.githubusercontent.com/89435466/203483818-a9fb08d3-bd8a-4a7a-a650-62eb26615b74.png)

# printout
simple-printout.asm:
1)print out “please input the value of variable a:”
2)input integer and assign it to a
3)print out “please input the value of variable b:”
4)input integer and assign it to b
5)compare a，b  
6)print out “the larger value of a,b is ” + the value

# robot
For this project, you are given a program that implements a game where a human user tries to escape from four robots. The user and four robots are on an x-y grid. On every step, you enter a move for the human. The robots will attempt to get closer to the human.
When a robot has the same x-y coordinates as the human, the game is over. You will translate this program faithfully, following all function call guidelines and MIPS register use conventions.

Two arrays x[4] and y[4] keep track of the x- and y-coordinates of four robots. The positions of the human and the four robots are initialized in the program. On each step, the user enters a move; the positions of the human and the robots are updated. This continues until the human dies. This figure gives an idea of the game; we’ll work with a text-only version, sorry.

![image](https://user-images.githubusercontent.com/89435466/203484245-8246fb30-70f9-4e94-863e-a6939a32fbae.png)

In the main loop, the user is prompted to enter a move. The position of the user is updated. Then the program calls a function moveRobots() to update the position of the robots as they try to catch the human. The new positions of the human and the robots are then displayed.

The function moveRobots() has prototype
```
int moveRobots(int *arg0, int *arg1, int arg2, int arg3)
```

arg0 is the base address of array that contains the x-coordinates of the four robots, arg1 is the base address of array that contains the y-coordinates of the four robots, arg2 is the x-coordinate of the human, arg3 is the y-coordinate of the human. moveRobots()updates the positions of the four robots, and returns a 1 if the human is alive, and a 0 if the human is dead (i.e., the human has the same coordinates as a robot). Each coordinate of a robot is updated by calling the function getNew(), which returns the new coordinate based on the current coordinate of the robot and the current coordinate of the human.

When you translate moveRobots() to MIPS assembly language, arg0 through arg3 are in $a0 through $a3; the return value is in $v0.

The function getNew() uses simple rules to move a robot closer to the human. If the difference in the coordinates is >=10, the robot's coordinate will move 10 units closer to the human. If the difference in the coordinates is < 10, the robot's coordinate will 
move one unit closer to the human. (See program listings.) getNew() has prototype

```
int getNew(int arg0, int arg1)
```

arg0 is the coordinate (x or y) of a robot, arg1 is the coordinate (x or y) of the human. getNew() returns the new coordinate of the robot, based on the position of the human.

The function getNew() is already translated to MIPS assembly language, arg0 and arg1 are in $a0 and $a1 respectively, and the return value is in $v0.

A copy of the C++ program robots.cpp can be found on iLearn. The file robots.asm contains the main program and getnew(), already translated into MIPS assembly language. Your functions will follows the main program in the same file. 


