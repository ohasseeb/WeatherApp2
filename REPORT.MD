
This is a report about the weather App that I made, throughout the report  
details about what the project was about and up to where I got to and future work,  
and what I learned will be listed.  

# Goal # 

The Goal of this project was to create a weather app that would calculate the weather  
for 10 days for a given city. 

(The Free API only goes to 5 days but I was able to make due with what was given)  

https://openweathermap.org/api

# Plan #

My plan of action was relatively simple it was to  

    # first # : Set up the HTTP Request to get JSON Data
    # second #: With the parsed JSON Data, place in their respective objects and place on tableView  
    # Third # : Allow to get the weather of different cities and UI 

 
 
  # first # : Set up the HTTP Request to get JSON Data  
  I was able to accomplish this with no problems, my takeaway here it that I learned  
  about error codes. 
  
  ## Second ##: With the parsed JSON Data, Place in their respective Objects and Place on the tableView:  
  I had a lot of trouble and this is what took me the most of my time but what I was able to learn is about  
  how to use #Decodable# Keyword in swift, it made the actual parsing pretty easy it was up to me to now put  
  it to their respective objects and with #.decode# it wasn't that bad. Unfortunately putting it on the tableView  
  caused a bit of struggle, I remembered when progrmaming with closures, the code is no longer sequential. Since,  
  the httpRequest was in a Closure. I decided to have the initial view control print a message  
  "Waiting on server or button press". At First, I had -1 (Their default values) print but from a design perspective  
  this made more sense.  
  
  Getting the data to print after the press did take a while and overall I was successful but after extreme testing, I exhausted
  the API causing my program to crash. 
  
  # Third # : Allow to get the weather of different cities and UI 
  Unfortunatley I wasn't able to allocate too much time into this but If I had some more time  
  I would have fixed the ability of looking up cities that are two and more words  
  by finding the white space and replacing it with "-" which is how the WebQuery string interprets those  
  cities.  
  
  Another Unfortunate point in the develeopment is the UI! I did not do a good job of the UI, maainly because   
  I thought the core functionalities (Step 1 and 2) worked. However, my vision for the weather app was actually  
  to look a lot like Apples Weather App. I would have been able to do this with another table and another WebRequest to the   
  Hourly API instead of the Day API.
  
  # Conclusion #
  Overall, I really enjoyed this experience, Although my work got deleted and I had to restart yesterday, I was really  
  happy with how far I got. 
  
  The reason it says "Brian Nguyen" On top is because I used TeamViewer To his lap top and he had his environment set up.  
  Since it was not my environment I did not change it.
  
  Parsing through JSON and HTTP Requests, wasn't a job I've gotten on the past teams I've worked on so I was  
  pretty happy to learn how to do that now, I don't think I will struggle with these two concepts too much now. 
  
  If I had more time,like another week, I would clean up the code by working around all the edge cases and make the UI  
  a lot more pleasent to look at. 
  
  Something I wish I did better was just have clean code a long the way, some of my variables names could have been  
  better as well as constraints that I set up could have been more specific. Also, I wish i committed more frequently,  
  after every little change, I should have pushed those instead of having big commits.  
  
  At the end of the day, I am happy with what I was able to accomplish and learn despite its holes.
  
  
 
  
