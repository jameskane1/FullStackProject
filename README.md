BE ReadMe

For reference:
Link for FE repo: https://github.com/jameskane1/FullStackFE
Link for BE repo: https://github.com/jameskane1/FullStackProject

Link for FE deployed site:https://jameskane1.github.io/FullStackFE/
Link for BE deployed site:https://jimmy-kane-full-stack-project.herokuapp.com

Link to Entity Relationship Diagram(ERD): https://i.imgur.com/iVUoFQC.jpg?1

User Stories: -The user will need to add important plays to a page
              -The user will need to have a database full of past plays
              -The user will have to view all past entered plays
              -The user will need to be able to edit past plays
              -The use rwill need to be able to delete past plays


How This App Works
  -What is this app
    This is the BE framework for my organized note taking app. There are two tables that combine to make up the BE, the user table and the plays table.

    The user table has a one to manyu relation to the plays table, as each user can have multiple plays. This plus a foreign key allow the plays be unique for each user so that each user can only create and edit plays associated to their profile.

  -How it works
    I created two tables, user and plays and set up a one to many relation ship. This allows each user to have multiple plays. I did this by scaffolding over the files for plays and then adding a foreign key and belongs_to :user to plays as well as added has_many :plays to users.

    In order to ensure that each play is associated to the correct user i have utilized the current_user method which ensures that the key from the logged in user is used to identify which plays are associated with them.

    By having the BE set up like this the user is allowed to make all crud actions to their plays without effecting other users' plays.


Technologies Used
  -Rails
  -Ruby
  -Curl requests
  -Scaffolding


Planning Documentation

My first step when presented with thie project was to think about real life jobs that would need an ability to create, track, and edit a list of items. And which ones would have the need to maintain this list for prolonged periods of time. I cam up with NFL beat writers as there are hundreds of plays in a game, which are easy to follow real time, but trying to recall all the important plays when writing an article at the end can be difficult if you do not have an orgaized system.

Once I determined the need for the NFL specific note system I thoguh about how they would want to interact with the notes. They would want a list of all past plays, they would want to be able to add to this list, they would want to be able to edit or delete items from this list, and they would want this list to be accessable only by themselves.

In order to reach this goal i would have to build a be that took login credentials and associated them to a list of associated plays. This was done by making a one to many relationship between users and plays and utilizing the protected controller to ensure that the user would have info only accessable by themselves.

Finally i had to find a way for the user to make crud actions on these plays which is how i came up with the api interations of update, delete, create, read. By adding these i would allow the user to create new, delete and edit existing, as well as view all other existing plays.

With this plan i went ahead an built out the BE first so that i could ensure i was able to crud properly then i planned on building out the user facing app with the fe crud actions.

Unsolved Problems

At this point I do not have any unsolved problems for my MVP
