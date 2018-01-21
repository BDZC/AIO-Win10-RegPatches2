Windows Shrinkorizor (for Windows 10 RTM to 1607+)

If you are a general pc user who plays games, watches videos, listens to music etc, read on.

If you are someone who uses every feature of windows, is on a network, an admin etc, stop reading now.


The batch files herein each remove component from windows that you probably won't miss or even know were there.

see the below location for a headache inducing list of various components of windows.

C:\Windows\servicing\Packages

Packages that shouldn't be removed AT ALL!!!

Push Notifications - remove and you get a flashing desktop on logon and bricked windows
RemoteFS - remove and you can't use windows properly, broken logon
Windows RT packages - bricked windows
Notification Platform - bricked windows
Containers - bricked windows
IsolatedUSerMode - slow logon, lockups
Windows Firewall - bricked windows
cloud experience host - breaks store, app signin, signin with ms account
kblayout international - breaks ability to change kb layout

there are others that will brick windows but they are the top nasties i found.


I've split this thing into catagories;

Hidden Feature Removal - removes non optional stuff
WIP - not done yet.

Optional Feature Removal - removes stuff from the Optional Features Gui. (leaves IE11, WMP, NET, DirectPlay and Powershell)
IE11 is actually heavily integrated into the OS and removing it breaks lots of things, you can remove the optional component installer, but the other packages will break stuff, so i leave it installed, i've tried many other browsers but i prefer a minimal install of stuff. (i use edge and ie with ghostery, adblock plus and custom hosts file) i don't need a browser packed with useless extensions..

Folder CleanUp - removes extra language files from winsxs and from other folders on your windows installation
WIP - not finished yet. will be ready at some point.

also includes is a handy shortcut to restart windows with a simple double click and batch files for Checking / Repairing the 
component store and cleaning up the winsxs folder.