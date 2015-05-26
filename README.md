ILLiad Help Pages
=====
#### About
This project is an attempt to integrate documentation directly into the ILLiad client through the use of Addons. 

It was originally designed to load an html file into an Addon browser window, displaying the documentation for procesing a request at its current status. An Addon tab labeled Help is loaded and run on opening any request window. This in turn searches for and displays an html file whos name matches the status loaded from the opened request.

This leads to a problem for the "Received Incorrect/Partial Item" status as file names cannot contain the "/" character. The solution is to filter these characters out of the status name before searching for a matching file.

Another deficiency is the lack of corresponding statuses for certain processes, such as User Clearance. This need led to the creation of a help page Addon that loaded in the main client window instead of the individual request window. This Addon tab labeled ILLiad Help loads an html file that contains a listing of all ILLiad process, whether they have a corresponding status or not.

Recent developments in the Interlibrary Loan Department have created the need for a third help page addressing all department processes that can be accomplished remotely from the department. This last Addon tab also loads into the main client window and is labeled Remote Help.
#### Installation
#### Use
#### Contributers
#### Licence
