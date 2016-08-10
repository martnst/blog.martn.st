---
layout: post
title: "An idea for a stuff database app with minimalism in mind"
date:   2016-08-08
comments: true
---

For quite some time, I have been interested in [minimalism](http://www.theminimalists.com/minimalism/). I do not follow any blogs nor social groups of in the minimalism community though. Neither did I ever attempt any of the [minimalism decluttering challenges](https://www.google.com/search?q=minimalism+challenge). 

I basically just tried to get rid of stuff I would obviously not need anymore especially large items (like a desk) or things that were easy to sell. 

A couple weeks ago, I thought, it might be helpful to have a list of all my belongings to gain more transparency as well as get an idea how many items I actually own. Unfortunately, sitting down and brainstorming such a list into a spreadsheet isn't fun for very long. Hence, I didn't get too far with it. I occasionally added some more items here and there during the last weeks. As I wanted to add items on my iPhone it didn't take long to realize the spreadsheet wasn't goint to work well enough for me. So I checked the App Store for inventory apps, but being a mobile developer none of them met my demands well enough.  

Here is a list of some apps I checked out:

- [Home Inventory](http://binaryformations.com/products/home-inventory/) for Mac with iPhone Helper apps
- [mein Inventar](https://itunes.apple.com/de/app/mein-inventar/id431851303?mt=8)
- [MyStuff2 - Home Inventory and Database](https://itunes.apple.com//app/mystuff2-home-inventory-database/id354735594?mt=8)
- [Klaser - Stuff Organizer](https://itunes.apple.com//app/id868695250)
- [Sortly - Moving, Organizing & Inventory](https://itunes.apple.com/app/id529353551)


Recently I came across this [post on Reddit](https://www.reddit.com/r/declutter/comments/4uz0nk/version_controlling_my_things) of [somebody wanting to version control his stuff on github](https://github.com/justmytwospence/things). 

Being a developer it caught my attention right away. "Hmm, " I thought, "having not just a list of all my things, but also a history of when I got rid of stuff would be kinda cool." The post on Reddit actually added some extra inspiration to develop an inventory app for people having an interest in a minimalism lifestyle like me. 

**With this blog post on the one hand I want to gather my ideas on such an app. On the other hand I would like to get some feedback on those ideas.**


## What properties are interesting to know about items?

- title / name 
- pictures 
- date & time when bought / recieved
- price the item was bought for 
- categories (user defined + defaults)
	- e.g. Clothing, Electronics, Kitchen utils, Furniture
- links to the items manufactorer product page / amazon / you name it 
- tags 
- user defined custom fields 

## Version controlling our stuff 

As mentioned above I find the idea of version controlling my stuff very appealing. So how could it look like in the app? 

Every change we make to our inventory would be logged as a change. So adding new items, making changes to existing items and ultimately "deleting" items. Each change log would include a timestamp to keep track of when it happened. Then based on these logs we would be able to see [how our stuff has changed over time](#reporting). 

### Getting rid of stuff 

As a minimalist the most fun part would probably be deleting items from your stuff to see the total number of things you have to worry about shrinking. While being able to see how you got rid of your stuff over time may be interesting enough by itself, let's take it a step further. So instead of just deleting the items, they will be marked as one of these removal types:

- marked as sold (including price) 
- marked as gifted (including whom to) 
- marked as donated (including what organisation to) 
- marked as trashed

Just mentioning it for the sake of completion: There should also be an option to actually delete items without marking a removal type e.g. for deleting test or accidental entries. 

<a name="reporting">
## Reporting 
All the effort of entering our things and marking how and when we got rid of them would be super boring if there was not reporting on how we are doing. Ultimately the app should be fun to use. So it should come with fancy charts to show various developments of our inventory. Here are some questions I've come up with so far that in my opinion would be really cool to have charts for: 

- How is our total count of things over time? (line chart) 
- How much money did I make from selling stuff I didn't need anymore in the last x days / weeks / month / overall? (bar chart aggregated by days / weeks / month) 
- How many items did I get rid of lately, optionally categorized by the removal types?
- How much did I spend on new stuff recently? 
- What is the estimated value of everything I have entered. 
	
Feel free to comment more questions / reports that might be enjoyable to watch. 

## Gamification 
With entering all those details about our things, it would it's super easy to come up with achievements / badges to reward the user for both entering items at first as well as marking them as removed. 

Another way could be to bring the some of the well known minimalism challenges into the app. Having to choose an item to get rid of could be supported by a [Tinder](https://www.gotinder.com)-like view of all your stuff. Swipe right to keep, left to get rid of it. 
	
Last but not least how about something like *shake the device to show a random item*. 


## Extras
Here are some additional thoughts / ideas: 

- Keep track of which items you lent to whom including a summary view sorted by items or persons. 
- Quick entry of items by simply adding a photo (and filling the details later on)
- Ability to enter removals of items that are not present in the app yet. This would create a new item and mark it as removed right all in one step. 
- Product database with picture and pricing details + barcode scanner for quick entry
- Database of nearby organisations that accept donations. (That's probably a different project though.)
- Mac App 
