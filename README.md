# Dudes
Hello, this is my file!

The goal of this project is to create dudes that bounce around and chase each other. 
These dudes have a position, size, color, shape, and an affinity with each other. 
My goal was to keep my code concise without sacraficing functionality, which I believe I achieved pretty well. 
The xDirection and yDirection parameters are booleans which determine a dudes initial x and y trajectory.

Dude2 will chase Dude1 and they should have effective collisions where Dude1 will bounce off Dude2.
On each collision a dude will have some sort of change to them such as a change is speed, size, or color. 
After a collision there is a window of 30 frames where another collision cannot occur to insure there are no double collisions and the dudes don't get stuck on each other. 
