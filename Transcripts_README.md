# Project 3 - Transcripts

#Client Specs - trello (Test Driven Development)
For each User Story in the Selected for Development column, you MUST have unit tests written BEFORE any application logic is written
(Notes to self: - makes tests per each feature Transcripts wants to explore)

## SPECIFICATIONS (fill in)
- ### SYNTAX:
   - IDE - IntelliJ

Java Syntax:
- Google Standards
- Lombok
- Spring Boot
- JUnit 5
- Logback classic (SLF4J)

IntelliJ Plugin Recommendations:
- Save Actions
- google-java-format
- 

- ### THEME:

- ### GOAL:
 
- ### USER STORIES: (check out example)

## PROGRAMS(revise)
- ### Java
- ### Maven
- ### JUnit
- ### SLF4J
- ### Reactor Netty
- ### Cassandra
- ### Spring
- ### Amazon Web Services

# Trello description
Uploading, storing, and sending files and message transcripts on a user by user and chat by chat basis

# 9/8 Files/Transcripts Mtg Notes:
Anyway I did just have a chat with the comms and database team leads individually.
Today's goal is to just research how spring-webflux handles file transfer and what we need for it. No real code requirements for today, just do research for tomorrow. Other teams are planning on laying out some of the structural stuff we'll be having to implement. Though I'll mention what we planned on for the implementation. 

Currently, Files won't be saved to a database directly because it'd eat up a bunch of space to encode them for it. Instead they'll just be saved to the server directly, while saving the filepath to the file in a database. We're not entirely sure which database they'll be saved to. Current plan is to hyperlink to the file's path in the chat log. However, if that wouldn't work, then we might have to implement a file database that stores all the file paths that can be referenced from the chat log instead. How that will shake out will depend on the work the communications and database team work out today. 

As for transcript side of things, the communication team is also working out whether we'll be having the chats in direct connection with each other and just saving each chat message in the background. Or if the chats are saved directly to the database and each person's chat client updates in relation to that. Which is why we don't really have much to do in terms of the transcript today because they're still figuring that out.

That said, since we don't have a lot to do today, I'll say you guys are more than free to hop into other team's discussion of these things if you wish. So long as you've got an understanding of how we should handle file transfer stuff for tomorrow, you're free to join and help them out as you please. Or if you'd just like to be more involved in the implementation we'll have to be doing tomorrow and going forward.
