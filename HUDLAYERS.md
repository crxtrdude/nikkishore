# HUD Layers

For starters, according to the ZDoom Wiki [article](http://www.zdoom.org/w/index.php?title=HudMessage):

> Messages with lower ids will overlap those with higher ids.
				
In this case, we need to organize the layers. Starting with the one closest (lowest value) and lastly to one farthest (highest value).

HUD NUMBER | Assignment
---------- | ----------
1          | Defaults
2          | Text - Objective Summary/Displayable Text
3          | Text - Objective Full
4          | Text - Displayable text/Documents
5          | Text - DocumentIndex
6          | Objectives screen BG
7          | Displayable screen BG
8          | Objectives Icon
9          | Documents Icon
10	   | Nothing yet
11         | Choice 1
12         | Choice 2
13         | Choice 3
14         | Name
15	   | Used
16         | Used
17         | *'Speaking ...'*
18         | Dialog 
19         | Click-to-continue icon 
20         | VN 'Now receiving'
21	   | VN Interface
22         | Portrait Left
23         | Portrait Center     
24         | Portrait Right
 