ELE. Simple elevation utility by http://winreview.ru

Usage:
ele - runs   new console window in the current directory.
ele /x - runs   new console window in the current directory and closes the originating console window. If ELE started from a file manager, it just opens a new elevated console in current directory.
ele application.exe /param1 /param2 - runs elevated instance of the application.exe with param1 and param2, e.g. ele notepad.exe d:\myfile.txt

Advice:
Put e.cmd and ele.exe into your Windows folder (e.g. c:\Windows) for fast and useful access to ELE's features.
Credits:
Coding: Sergey "Happy Bulldozer" Thachenko, http://winreview.ru
Testing & useful advices:  Vadim Sterkin, http://outsidethebox.ms
Parent process unmanaged api by Simon Mourier, http://stackoverflow.com/questions/394816/how-to-get-parent-process-in-net-in-managed-way