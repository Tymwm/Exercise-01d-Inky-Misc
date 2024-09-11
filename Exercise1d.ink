/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night
VAR place = -1 // 0 Flowers, 1 Desert, 2 Another Portal



-> seashore

== seashore ==
You are sitting on the beach. 
It is {advance_time() }
{ignore_portal: It feels like a dream but you're back at the beginning of what felt like an adventure|}
{ignore_portal2: You're not sure what happened but that experience felt like a dream. But was it?|}
{time < 1: A mysterious portal opens up before you|}

+ [Stroll down the beach] -> beach2
+ {time == 1} [Walk into the portal] -> portal 
-> DONE

== portal ==
{advance_place() }

+ [Walk back into the portal] -> seashore
+ {place == 0} [Walk into the field of flowers] ->flower_field
+ {place == 1} [Walk forward into the desert] -> desert
+ {place == 2} [Walk into the other portal] -> portal2

== flower_field ==
All that surrounds you are flowers. 
The portal behind you has disappeared. 

+ [Pick flowers] -> pick_flowers

== pick_flowers ==
You grab several flowers from around you. After you finish picking as many flowers as you wanted, you raise your head. Once again you see a portal.
+ [Enter Portal] -> seashore
+ [Ignore Portal] -> ignore_portal

== ignore_portal == 
You continue to stroll around the field of flowers. Unfortunately from the side of your eye, you see the portal getting closer to you.
+ [Enter portal] -> seashore
+ [Ignore portal] -> ignore_portal2

== ignore_portal2 ==
Once again acting like you didn't see the portal you continue to stroll around. But the portal waits for no one and engulfs you in darkness.

+ [Feel around in the darkness] -> seashore


== desert ==
All around you is sand. Unfortunately you don't have water or food and died.
+ [Restart] -> seashore

== portal2 ==
All you see is white and another portal in front of you.

+ [Enter portal] -> seashore

== beach2 ==
This is further down the beach.
{& The waves wash upon the shore|The waves recede from the shore, back into the waters| The waves are calm|}

It is {advance_time() }

* {time == 1} [Pick up some seashells] -> shells
+ [Stroll back up the beach] -> seashore

== shells ==
You pick up the shells
-> beach2

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    

    
== function advance_place==
   
    ~ place = place + 1
    
    {
        - place > 2:
            ~ time = 0
    }    
    
    {    
        - place == 0:
            ~ return "A vast land of flowers lay ahead of you."
        
        - place == 1:
            ~ return "A vast desert lays in front of you."
        
        - place == 2:
            ~ return "In the white surroundings, another portal appears."
    
    }
    
    
        
    ~ return place
    
    
    
    
    
    
