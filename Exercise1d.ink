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


VAR time = -1

-> seashore

== seashore ==
You are sitting on the beach. 

It is { advance_time() }

+ [Stroll down the beach.] -> beach2
+ [Go swimming here.] -> swim1
* [Dig in the sand.] -> dig
-> DONE

== beach2 ==
This is further down the beach.

It is { advance_time() }

+ [Stroll back up the beach] -> seashore
* {time == 1} [Pick up some seashells.] -> shells
+ [Go swimming here.] -> swim2

== shells ==
You pick up the shells
-> beach2

== swim1 ==
You step into the water and swim around for a bit. You see some colorful coral poking up from the sand.

+ [Return to the beach.] -> seashore

-> DONE

== swim2 ==
You slip into the water and take a swim. You see some fish swimming alongside you.

+ [Return to the beach.] -> beach2
+ [Observe the fish.] -> watchfish

-> DONE

== watchfish ==
You see a slew of different fish pass by you.

{&You see a stingray stride past you.|You watch a sea turtle speed alongside you.|You observe a craw crawl along the sand below you.}

+ [Keep watching.] -> watchfish
+ [Return to the beach.] -> beach2

-> DONE

== dig ==
You start digging into the sand, but suddenly a crab pushes out of the sand you were interacting with and rushes past you and into the ocean. Weird.

+ [Stroll down the beach.] -> beach2
+ [Go swimming here.] -> swim1

-> DONE

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 3:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Evening"
      
        - time == 3:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    
    
    
