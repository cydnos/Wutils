# Table of Contents

- 01 [What Are the SysInternals Tools and How Do You Use Them?](#01-what-are-the-sysinternals-tools-and-how-do-you-use-them)
  - [How Do You Get the Tools?](#how-do-you-get-the-tools)
  - [Running the Tools from SysInternals Live](#running-the-tools-from-sysinternals-live)

- 02 [Understanding Process Explorer](#02-understanding-process-explorer)
	- [So What Can Process Explorer Do?](#so-what-can-process-explorer-do)
	- [Understanding The Tree View](#understanding-the-tree-view)
	- [Understanding All Those Colors](#understanding-all-those-colors)
	- [Verifying Application Identity](#verifying-application-identity)
	- [Taking Action on a Process](#taking-action-on-a-process)
	- [Running as Administrator](#running-as-administrator)
	- [Using Process Explorer to Replace Task Manager](#using-process-explorer-to-replace-task-manager)
	- [Using Process Explorer as an Awesome Tray Icon Monitor](#using-process-explorer-as-an-awesome-tray-icon-monitor)
	- [Using Process Explorer to Quickly Search VirusTotal](#using-process-explorer-to-quickly-search-virustotal)

- 03 [Using Process Explorer to Troubleshoot and Diagnose](#03-using-process-explorer-to-troubleshoot-and-diagnose)
	- [Investigating the Conduit Search Malware](#investigating-the-conduit-search-malware)
	- [Dealing with Locked Files or Folders](#dealing-with-locked-files-or-folders)
	- [Researching Processes that Look Safe but Aren't](#researching-processes-that-look-safe-but-arent)

- 04 [Understanding Process Monitor](#04-understanding-process-monitor)
	- [The Events that Process Monitor Captures](#the-events-that-process-monitor-captures)
	- [The Process Monitor Interface](#the-process-monitor-interface)

- 05 [Using Process Monitor to Troubleshoot and Find Registry Hacks](#05-using-process-monitor-to-troubleshoot-and-find-registry-hacks)
	- [Using Process Explorer to Find Registry Keys for Common Settings](#using-process-explorer-to-find-registry-keys-for-common-settings)
	- [Troubleshooting Problems with Process Monitor](#troubleshooting-problems-with-process-monitor)

- 06 [Using Autoruns to Deal with Startup Processes and Malware](#06-using-autoruns-to-deal-with-startup-processes-and-malware)
	- [Working With the Autoruns Interface](#working-with-the-autoruns-interface)
	- [Looking at the Tabs](#looking-at-the-tabs)

- 07 [Using BgInfo to Display System Information on the Desktop](#07-using-bginfo-to-display-system-information-on-the-desktop)
	- [Using the BGInfo Interface](#using-the-bginfo-interface)

- 08 [Using PsTools to Control Other PCs from the Command Line](#08-using-pstools-to-control-other-pcs-from-the-command-line)
	- [Connecting to Remote Computers (Syntax for All Utilities)](#connecting-to-remote-computers--syntax-for-all-utilities)
	- [Configuring Remote Administration Access](#configuring-remote-administration-access)
	- [PsExec](#psexec)
	- [PsFile](#psfile)
	- [PsGetSid](#psgetsid)
	- [PsInfo](#psinfo)
	- [PsKill](#pskill)
	- [PsList](#pslist)
	- [PsLoggedOn](#psloggedon)
	- [PsLogList](#psloglist)
	- [PsPasswd](#pspasswd)
	- [PsPing](#psping)
	- [PsService](#psservice)
	- [PsShutdown](#psshutdown)
	- [PsSuspend](#pssuspend)
	- [When the Utilities Won't Connect Because of Remote Registry](#when-the-utilities-wont-connect-because-of-remote-registry)

- 09 [Analyzing and Managing Your Files, Folders, and Drives](#09-analyzing-and-managing-your-files-folders-and-drives)
	- [Streams Finds and Displays Hidden NTFS Streams](#streams-finds-and-displays-hidden-ntfs-streams)
	- [SigCheck Analyzes Files That Aren't Digitally Signed (Like Malware)](#sigcheck-analyzes-files-that-arent-digitally-signed-like-malware)
	- [SDelete Securely Deletes Files](#sdelete-securely-deletes-files)
	- [Contig Defragments One or Many Individual Files](#contig-defragments-one-or-many-individual-files)
	- [du Shows Disk Usage](#du-shows-disk-usage)
	- [PendMoves Displays Files Moving on Next Reboot](#pendmoves-displays-files-moving-on-next-reboot)
	- [MoveFiles Moves System Files when You Reboot](#movefiles-moves-system-files-when-you-reboot)
	- [Junction Creates Symbolic Links](#junction-creates-symbolic-links)
	- [FindLinks Finds Hard Links to Files](#findlinks-finds-hard-links-to-files)
	- [DiskView Displays Disk Structure](#diskview-displays-disk-structure)
	- [Disk2vhd Turns PCs into Virtual Hard Drives](#disk2vhd-turns-pcs-into-virtual-hard-drives)
	- [PageDefrag is Obsolete](#pagedefrag-is-obsolete)
	- [Sync Writes Cached Data to Your Disk](#sync-writes-cached-data-to-your-disk)
	- [Disk Monitor Shows You Real-Time Hard Drive Activity](#disk-monitor-shows-you-real-time-hard-drive-activity)
	- [VolumeID Changes the Drive's Serial Number](#volumeid-changes-the-drives-serial-number)

- 10 [Wrapping Up and Using the Tools Together](#10-wrapping-up-and-using-the-tools-together)
	- [Which Tool Should You Use?](#which-tool-should-you-use)
	- [TCPView](#tcpview)
	- [Coreinfo](#coreinfo)
	- [Handle](#handle)
	- [ListDlls](#listdlls)
	- [RamMap](#rammap)
	- [Strings Finds Human-Readable Text in Apps and DLLs](#strings-finds-human-readable-text-in-apps-and-dlls)
	- [RegJump](#regjump)
	- [Hex2Dec](#hex2dec)
	- [Autologon](#autologon)
	- [AccessChk](#accesschk)
	- [AccessEnum](#accessenum)
	- [ShellRunAs](#shellrunas)
	- [RegDelNull](#regdelnull)
	- [Ctrl2Cap](#ctrl2cap)
	- [BlueScreen Screen Saver](#bluescreen-screen-saver)

  
# 01 What Are the SysInternals Tools and How Do You Use Them?

![SysInternals 1](https://web.archive.org/web/20230604182842im_/https://www.howtogeek.com/wp-content/uploads/2014/03/gksys1.jpg?width=1198&trim=1,1&bg-color=000&pad=1,1)

This How-To Geek School series will teach you how to use SysInternals tools like a pro, so your geek cred will never be in question. Not that we are questioning your geek skills. You do use SysInternals tools, right?

There are many other admin tools built into Windows, available for free on the web, or even through commercial sources, but none of them are quite as indispensible as the SysInternals suite of tools. That’s right, there’s a full set of free tools to do almost any administrator task, from monitoring or starting processes to peeking under the hood to see what files and registry keys your applications are really accessing.

These tools are used by every single reputable computer guy — if you want to separate the wheat from the chaff, just ask your local PC repair guy what Process Explorer is used for. If he doesn’t have a clue, he’s probably not quite as good as he says. (Don’t worry, if you don’t have a clue about procexp.exe either, we’ll cover that in-depth starting in lesson 2 of this series tomorrow).

Remember that time Sony tried to embed rootkits into their music CDs? Yeah, it was a SysInternals utility that first detected the problem, and it was the SysInternals guys that made the announcement. In 2006, Microsoft finally bought the company behind SysInternals, and they continue to provide the utilities for free on their web site.

This series will walk you through each of the important tools in the kit, get you familiar with them and their many features, and then help you understand how to use them in a real-world scenario. It’s a lot of very geeky material, but it’ll be a fun ride, so be sure to stay tuned.

The SysInternals suite of tools is simply a set of Windows applications that can be downloaded for free [from their section of the Microsoft Technet web site](https://web.archive.org/web/20230604182842/https://technet.microsoft.com/en-us/sysinternals/default). They are all portable, which means that not only do you not have to install them, you can stick them on a flash drive and use them from any PC. In fact, you can actually run them without installing through SysInternals Live (which we’ll illustrate in a bit).

The tools include utilities such as Process Explorer, which is a lot like Task Manager with a plethora of extra features, or Process Monitor, which monitors your PC for filesystem, registry, or even network activity from almost any process on your system.

Autoruns helps you deal with startup processes, TCPView shows you what is connecting to resources on the internet, and there is an entire set of tools that run from the command line to help you deal with processes, services, and more.

![](https://web.archive.org/web/20230604182842im_/https://www.howtogeek.com/wp-content/uploads/2014/03/Windows_8_1__Installed_with_Tools_-_1___Running_.jpg?trim=1,1&bg-color=000&pad=1,1)

Process Explorer is probably the most useful tool in the kit.

Most of these tools are going to require administrator access on your computer, so you’d be wise to test them out in a virtual machine or a test computer if you aren’t sure what you are doing — these are some heavy duty tools.

For example, say you have a really slow PC to troubleshoot, and you want to inspect all of the threads for a particular application, and then you want to see the entire stack for one of those threads to see exactly what DLLs and functions are being called. Process Explorer makes this trivial — you can simply double-click on the process, flip over to the Threads tab, and then click the Stack button.

![](https://web.archive.org/web/20230604182842im_/https://www.howtogeek.com/wp-content/uploads/2014/03/Windows_8_1__More_crapware__conduit__etc___Running_.jpg?trim=1,1&bg-color=000&pad=1,1)

This stack has not yet overflowed.

What does all this mean? Wait until lessons 2 and 3, where we will do our best to explain the concepts to you, and more importantly, explain why you’d want to bother digging this deep.

The Best Tech Newsletter Anywhere

Join **425,000** subscribers and get a daily digest of features, articles, news, and trivia.

By submitting your email, you agree to the [Terms of Use](https://web.archive.org/web/20230604182842mp_/https://www.howtogeek.com/terms-of-use) and [Privacy Policy](https://web.archive.org/web/20230604182842mp_/https://www.howtogeek.com/privacy-policy).

## How Do You Get the Tools?

Getting your hands on any of the SysInternals tools is as easy as [heading to the web site](https://web.archive.org/web/20230604182842/https://technet.microsoft.com/en-us/sysinternals/bb842062), downloading the zip file with all of the utilities, or just grabbing the zip file for the individual application that you want to use.

Either way, unzip, and double-click on the particular utility you’d like to open. That’s it. There’s no installer.

## Running the Tools from SysInternals Live

If you don’t want to be troubled to download and unzip and then run the application, and you don’t want to keep a USB drive updated with the latest versions, or you just don’t have access to your drive while working on somebody else’s computer, you can always resort to SysInternals Live.

Basically what happened is that a number of years ago, the SysInternals guys were curious whether they could find a new way to distribute their software… so they created a Windows file share off their server and gave everybody on the internet access to it.

So you can simply type \\\\live.sysinternals.com\\tools into the Windows Run box after pulling that up with the WIN + R shortcut key, and you’ll be able to browse their file share and look around.

_Note:_ the \\\\server\\share format is called a UNC (Universal Naming Convention) path, and it works just about anywhere in Windows. You can utilize it in the explorer address bar, file open and save dialog boxes, or anywhere that you’d normally use a file path.

![](https://web.archive.org/web/20230604182842im_/https://www.howtogeek.com/wp-content/uploads/2019/10/img_5da61ca142aaa.png?trim=1,1&bg-color=000&pad=1,1)

The useful folder is probably the Tools one, that has all of the different utilities listed, and easily accessible with nothing more than a mouse click.

![](https://web.archive.org/web/20230604182842im_/https://www.howtogeek.com/wp-content/uploads/2014/03/Windows_8_1__More_crapware__conduit__etc___Running__2-650x356.png?trim=1,1&bg-color=000&pad=1,1)

Browsing for the utilities on a remotely accessible file share really isn’t the fastest way to do things, though, so thankfully there is a much quicker way to launch any SysInternals utility from any internet-connected Windows PC.

Just follow this format to directly launch one of the utilities through the Run box:

> \\\\live.sysinternals.com\\tools\\<toolname>

For instance, to launch Process Explorer, the executable name is procexp.exe, so you can use \\\\live.sysinternals.com\\tools\\procexp.exe to launch Process Explorer, or change procexp.exe to procmon.exe to launch Process Monitor instead.

![](https://web.archive.org/web/20230604182842im_/https://www.howtogeek.com/wp-content/uploads/2014/03/Windows_8_1__More_crapware__conduit__etc___Running__1.png?trim=1,1&bg-color=000&pad=1,1)

When you do launch one of the utilities, you’ll be prompted with a security warning dialog before you actually run any of them. This is a good thing, of course, because you wouldn’t want Windows to let anybody run anything from a file share. That would be a disaster!

![](https://web.archive.org/web/20230604182842im_/https://www.howtogeek.com/wp-content/uploads/2014/03/Windows_8_1__More_crapware__conduit__etc___Running_.png?trim=1,1&bg-color=000&pad=1,1)

We’d highly recommend just downloading and putting a copy of the tools on every PC that you touch, rather than running from the Live site every time. But in a pinch, it’s great to know that you can do it.

### Next Lesson: Understanding Process Explorer

Tomorrow’s lesson will familiarize you with the Process Explorer application, a task manager replacement with many more features. The interface is packed full of data and options, so we’ll go through and explain everything that you need to know — like what all those colors in the process list actually mean.

After that, we’ll cover how to use it in the real world to deal with problem processes, malware, and more. Then we’ll head into Process Monitor territory, and explain how to use one of the most powerful troubleshooting applications to figure out what is really going on under the hood of your PC.

And next week we’ll take a trip through some of the other utilities, like Autoruns, Bginfo, and many of the command line utilities included in the toolkit.

There’s a lot of material to cover, so go grab yourself a copy of the utilities so you can follow along starting tomorrow.

# 02 Understanding Process Explorer

![SysInternals 2](https://web.archive.org/web/20230529210709im_/https://www.howtogeek.com/wp-content/uploads/2014/03/gksys2.jpg?width=1198&trim=1,1&bg-color=000&pad=1,1)

This lesson in our Geek School series covers Process Explorer, perhaps the most used and useful application in the SysInternals toolkit. But how well do you really know this utility?

Process Explorer, a task manager and system monitor application, has been around since 2001, and while it used to even work on Windows 9x, the modern versions only support XP and above, and they’ve been continually updated with features for modern versions of Windows. It’s the defacto standard for dealing with troubleshooting processes.

## So What Can Process Explorer Do?

Some of the better features include the following, although this is by no means an exhaustive list. This application has many features, and many of those are buried deep within the interface. Amazingly it’s also a very small file.

*   The default tree view shows the hierarchical parent relationship between processes, and displays using colors to easily understand processes at a glance.
*   Very accurate CPU usage tracking for processes.
*   Can be used to replace Task Manager, which is especially useful on XP, Vista, and Windows 7.
*   Can add multiple tray icons to monitor CPU, Disk, GPU, Network, and more.
*   Figure out which process has loaded a DLL file.
*   Figure out which process is running an open window.
*   Figure out which process has a file or folder open and locked.
*   View complete data about any process, including threads, memory usage, handles, objects, and pretty much anything else there is to know.
*   Can Kill an entire process tree, including any processes started by the one you choose to kill.
*   Can Suspend a process, freezing all its threads so they do nothing.
*   Can see which thread in a process is actually maxing out the CPU.
*   The latest version (v16) integrates VirusTotal into the interface so you can check a process for viruses without leaving Process Explorer.

Any time you have a problem with an application, or something keeps freezing on your computer, or maybe you are trying to figure out what a particular DLL file is used for, Process Explorer is the tool for the job.

## Understanding The Tree View

![](https://web.archive.org/web/20230529210709im_/https://www.howtogeek.com/wp-content/uploads/2014/03/Windows_8_1__Installed_with_Tools_-_1___Running_1.jpg?trim=1,1&bg-color=000&pad=1,1)

When you first launch Process Explorer, you are presented with a lot of visual data right away – there is a hierarchical tree view of the processes running on your computer, including CPU and RAM usage using numerical values for each process. There are some little mini activity graphs running at the top in the toolbar, showing you the CPU usage, which can be clicked on to display in a separate window.

There’s definitely a lot going on, and it would be easy to be overwhelmed by everything on the screen.

The initial display gives you a set of columns that include:

*   **Process** – the file name of the executable along with the icon if one exists.
*   **CPU** – the percentage of CPU time in the last second (or whatever the update speed is set to)
*   **Private Bytes** – the amount of memory allocated to this program alone.
*   **Working Set** – the amount of actual RAM allocated to this program by Windows.
*   **PID**  – the process identifier.
*   **Description** – the description, if the application has one.
*   **Company Name** – this one is more useful than you think. If something isn’t quite right, start by looking for processes that aren’t by Microsoft.

You can customize these columns and add many other options, or you can just click on any of the columns to sort by that field. If you’ve ever used Task Manager before, you’ve probably sorted by Memory or CPU, and you can do that here as well.

Clicking on Process will flip between sorting by the process name, or going back to the default tree view, which is very useful once you get used to it.

The view is updated once per second, but you can go to View -> Update Speed and customize how often it updates, the lowest being 0.5 seconds and the top level being 10 seconds. If you are using it for troubleshooting the default value is probably fine, but if you want to use it as a CPU monitor sitting in the system tray, 5 or 10 seconds might use less CPU while it runs in the background.

You can also pause the view under the same sub-menu, or by simply hitting the Space bar. This will freeze the view as a snapshot in time, which can be useful if you are trying to identify a process that starts and quickly dies, or if you have decided to sort by CPU usage and all the rows keep jumping around.

In the case of a quickly closing process, however, you would want to add extra columns to the default view for anything you might need to know, because clicking on a defunct process in the list won’t show much in the details view if the process isn’t running, even if you paused everything.

## Understanding All Those Colors

There are definitely a lot of colors in a typical Process Explorer list, which can be a little confusing for the beginner geek. It’s really important to learn what all these colors mean, because they aren’t there just for show — they each mean something important.

Whenever you can’t remember what one of the colors means, you can go to Options -> Configure Colors on the menu to pull up the Color Selection dialog. This is basically a quick cheat sheet to what everything means. Keep reading, since we’re going to explain it here as well.

![Windows 8](https://web.archive.org/web/20230529210709im_/https://www.howtogeek.com/wp-content/uploads/2014/03/Windows_8_1__More_crapware__conduit__etc___Running_1.jpg?trim=1,1&bg-color=000&pad=1,1)

Based on the colors in the picture above, here is what each of the selected items mean (the others aren’t really important).

*   **New Objects (Bright Green)** – When a new process shows up in Process Explorer, it starts out as bright green.
*   **Deleted Objects (Red)** – When a process is killed or closes it will usually flash red right before deleting.
*   **Own Processes (Light Blueish)** – Processes running as the same user account as Process Explorer.
*   **Services (Light Pink)** – Windows Service processes, although it’s worth noting that they might have child processes that are launched as a different user, and those might be a different color.
*   **Suspended Processes (Dark Gray)** – When a process is suspended it can’t do anything. You can easily use Process Explorer to suspend an application. Sometimes crashed apps will briefly show up in gray while Windows is handling the crash.
*   **Immersive Process (Bright Blue) –** This is just a fancy way of saying that the process is a Windows 8 application using the new APIs. In the screenshot earlier you might have noticed WSHost.exe, which is a “Windows Store Host” process that runs Metro apps. For some reason Explorer.exe and Task Manager will also show up as immersive.
*   **Packed Images (Purple)** – these processes might contain compressed code hidden inside of them, or at least Process Explorer thinks that they do by using heuristics. If you see a purple process, make sure to scan for malware!

Since there is obviously some overlap between these different scenarios, the colors will be applied in an order of precedence. If a process is a service and is suspended, it will display in dark gray because that color is more important.

From what we’ve learned while researching, the order is Suspended > Packed > Immersive > Services -> Own Processes.

## Verifying Application Identity

One really useful option that we’re surprised isn’t enabled by default is found at Options -> Verify Image Signatures.

![](https://web.archive.org/web/20230529210709im_/https://www.howtogeek.com/wp-content/uploads/2014/03/Windows_8_1__VM_with_conduit_and_malware_for_article___Running_.jpg?trim=1,1&bg-color=000&pad=1,1)

This option will check the digital signature for each executable file in the list, which is an invaluable troubleshooting tool when you are looking at some suspicious application that is running in the list.

![](https://web.archive.org/web/20230529210709im_/https://www.howtogeek.com/wp-content/uploads/2014/03/Windows_8_1__VM_with_conduit_and_malware_for_article___Running_1.jpg?trim=1,1&bg-color=000&pad=1,1)

The vast majority of reputable software should be digitally signed at this point. If something isn’t, you should look very carefully at whether you should be using it.

## Taking Action on a Process

You can quickly take action on any process by right-clicking on it and choosing from one of the options, or by using the shortcut keys if you prefer. Those options include:

*   **Window** – has options including Bring to Front, which can be useful to help identify the window associated with a process. If there are no windows for that process, it will be grayed out.
*   **Set Priority** – you can use this to configure the priority of a process. This is mostly useful for taming a runaway process that you don’t want to kill.
*   **Kill Process** – just like you’d imagine, this quickly kills that process.
*   **Kill Process Tree** – This kills not just the item in the list, but also the children of that parent process.
*   **Restart** – spectacularly useful while testing, this just kills the process and then restarts it. It’s worth noting that killing processes might result in lost data.
*   **Suspend** – this handy option is great for troubleshooting when a process is out of control. You can simply suspend the process rather than kill it, and check to see if anything is out of whack.
*   **Check VirusTotal** – this is a new option that we’ll explain further along. It’s quite handy really, as it checks the process for viruses.
*   **Search Online** – this will just search the web for the name of the process.

And obviously if you open up Properties that will take you to even more useful information about the process, much of which we’ll get into in the next lesson. 

![](https://web.archive.org/web/20230529210709im_/https://www.howtogeek.com/wp-content/uploads/2014/03/win8aoisjdf.jpg?trim=1,1&bg-color=000&pad=1,1)

_Note:_ we tested out the Temp option but did not have any idea what it does.

## Running as Administrator

While you don’t absolutely have to run Process Explorer as Administrator, without doing so many of the useful features won’t work, and you won’t be able to see as much information about each process.

If you are running on Windows XP or 2003, you will need to be running as an account that has full Administrator rights to use most of the features. This is probably not a problem for most people, because XP gave the default account full privileges anyway, but if you are trying to use this at work without administrator access, it won’t work quite as well.

Since most of our readers are using Windows 7, 8.x, or even Vista, you’ll probably be familiar with running an application as Administrator. It’s really easy… just right-click and choose the option from the menu.

![](https://web.archive.org/web/20230529210709im_/https://www.howtogeek.com/wp-content/uploads/2014/03/win8102.jpg?trim=1,1&bg-color=000&pad=1,1)

_Fun fact:_ Process Explorer actually uses the Debug Programs privilege, which goes a long way to explain why it is so powerful.

### Forcing Process Explorer to Always Open as Administrator

If you want to make sure that Process Explorer always opens as Administrator without having to remember to right-click on it, you can force it by either making a special shortcut that requires Administrator mode, or by opening up the Properties for procexp.exe, going to Compatibility, and then choosing the option for “Run this program as an administrator”.

![](https://web.archive.org/web/20230529210709im_/https://www.howtogeek.com/wp-content/uploads/2014/03/win8admin.jpg?trim=1,1&bg-color=000&pad=1,1)

Either way will work just fine, or you could also just disable UAC if you prefer, which makes everything run as administrator all the time. We’re not recommending that, but you can do it.

## Using Process Explorer to Replace Task Manager

Process Explorer has long been used as a powerful replacement for the previously anemic Task Manager application in every version of Windows prior to Windows 8, and assuming you want some real power in your hands, it works really well as a replacement in that version too.

_Note:_ Windows 8’s Task Manager is greatly improved from previous versions. It’s still not as powerful as Process Explorer, but it’s probably easier for regular people to use. So don’t change mom’s computer to default to Process Explorer.

To make Process Explorer replace Task Manager, all you have to do is choose the Options -> Replace Task Manager option from the menu. That’s it.

![](https://web.archive.org/web/20230529210709im_/https://www.howtogeek.com/wp-content/uploads/2014/03/win8taskm.jpg?trim=1,1&bg-color=000&pad=1,1)

Once you’ve done that, using CTRL + SHIFT + ESC or right-clicking on the Taskbar will both launch Process Explorer rather than Task Manager. Easy, right?

_Warning_: if you do replace Task Manager, make absolutely certain that you’ve put Process Explorer in a place that you won’t be accidentally moving or deleting the file. Otherwise you’ll be stuck with a system that can’t launch any Task Manager.

## Using Process Explorer as an Awesome Tray Icon Monitor

![](https://web.archive.org/web/20230529210709im_/https://www.howtogeek.com/wp-content/uploads/2014/03/win8systraym.jpg?trim=1,1&bg-color=000&pad=1,1)

One of the best features of Process Explorer is the ability to minimize it into the system tray, but instead of just a single icon, it can minimize into a full set of icons that can monitor CPU, I/O, Disk, Network, GPU, and RAM, or any combination of them. You can configure them to display separately, or not at all, if you prefer.

To set this up, open up the Options menu, go to the Tray Icons section, and then click to enable each of the tray icons that you would like to see.

![](https://web.archive.org/web/20230529210709im_/https://www.howtogeek.com/wp-content/uploads/2014/03/Windows_8_1__More_crapware__conduit__etc___Running_2.jpg?trim=1,1&bg-color=000&pad=1,1)

You could just run Process Explorer every time you start running your computer, and then minimize it to the system tray so it will always be there for you. And, of course, if you used the option to replace Task Manager, you can quickly access it any time with a shortcut key – though you might want to use the “Allow Only One Instance” option to make sure you don’t open a bunch of separate windows.

## Using Process Explorer to Quickly Search VirusTotal

If you are working on a problem PC and want to figure out if a process is a virus, you can save yourself some time by using Process Explorer version 16 or above, because they’ve added VirusTotal integration directly into the application. Just right-click on anything in the list to see the option.

![](https://web.archive.org/web/20230529210709im_/https://www.howtogeek.com/wp-content/uploads/2014/03/Windows_8_1__More_crapware__conduit__etc___Running_3.jpg?trim=1,1&bg-color=000&pad=1,1)

The first time you run it, you’ll be asked to accept the VirusTotal terms of use, but after you do so, you will see the VirusTotal results show up right there in the list.

![](https://web.archive.org/web/20230529210709im_/https://www.howtogeek.com/wp-content/uploads/2014/03/Windows_8_1__More_crapware__conduit__etc___Running_4.jpg?trim=1,1&bg-color=000&pad=1,1)

You can click on the result to go to VirusTotal and see the details.  It’s a great new addition to one of the best utilities ever.

### Next Lesson: Using Process Explorer to Troubleshoot and Diagnose

In the next lesson in our series we’re going to go into a lot more depth about how to use Process Explorer in some real-world scenarios to troubleshoot common problems like malware and crapware. Make sure to stay tuned for the rest of the series.

# 03 Using Process Explorer to Troubleshoot and Diagnose

![SysInternals 3](https://web.archive.org/web/20230603005244im_/https://www.howtogeek.com/wp-content/uploads/2014/03/gksys3.jpg?width=1198&trim=1,1&bg-color=000&pad=1,1)

Understanding how Process Explorer’s dialogs and options work is all fine and good, but what about using it for some actual troubleshooting or to diagnose a problem? Today’s Geek School lesson will try and help you learn how to do just that.

Not that long ago, we started investigating all sorts of malware and crapware that gets installed automatically any time you don’t pay attention while installing software. Nearly every piece of freeware on the market, including the “reputable” ones, are bundling toolbars, search hijacking awfulness, or adware, and some of it is hard to troubleshoot.

We’ve seen many computers from people that we know that have so much spyware and adware installed that the PC barely even loads anymore. Trying to load the web browser, especially, is nearly impossible, as all of the adware and tracking software competes for resources to steal your private information and sell it to the highest bidder.

So naturally, we wanted to do a bit of investigation into how some of these work, and there’s no better place to start than the Conduit Search malware that has claimed hundreds of millions of computers worldwide. This nefarious awfulness hijacks your search engine in your browser, changes your home page, and most annoyingly, it takes over your New Tab page no matter what your browser is set to.

We’ll start with looking at that, and then we’ll show you how to use Process Explorer to troubleshoot errors that talk about locked files and folders that are in use.

And then we’ll round it out with another look at how some adware these days are hiding themselves behind Microsoft processes so they appear legit in Process Explorer or Task Manager, even though they really aren’t.

## Investigating the Conduit Search Malware

As we mentioned, the Conduit search hijacker is one of the most persistent, awful, and terrible things that nearly every one of your relatives probably has on their computer. They bundle their software in shady ways with any freeware they can, and in many instances, even if you select to opt-out, the hijacker will still be installed.

Conduit installs what they call “Search Protect”, which they claim prevents malware from making changes to your browser. What they don’t mention is that it also prevents you from making any changes to their browser unless you use their Search Protect panel to make those changes, which most people won’t know about since it’s buried in the system tray.

Not only will Conduit redirect all of your searches to their own custom Bing page, it will set that as  your home page. One would have to assume that Microsoft is paying them for all this traffic to Bing, since they are also passing some _?pc=conduit_ type of arguments in the query string.

_Fun fact: the company behind this piece of garbage is worth 1.5 Billion dollars and JP Morgan invested $100 million into them. Being evil is profitable._

### Conduit Hijacks the New Tab Page… But How?

Hijacking your search and home page is trivial for any malware — this is where Conduit steps up the evil and somehow rewrites the New Tab page to force it to show Conduit, even if you change every single setting.

You can uninstall all of your browsers, or even install a browser you didn’t have installed before, like Firefox or Chrome, and Conduit will still manage to hijack the New Tab page.

![](https://web.archive.org/web/20230603005244im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_53325ef388e8e.png?trim=1,1&bg-color=000&pad=1,1)

Somebody should be in jail, but they are probably on a yacht.

It doesn’t take much in terms of geek skills to eventually deduce that the problem is the Search Protect application running in the system tray. Kill that process, and suddenly your new tabs open just the way the browser maker intended.

![](https://web.archive.org/web/20230603005244im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_53325d3187762.png?trim=1,1&bg-color=000&pad=1,1)

But how, exactly, does it do this? There are no add-ons or extensions installed into any of the browsers. There aren’t any plugins. The registry is clean. How do they do it?

This is where we turn to Process Explorer to do some investigation. First, we’ll find the Search Protect process in the list, which is easy enough because it is properly named, but if you weren’t sure, you can always open up the window and use the little bulls-eye icon next to the binoculars to figure out which process belongs to a window.

![](https://web.archive.org/web/20230603005244im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_53325b41d6649.png?trim=1,1&bg-color=000&pad=1,1)

Now you can simply select the appropriate process, which in this case was one of the three that run automatically by the Windows Service that Conduit installs. How did I know that it was a Windows Service that restarts it? Because the color of that row is pink, of course. Armed with that knowledge, I could always go stop or delete the service (though in this particular case, you can simply uninstall from Uninstall Programs in Control Panel).

Now that you’ve selected the process, you can use the CTRL + H or CTRL + D shortcut keys to open the Handles view or the DLLs view, or you can use the View -> Lower Pane View menu to do it.

> _Note:_ in the world of Windows, a “handle” is an integer value that is used to uniquely identify a resource in memory like a window, an open file, a process, or many other things. Each open application window on your computer has a unique “window handle”, for example, that can be used to reference it.
> 
> DLLs, or dynamic link libraries, are shared pieces of compiled code that are stored in a separate file to be shared among multiple applications. For instance, instead of having every application write their own File Open / Save dialogs, all applications can simply use the common dialog code provided by Windows in the comdlg32.dll file.

Looking through the list of handles for a few minutes brought us a little bit closer to what was going on, because we found handles to Internet Explorer and Chrome, both of which are currently open on the test system. We’ve definitely confirmed that Search Protect is doing something to our open browser windows, but we’ll need to do a little more research to figure out exactly what.

![](https://web.archive.org/web/20230603005244im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_533297984c836.png?trim=1,1&bg-color=000&pad=1,1)

The next thing to do is double-click the process in the list to open up the details view, and then flip over to the Image tab, which will give you information about the full path to the executable, the command line, and even the working folder. We’ll click the Explore button to take a look at the installation folder and see what else is hiding there.

![](https://web.archive.org/web/20230603005244im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_53325b291b466.png?trim=1,1&bg-color=000&pad=1,1)

Interesting! We’ve found a number of DLL files here, but for some weird reason none of these DLL files were listed in the DLL view for the Search Protect process when we were looking at it earlier. This could be a problem.

![](https://web.archive.org/web/20230603005244im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_53324976c4561.png?trim=1,1&bg-color=000&pad=1,1)

Any time you want to see whether a DLL file is currently being used by any application on your system, you can pop up the search pane by going to the Find menu, hitting CTRL + F, or just clicking the binoculars icon on the toolbar. Now type in part of the name of the DLL, or even the full name if you’d like.

We chose to search for just the beginning, “SPVC”, since that was the common tie between them all, and sure enough, it looks like those DLLs are being loaded directly into each of the browser processes running on our computer.

![](https://web.archive.org/web/20230603005244im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_53324a1f01fef.png?trim=1,1&bg-color=000&pad=1,1)

Clicking on one of the items in the list and switching over to the Threads page confirmed what we were worried about. Both Chrome and Internet Explorer were running threads using the SPVC32.dll or SPVC64.dll files from the Search Protect malware, and this is how they were hijacking our new tab page — not by changing settings, but by hijacking the browser from within.

> _Note:_ In Windows, a thread is what the operating system allocates processor time to run. A process in Windows is what we’re used to thinking of as geeks and system admin types, but technically threads are actually the only thing that runs in Windows, not processes. Certain processes may have only one thread of execution, but others may have many threads that are all running separately from one another, usually communicating with some sort of in-process communication mechanism.

You can also double-click on any of the threads to see the full execution stack, which can be useful to see what functions are being called and attempt to figure out what the problem is.

![](https://web.archive.org/web/20230603005244im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_53325f7a8ef2a.png?trim=1,1&bg-color=000&pad=1,1)

You might be wondering how the Search Protect application managed to get Google Chrome to load that DLL, and the answer is that Windows provides a feature called DLL Injection. A process can inject a DLL into another process, and then hijack certain API functions. This is how certain applications override Windows features or features in other applications. It’s a very complicated subject that we definitely can’t get into in this lesson, but if you really want to read more, [you can check out this guide](https://web.archive.org/web/20230603005244/https://resources.infosecinstitute.com/api-hooking-and-dll-injection-on-windows/).

It’s also worth noting that you can see the CPU usage per thread by digging into this level of details, which can be very useful when troubleshooting an application that has plugins. You could use this to figure out that a particular DLL file is taking up too much of the processor time, and then do some research on what that component belongs to.

## Dealing with Locked Files or Folders

Since it’s unlikely that you’ll be investigating malware all the time, it’s also helpful to use Process Explorer for other tasks, like dealing with those “In Use” dialogs that you can any time you try to delete or move or modify a file or folder that is being used by another process, especially when you aren’t sure what process is locking it up.

![](https://web.archive.org/web/20230603005244im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_53326475ab4b2.png?trim=1,1&bg-color=000&pad=1,1)

When you get an error like that one, just head over to Process Explorer, open up the search with CTRL + F or the icon, and then type in the name of the folder listed above (or more descriptive full path if the name is very vague).

You’ll very quickly see a process in the list that has your file or folder open, and you can double-click on it to identify the process in the list.

![](https://web.archive.org/web/20230603005244im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_533265154aca3.png?trim=1,1&bg-color=000&pad=1,1)

Your immediate reaction might be to just close that process, but you don’t necessarily have to do that. You can also right-click on the file or folder in the list of handles (Use the CTRL + H option to bring up the Handles list) and choose the Close Handle option. That resource is now unlocked!

![](https://web.archive.org/web/20230603005244im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_53326594f08f1.png?trim=1,1&bg-color=000&pad=1,1)

_Note:_ If you’re deleting something, this is a perfectly fine option, but if you are just trying to edit or move that item, you should probably open the offending application and deal with it there so you don’t lose any data.

## Researching Processes that Look Safe but Aren’t

During our malware research we’ve noticed another problem that is becoming more prevalent, so it is wise to keep an eye on it in the future. What is that problem? Malware is hiding behind legitimate Windows processes, and it’s doing a good job.

The problem is the Windows rundll32.exe utility, which can be used to arbitrarily run functions from DLL files. Since this utility is signed by Microsoft it shows up as a completely legit process in the list, but in reality what they are doing is just moving all of their malware / adware code into a .DLL file instead of a .EXE file, and then loading up the malware with rundll32.exe instead. In fact, if you see rundll32.exe running as an “own process” in the light blue color shown below, it’s nearly always something that shouldn’t be running.

In the example below, you can see that even though we used the Verified Signer feature to validate that item, when we hover over it and look at the full path, it is actually loading up a DLL that turns out to be part of an adware product.

_Note:_ before you start screaming about running an anti-virus scan, we’ll note that we did, and it didn’t come back with anything. Much of this crapware, adware, and spyware is ignored by anti-virus utilities.

![](https://web.archive.org/web/20230603005244im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5332816bc2623.jpg?trim=1,1&bg-color=000&pad=1,1)

Double-clicking to open up the details shows more of the problem, and we can also see the directory that the badware is running out of, which we’ll use to investigate further.

![](https://web.archive.org/web/20230603005244im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_533281f072a4b.png?trim=1,1&bg-color=000&pad=1,1)

Inside that directory we found a number of files that were being updated constantly in the background.

![](https://web.archive.org/web/20230603005244im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_53328255dfdbc.png?trim=1,1&bg-color=000&pad=1,1)

The rest of the investigation led into some other tools that weren’t SysInternals, and that we’ll probably cover at a later date, but suffice it to say that this is just a piece of malware that was running in conjunction with another crapware application.

The important point here is that malware is able to hide itself behind legitimate Windows executables, so be sure to keep your eyes peeled for anything similar.

### Coming Up Next

Stay tuned tomorrow for even more SysInternals knowledge, as we show you how to use the Process Monitor utility to track what applications are actually doing behind the scenes. It’ll be eye-opening.

# 04 Understanding Process Monitor

![SysInternals 4](https://web.archive.org/web/20230530011155im_/https://www.howtogeek.com/wp-content/uploads/2014/03/gksys4.jpg?width=1198&trim=1,1&bg-color=000&pad=1,1)

Today in this edition of Geek School we’re going to teach you about how the Process Monitor utility allows you to peek under the hood and see what your favorite applications are really doing behind the scenes — what files they are accessing, the registry keys they use, and more.

Unlike the Process Explorer utility that we’ve spent a few days covering, Process Monitor is meant to be a passive look at everything that happens on your computer, not an active tool for killing processes or closing handles. This is like taking a peek at a global logfile for every single event that happens on your Windows PC.

Want to understand which registry keys your favorite application is actually storing their settings in?  Want to figure out what files a service is touching and how often? Want to see when an application is connecting to the network or opening a new process? It’s Process Monitor to the rescue.

We don’t do a lot of registry hack articles anymore, but back when we first started we would use Process Monitor to figure out what registry keys were being accessed, and then go tweak those registry keys to see what would happen. If you’ve ever wondered how some geek figured out a registry hack that nobody has ever seen, it was probably through Process Monitor.

The Process Monitor utility was created by combining two different old-school utilities together, Filemon and Regmon, which were used to monitor files and registry activity as their names imply. While those utilities are still available out there, and while they might suit your particular needs, you’d be much better off with Process Monitor, because it can handle a large volume of events better due to the fact that it was designed to do so.

It’s also worth noting that Process Monitor always requires administrator mode because it loads a kernel driver under the hood to capture all of those events. On Windows Vista and later, you’ll be prompted with a UAC dialog, but for XP or 2003, you’ll need to make sure the account you use has Administrator privileges.

## The Events that Process Monitor Captures

Process Monitor captures a ton of data, but it doesn’t capture every single thing that happens on your PC. For instance, Process Monitor doesn’t care if you move your mouse around, and it doesn’t know whether your drivers are working optimally. It’s not going to track which processes are open and wasting CPU on your computer — that’s the job of Process Explorer, after all.

What it does do is capture specific types of I/O (Input / Output) operations, whether they happen through the file system, registry, or even the network. It will additionally track a few other events in a limited fashion. This list covers the events that it does capture:

*   **Registry** – this could be creating keys, reading them, deleting them, or querying them. You’ll be surprised just how often this happens.
*   **File System** – this could be file creation, writing, deleting, etc, and it can be for both local hard drives and network drives.
*   **Network** – this will show the source and destination of TCP/UDP traffic, but sadly it doesn’t show the data, making it a bit less useful.
*   **Process** – These are events for processes and threads where a process is started, a thread starts or exits, etc. This can be useful information in certain instances, but is often something you’d want to look at in Process Explorer instead.
*   **Profiling** – These events are captured by Process Monitor to check the amount of processor time used by each process, and the memory use. Again, you would probably want to use Process Explorer for tracking these things most of the time, but it’s useful here if you need it.

So Process Monitor can capture any type of I/O operation, whether that happens through the registry, file system, or even the network — although the actual data being written isn’t captured. We’re just looking at the fact that a process is writing to one of these streams, so we can later figure out more about what is happening.

## The Process Monitor Interface

![](https://web.archive.org/web/20230530011155im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_533307d30e9fd.jpg?trim=1,1&bg-color=000&pad=1,1)

When you first load up the Process Monitor interface, you’ll be presented with an enormous number of rows of data, with more data flying in quickly, and it can be overwhelming. The key is to have some idea, at least, about what you are looking at, as well as what you are looking for. This isn’t the type of tool that you spend a relaxing day browsing through, because within a very short time period, you’ll be looking at millions of rows.

The first thing you’ll want to do is filter those millions of rows down to the much smaller subset of data you want to see, and we’re going to teach you how to create filters and zero in on exactly what you want to find. But first, you should understand the interface and what data is actually available.

### Looking at the Default Columns

The default columns show a ton of useful information, but you’ll definitely need some context to understand what data each one actually contains, because some of them might look like something bad happened when they are really innocent events that happen all the time under the hood. Here’s what each of the default columns is used for:

*   **Time** – this column is fairly self-explanatory, it shows the exact time that an event occurred.
*   **Process Name** – the name of the process that generated the event. This doesn’t show the full path to the file by default, but if you hover over the field you can see exactly which process it was.
*   **PID** – the process ID of the process that generated the event. This is very useful if you are trying to understand which svchost.exe process generated the event. It’s also a great way to isolate a single process for monitoring, assuming that process doesn’t re-launch itself.
*   **Operation** – this is the name of the operation that is being logged, and there is an icon that matches up with one of the event types (registry, file, network, process). These can be a little confusing, like RegQueryKey or WriteFile, but we’ll try and help you through the confusion.
*   **Path** – this is not the path of the process, it is the path to whatever was being worked on by this event. For instance, if there was a WriteFile event, this field will show the name of the file or folder being touched. If this was a registry event, it would show the full key being accessed.
*   **Result** – This shows the result of the operation, which codes like SUCCESS or ACCESS DENIED. While you might be tempted to automatically assume that an BUFFER TOO SMALL means something really bad happened, that isn’t actually the case most of the time.
*   **Detail** – additional information that often doesn’t translate into the regular geek troubleshooting world.

You can also add some additional columns to the default display by going to Options -> Select Columns. This wouldn’t be our recommendation for your first stop when you start testing, but since we’re explaining columns, it’s worth mentioning already.

![](https://web.archive.org/web/20230530011155im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_533307a988393.jpg?trim=1,1&bg-color=000&pad=1,1)

One of the reasons for adding additional columns to the display is so you can very quickly filter by those events without being overwhelmed with data. Here are a few of the extra columns that we use, but you might find use for some others in the list depending on the situation.

*   **Command Line** – while you can double-click on any event to see the command line arguments for the process that generated each event, it can be useful to see at a quick glance all of the options.
*   **Company Name** – the main reason that this column is useful is so you can simply exclude all Microsoft events quickly and narrow down your monitoring to everything else that isn’t part of Windows. (You’ll want to make sure that you don’t have any weird rundll32.exe processes running using Process Explorer though, since those could be hiding malware).
*   **Parent PID** – this can be very useful when you are troubleshooting a process that contains many child processes, like a web browser or an application that keeps launching sketchy things as another process. You can then filter by the Parent PID to make sure that you capture everything.

It’s worth noting that you can filter by column data even if the column isn’t showing, but it’s much easier to right-click and filter than manually do it. And yes, we mentioned filters again even though we haven’t explained them yet.

### Examining a Single Event

Viewing things in a list is a great way to quickly see a lot of different data points at once, but it definitely isn’t the easiest way to examine a single piece of data, and there is only so much information you can see in the list. Thankfully you can double-click on any event to access a treasure trove of extra information.

The default Event tab gives you information that is largely similar to what you saw in the list, but will add a bit more information to the party. If you are looking at a file system event, you’ll be able to see certain information like the attributes, file create time, the access that was attempted during a write operation, the number of bytes that were written, and the duration.

![](https://web.archive.org/web/20230530011155im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_533434a4159f0.png?trim=1,1&bg-color=000&pad=1,1)

Switching over to the Process tab gives you lots of great information about the process that generated the event. While you’ll generally want to use Process Explorer to deal with processes, it can be very useful to have a lot of information about the specific process that generated a specific event, especially if it is something that happened very quickly and then disappeared from the process list. This way the data is captured.

![](https://web.archive.org/web/20230530011155im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_533434c964c10.png?trim=1,1&bg-color=000&pad=1,1)

The Stack tab is something that will sometimes be extremely useful, but often times will not be useful at all. The reason why you would want to look at the stack is so you can troubleshoot by examining the Module column for anything that doesn’t look quite right.

As an example, imagine that a process was constantly trying to query or access a file that doesn’t exists, but you weren’t sure why. You could look through the Stack tab and see if there were any modules that didn’t look right, and then research them. You might find an out of date component, or even malware, is causing the problem.

![](https://web.archive.org/web/20230530011155im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_533434e601b7d.jpg?trim=1,1&bg-color=000&pad=1,1)

Or, you might find that there isn’t anything useful here for you, and that’s just fine too. There is a lot of other data to look at.

### Notes on Buffer Overflows

Before we even proceed further, we’re going to want to note a result code that you’re going to start seeing a lot in the list, and based on all your geek knowledge so far, you might freak out a little bit about. So if you start seeing BUFFER OVERFLOW in the list, please don’t assume that somebody is trying to hack your computer.

![](https://web.archive.org/web/20230530011155im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5334341f18c69.png?trim=1,1&bg-color=000&pad=1,1)

**Buffer Overflows**

While yes, many hackers and malware creators exploit a buffer overflow weakness to remotely or locally hack into a component and gain extra access, this error message is actually [built into the Windows API](https://web.archive.org/web/20230530011155/https://support.microsoft.com/kb/193839) and [means the complete opposite](https://web.archive.org/web/20230530011155/https://blogs.msdn.com/b/oldnewthing/archive/2008/04/04/8355308.aspx).

> _Note:_ Imagine a buffer like a box of candy bars near the register in a grocery store. People keep buying them, and when the box gets low, the store fills the box again.
> 
> Ideally they won’t wait for the box to be empty, because that would be frustrating for customers, and they also will ideally not go running to the back every single time a customer buys a single candy bar, because that would be a waste of time. This is a buffer, and they are meant to prevent delays.

What the BUFFER OVERFLOW message in the Windows API, and specifically in Process Monitor, actually mean is that the client application requested data but didn’t have a large enough bucket to hold all of the data. So the server is responding to tell the client that they need a bigger bucket.

In the example for the screenshot above, the application queried the registry for a specific value, but told the Windows API to put the result into a place in memory that was too small to fit all that data. So Windows returned back the message to let the application know that they need a bigger spot to put all the data. That’s all it was.

### Jumping to an Event Data Path

All of this information is really great, but nobody wants to investigate by manually browsing to each and every location in the list. Luckily you can right-click on the Path field for an item and use the Jump To option to quickly access that data to see what it contains and try to figure out why the application is requesting that data in the first place.

_Note:_ you can also use the Search Online feature to quickly search for the name of the process, the registry path, or any other field, which can be really useful when you don’t understand what something is used for.

![](https://web.archive.org/web/20230530011155im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_533437af33b3e.png?trim=1,1&bg-color=000&pad=1,1)

In the example above, you can see that the application we were monitoring was trying to look at a registry value, so we used the Jump To feature, and Process Monitor immediately opened the Registry Editor already focused to that exact key.

![](https://web.archive.org/web/20230530011155im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_533437e9c1b8e.png?trim=1,1&bg-color=000&pad=1,1)

So now we know, the application is trying to figure out where my appdata folder is, and we know which folder that was… which helps explain what is going on.

![](https://web.archive.org/web/20230530011155im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5334408fe3ce3.png?trim=1,1&bg-color=000&pad=1,1)

In this case, the application was the Conduit search malware, and it was looking for my user folder by querying the regisry so that it could start messing around with files and folders inside of my Google Chrome profile.

## Filtering the Data that Process Monitor Captures

As we’ve mentioned a couple of times already, the filters that Process Monitor provides allow you fine-grained control over what events you are going to be capturing, which translates into much easier work for you to figure out what is important in the list. If you know that you don’t care about all of the events generated by explorer.exe, for example, then you would be wise to just filter them out.

You can very quickly filter by any column using the context menu and using the Include or Exclude features — if you Include an item, the list will only contain events that match that particular item, or any others that you specifically include, but will not contain anything else. If you Exclude an item, everything will show up except for events that match the very specific item that you excluded.

![](https://web.archive.org/web/20230530011155im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5334386be1c9e.jpg?trim=1,1&bg-color=000&pad=1,1)

In this case we decided to Include the cltmng.exe process, and now every single thing that we see in the list is related to that process.

![](https://web.archive.org/web/20230530011155im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_53343886d7b17.png?trim=1,1&bg-color=000&pad=1,1)

You can alternatively use the Edit Filter option from the menu, or access the Filters section of the menu to display the list of filters and edit them. You can choose from the drop-down dialogs and match by any of the available fields, choose whether the value you type into the box will be matched exactly, or just “starts with”, or a number of other options. Then you can choose whether to Include or Exclude events that match those criteria.

Just don’t forget to click the Add button once you’ve defined your filter and before you click OK or Apply, because otherwise your new filter won’t actually be activated. Trust us, this is a common mistake!

![](https://web.archive.org/web/20230530011155im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_533438b55d186.png?trim=1,1&bg-color=000&pad=1,1)

You can also remove or edit filters by selecting them in the list and then modifying or removing them.

### Way Too Much Data? Try Dropping Filtered Events

If you know for sure that you have the right filters to look at just the things you really want to see, you might want to consider using the Filter -> Drop Filtered Events feature.

What’s actually going on here is that the instance of Process Monitor is showing only the items that match the filter, but everything else is still being captured in the background, which can be a TON of data after a very short time — note the status bar in the example below that we had running for just a few minutes. If we had the Drop Filtered Events option turned on, it would have only captured just the events we wanted.

![](https://web.archive.org/web/20230530011155im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_53343b7a535c4.png?trim=1,1&bg-color=000&pad=1,1)

There is a big drawback to using this feature though, and that is that you can’t get back those filtered events if you realized you filtered the list by too much, and wanted to examine events from another process. You’d have to redo your entire scenario, which might be too late. So make sure to use this option with caution.

### Saving Dumps for Later Analysis

There’s one last thing for today’s lesson, and that is the Open / Save feature that we normally wouldn’t highlight on any other application, but in this case it is really important.

Imagine you are working on somebody’s really old and lousy computer, and you want to diagnose a particular problem, but the computer is just running way too slow to sit there and deal with it the entire time. You can simply run a Process Monitor scan on their computer, save the data over to a flash drive, and then load up Process Monitor on your blazing fast personal laptop and get to work analyzing what might have happened. You can even go to the coffee shop and analyze from there.

![](https://web.archive.org/web/20230530011155im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_533444ba2394c.png?trim=1,1&bg-color=000&pad=1,1)

And of course, you could also just remotely talk somebody through running Process Monitor, doing a scan, saving the file, and then sending it to you for analysis. That way you don’t even have to show up and see them in person.

# 05 Using Process Monitor to Troubleshoot and Find Registry Hacks

![SysInternals 5](https://web.archive.org/web/20230601055111im_/https://www.howtogeek.com/wp-content/uploads/2014/03/gksys5.jpg?width=1198&trim=1,1&bg-color=000&pad=1,1)

In today’s edition of Geek School we’re going to teach you how to use Process Monitor to actually accomplish troubleshooting and figuring out registry hacks that you would not know about otherwise.

Process Monitor is one of the most impressive tools that you can have in your toolkit, as there is almost no other way to see what an application is actually doing under the hood. It is the only way to know what files are being written to by which process, and where things are stored in the registry, and which files are accessing them.

We’ll start off with today’s lesson by looking at how to find registry keys using Windows setting dialogs and Process Monitor, and then we’ll go through an actual troubleshooting scenario that we encountered on one of our computers in the lab, and easily solved using Process Monitor.

## Using Process Explorer to Find Registry Keys for Common Settings

Everybody has clicked a checkbox or changed the value of a drop-down box at some point, but have you ever wondered where those values are actually stored? Many applications, and virtually everything in Windows, is stored in the Registry… somewhere.

For today’s example we’re going to use the first option on the first pane of Taskbar and Navigation Properties, which is a dialog that should exist in all versions of Windows. So now our mission is to figure out where that setting is actually stored in the registry. You can follow along with this particular setting, or you can try one of the other settings on the same dialog — or anywhere else you’d like to find the hidden setting location for.

![](https://web.archive.org/web/20230601055111im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5334d4f8b2820.png?trim=1,1&bg-color=000&pad=1,1)

The first thing you’ll want to do whenever trying to capture a set of data is to launch Process Monitor, and then change the setting. At that point you can stop Process Monitor from continuing to capture events, so the list doesn’t get out of control. (Hint: the File menu has the option, or it’s the third icon from the left).

Now that we’ve got a ton of data in the list, it’s time to filter the list to reduce the number of rows that we’re going to have to look through. Since we’re looking at a registry value that is being changed, we’ll need to filter by “RegSetValue”, which is what Windows uses to actually set a registry key to a new setting. Use the “Include” option to show _only_ those events.

![](https://web.archive.org/web/20230601055111im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5334c67ae7c57.png?trim=1,1&bg-color=000&pad=1,1)

Your list should now be limited to just registry keys that were changed, so it’s time to take a look at the events and try to figure out which registry key it might be. Since we’re checking the “Lock the Taskbar” setting, and one of the registry keys being set includes the word “Taskbar” in the name, that’s a good place to start. Right-click on the path and choose to Jump To the location.

![](https://web.archive.org/web/20230601055111im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5334d42a02784.png?trim=1,1&bg-color=000&pad=1,1)

Process Monitor will open up the Registry Editor and highlight the key in the list. Now we need to make sure that this is actually the right key, which is pretty easy to figure out. Take a look at the setting, and then take a look at the key. Right now the setting is on, and the key is set to 0.

![](https://web.archive.org/web/20230601055111im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5334d47f67028.png?trim=1,1&bg-color=000&pad=1,1)

So change the setting, hit Apply on the dialog, and then use the F5 key to refresh the Registry Editor window. In our case we definitely picked the right setting, so now you can see that the TaskbarSizeMove value is set to 1.

![](https://web.archive.org/web/20230601055111im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5334d4ab00534.png?trim=1,1&bg-color=000&pad=1,1)

If you didn’t pick the right value, you won’t see a change when you do the setting test again. So go and find the next logical one, and start over.

## Troubleshooting Problems with Process Monitor

It’s not really possible to illustrate in a single article how to troubleshoot any problem with Process Monitor, or any other tool for that matter. There are just way too many combinations of issues that could possibly go wrong.

What we can do, however, is show how we actually used Process Monitor to troubleshoot a real problem that actually happened to one of our test computers. We had been installing some crapware, and then decided to try and clean the computer up. The problem was an entry in the Uninstall Programs panel that just wouldn’t go away.

Every time you would click to Change so you could remove it, you’d get an error that said “An error occurred while trying to uninstall AwfulApp. It may have already been uninstalled. Would you like to remove AwfulApp from the Programs and Features list?”.

![](https://web.archive.org/web/20230601055111im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5334c11d536a1.png?trim=1,1&bg-color=000&pad=1,1)

That would have been great, except we then got an error that said “You do not have sufficient access to remove OutfoxTV from the Programs and Features list. Please contact your system administrator.”

![](https://web.archive.org/web/20230601055111im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5334c1496df04.png?trim=1,1&bg-color=000&pad=1,1)

The first thing to do was try the uninstall process again with Process Monitor running, which captured an enormous amount of data. This time we decided to use the Find feature (CTRL + F) to quickly find what we were looking for in the list. You could also use a Filter if you wanted, but this seemed simple, and luckily it worked the first time.

![](https://web.archive.org/web/20230601055111im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5334c09006545.png?trim=1,1&bg-color=000&pad=1,1)

After taking a look at the first item in the list, we noticed an error: Windows was attempting to access the registry keys related to the uninstaller, but they weren’t actually in the registry in the first spot that Windows was looking. If you look a couple of keys down though, you’ll see a RegOpenKey event with a SUCCESS result for something under HKLM\\Software\\Wow6432Node.

![](https://web.archive.org/web/20230601055111im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5334bf60a9ab3.png?trim=1,1&bg-color=000&pad=1,1)

Doing a search by that registry key very quickly landed us at the source of the problem: an ACCESS DENIED message when Windows tried to do the cleanup for the list using the RegDeleteKey operation. Interesting!

![](https://web.archive.org/web/20230601055111im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5334c54eafb39.png?trim=1,1&bg-color=000&pad=1,1)

The first thing to do was use the Jump To feature to find the key in the registry and take a look.

![](https://web.archive.org/web/20230601055111im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5334bf792c118.png?trim=1,1&bg-color=000&pad=1,1)

Sure enough, look at all those registry keys over there! No wonder it is still appearing in the list.

![](https://web.archive.org/web/20230601055111im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5334bfc8d0cf0.png?trim=1,1&bg-color=000&pad=1,1)

Just to be sure, we opened up the C:\\Program Files\\ directory to see if any of the files were still around, but clearly the app had been wiped off the PC already.

![](https://web.archive.org/web/20230601055111im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5334c0138ba7d.png?trim=1,1&bg-color=000&pad=1,1)

The solution was very simple: we just manually deleted the registry key that Windows had problems deleting. If we had received an access denied message, we could have used the Permissions setting to make sure that we have access and tried again.

![](https://web.archive.org/web/20230601055111im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5334c04398162.png?trim=1,1&bg-color=000&pad=1,1)

Luckily the delete worked immediately, and our Uninstall Programs list was now clear.

![](https://web.archive.org/web/20230601055111im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5334d53d00e85.png?trim=1,1&bg-color=000&pad=1,1)

These are just a few of the many ways that you can use Process Monitor – it is an extremely important and useful utility that will take some time to master, but once you do, it can really help you solve many problems.

## Next Lesson

Starting on Monday with the next lesson, we’ll examine many of the other utilities in the SysInternals Toolkit, including some of the powerful command line tools.
## Next Lesson

Stay tuned for tomorrow’s lesson, where we will put together all of the knowledge that we’ve gained and show how to use Process Monitor in the real world to accomplish some fun and interesting things.

# 06 Using Autoruns to Deal with Startup Processes and Malware

![](https://web.archive.org/web/20230615023957im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5338bbd9d7674.png?width=1198&trim=1,1&bg-color=000&pad=1,1)

Most geeks have their tool of choice to deal with processes that start up automatically, whether that is MS Config, CCleaner, or even Task Manager in Windows 8 — but none of them are as powerful as Autoruns, which is also our Geek School lesson for today.

In the olden days, software would start itself automatically by adding an entry to the Startup folder in the Start Menu, or adding a value into the Run key in the registry, but as people and software became more savvy at finding unwanted entries and deleting them, the makers of questionable software started finding ways to get more and more sneaky.

These shady crapware companies started figuring out how to automatically load their software through browser helper objects, services, drivers, scheduled tasks, and even through some extremely advanced techniques like image hijacks and AppInit\_dlls.

Checking for each of these conditions manually would not only be time-consuming, but nearly impossible to do for the average person.

That’s where Autoruns comes in and saves the day. Sure, you can use Process Explorer to look through the process list and delve deep into threads and handles, and Process Monitor can figure out exactly which registry keys are being opened by which process and show you incredible amounts of information. But neither one stops crapware or malware from being loaded again the next time you boot your PC.

> Of course, a smart strategy would be to use all three together. Process Explorer sees what is currently running and using up your CPU and memory, Process Monitor sees what the application is doing under the hood, and then Autoruns comes in to clean things up so they don’t come back.

Autoruns allows you to see nearly every single thing that is loaded automatically on your computer, and disable it as easy as clicking a checkbox. It’s incredibly easy to use, and nearly self-explanatory, except for some of the really complicated things you need to know to understand what some of the tabs actually mean. That’s what this lesson is going to teach.

## Working With the Autoruns Interface

You can grab the Autoruns tool from the [SysInternals web site](https://web.archive.org/web/20230615023957/https://technet.microsoft.com/en-us/sysinternals/bb842062) just like all of the rest and run it without installing. You’ll want to do that before proceeding.

_Note:_ Autoruns doesn’t require running as administrator, but realistically it makes the most sense to just do that, since there are a few features that won’t work as well otherwise, and there’s a good chance your malware is running as administrator as well.

When you first launch the interface you’ll see a ton of tabs and a list of things that are being started automatically on your computer. The default Everything tab shows everything from every tab, but it can be a little confusing and lengthy, so we’d advise to just go through each tab separately.

![](https://web.archive.org/web/20230615023957im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5338db555be68.png?trim=1,1&bg-color=000&pad=1,1)

It’s worth noting that by default, Autoruns hides everything that is built into Windows and set to automatically start. You can enable showing of those items in the options, but we wouldn’t recommend it.

#### **Disabling Items**

To disable any item in the list, you can just remove the check box. That’s all you have to do, just go through the list and remove everything you don’t need, reboot your computer, and then run it again to make sure everything is good.

_Note:_ some malware will constantly monitor the locations where they trigger autostart from, and will immediately put the value back. You can use the F5 key to rescan and see if any of the entries came back after disabling them. If one of them showed up again, you should use Process Explorer to suspend or kill that malware before disabling it here.

#### **The Colors**

Like most SysInternals tools, the items in the list can be different colors, and here is what they mean:

*   **Pink** – this means that no publisher information was found, or if code verification is on, means that the digital signature either doesn’t exist or doesn’t match, or there is no publisher information.
*   **Green** – this color is used when comparing against a previous set of Autoruns data to indicate an item that wasn’t there last time.
*   **Yellow** – the startup entry is there, but the file or job it points to doesn’t exist anymore.

Also just like most of the SysInternals tools, you can right-click on any entry and perform a number of actions, including jumping to the entry or image (the actual file in Explorer). You can search online for the name of the process or the data in the column, see the detailed properties, or see if that entry is running by doing a quick search through Process Explorer — although many processes have a loader that then launches something else before exiting, so just because that feature shows no results doesn’t mean anything.

![](https://web.archive.org/web/20230615023957im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5338dbc77a127.png?trim=1,1&bg-color=000&pad=1,1)

If you clicked Jump to Entry, you’ll be taken straight over to the Registry Editor, where you can see that particular registry key and look around. If the entry was something else, you might be taken to a different utility, like the Task Scheduler. The reality is that most of the time, Autoruns displays all of the same information right in the interface, so you don’t usually need to bother unless you want to learn more.

![](https://web.archive.org/web/20230615023957im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5338dc00da90e.png?trim=1,1&bg-color=000&pad=1,1)

The User menu allows you to analyze a different user account, which can be really useful if you’ve loaded up Autoruns on a different account on the same computer. It’s worth noting that you would obviously need to be running as administrator to see other user accounts on the PC.

![](https://web.archive.org/web/20230615023957im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5338db8d58943.png?trim=1,1&bg-color=000&pad=1,1)

### Verifying Code Signatures

The Filter Options menu item takes you to an options panel where you can select one very useful option: Verify Code Signatures. This will check to make sure that each digital signature is analyzed and verified, and display the results right in the window. You’ll notice that all the items in pink in the screenshot below are not verified or the publisher information does not exist.

And for extra credit, you might notice that this screenshot below is almost the same as the one near the beginning, except in that one some of the items in the list where not marked as pink. The difference is that by default without the Verify Code Signatures option turned on, Autoruns will only alert you with the pink row if no publisher information exists.

![](https://web.archive.org/web/20230615023957im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5338dc9701c35.png?trim=1,1&bg-color=000&pad=1,1)

### Analyze an Offline System (As in Hooking Up a Hard Drive to Another PC)

Imagine that your friend’s computer is completely messed up and either won’t boot or just boots so slowly that you can’t really use it. You’ve tried safe mode and recovery options like System Restore, but it doesn’t matter because it is unusable.

Rather than pull the “reinstall” card, which is often just the “I give up” card, you could yank out the hard drive and hook it up to your PC or laptop with [your handy USB hard drive dock](https://web.archive.org/web/20230615023957/https://www.howtogeek.com/182452/how-to-get-data-off-an-old-hard-drive-without-putting-it-in-a-pc/). You do have one, right? Then you just load up Autoruns and go to File -> Analyze Offline System.

![](https://web.archive.org/web/20230615023957im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5338dcef36fdc.png?trim=1,1&bg-color=000&pad=1,1)

Browse to find the Windows directory on the other hard drive, and the user profile of the user you are trying to diagnose, and click OK to start.

![](https://web.archive.org/web/20230615023957im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5338dd4de6ad4.png?trim=1,1&bg-color=000&pad=1,1)

You’ll need write access to the drive, of course, because you will want to save the settings to remove whatever nonsense you end up finding.

### Comparing Against Another PC (Or Previous Clean Install)

The File -> Compare option seems nondescript, but it can be one of the most powerful ways to analyze a PC and see what has been added since the last time you scanned, or to compare against a known clean PC.

To use this feature, just load up Autoruns on the PC you are trying to inspect, or using the Offline mode we described earlier, then head to File -> Compare. Everything that has been added since the compared file version will show up in bright green. It’s as simple as that. To save a new version, you’d use the File -> Save option.

![](https://web.archive.org/web/20230615023957im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5338de1ca4bb6.png?trim=1,1&bg-color=000&pad=1,1)

If you really want to be a pro, you could save a clean configuration from a new install of Windows and put that on a flash drive to take with you. Save a new version every time you touch a PC for the first time to make sure you can quickly identify all of the new crapware the owner has added.

## Looking at the Tabs

As you’ve seen so far, Autoruns is a very simple but powerful utility that could probably be used by almost anybody. I mean, all you have to do is uncheck a box, right? It is, however, useful to have some more information about what all of these tabs mean, so we’ll try and educate you here.

#### Logon

This tab checks all of the “normal” locations in Windows for things to automatically be loaded, including the Registry’s Run and RunOnce keys, the Start Menu… and a _lot_ of other places. As it turns out, there are 43 different “normal” places that software can insert itself to start up automatically at logon or logoff. No wonder there are such huge malware, crapware, and spyware problems in Windows!

Our advice: liberally uncheck everything  you don’t need. You can always re-enable it if you want.

![](https://web.archive.org/web/20230615023957im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5338d99203d78.png?trim=1,1&bg-color=000&pad=1,1)

#### Explorer

This tab lists all of the add-on components that can load themselves into Windows Explorer. Since we didn’t have any to illustrate on our test system, we won’t show you a screenshot, but these will largely be context menu add-ons and other things like that.

If you are experiencing slow performance when browsing files, using the context menu, or just all around Windows, this is a likely culprit. You can disable anything you feel like here, though you might lose some functionality for certain applications.

#### Internet Explorer

This tab is immensely useful when working on other people’s computers, since they are much more likely to be using Internet Explorer than our readers are. This tab lists out all of the browser extensions, toolbars, and browser helper objects that are usually used by malware to either spy on you or show you ads. We’d recommend unchecking just about every single thing you see.

![](https://web.archive.org/web/20230615023957im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5338da7c38242.png?trim=1,1&bg-color=000&pad=1,1)

#### Scheduled Tasks

This is one of the trickiest ways that malware is hiding itself these days. Rather than hide using any of the places that people know to look for, the malware creates a scheduled task to reinstall itself, show ads, or do all sorts of nefarious things. The problem is compounded by how confusing the Task Scheduler can be, so most people would never even know to look here. Thankfully Autoruns makes this one easy.

We’d recommend removing almost everything that you don’t recognize and definitely isn’t from Microsoft. This is one example where using the Verify Code Signatures option is really useful.

![](https://web.archive.org/web/20230615023957im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5338da9097c86.png?trim=1,1&bg-color=000&pad=1,1)

#### Services

After tasks, one of the most common and insidious places that malware is hiding itself these days is by registering a Service in Windows, or in some cases, by creating a service that helps make sure that the other malware processes are still running.

You’ll want to be a little more careful when disabling things on this tab, as some things may be legit and necessary. In the screenshot below, you’ll see some Google, Microsoft, and Mozilla services that are just fine. While it wouldn’t be a big deal if we disabled them, it is still worth doing some extra research before disabling things, unless you have identified it as crapware or malware already.

![](https://web.archive.org/web/20230615023957im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5338daa6bd909.png?trim=1,1&bg-color=000&pad=1,1)

#### Drivers

Believe it or not, but some crapware and malware makers have actually created device drivers that contained malware or very sketchy components that spy on you. After our test machine was infected with a bunch of crapware, we noticed that this driver showed up attached to one of them. We’re still not quite sure what it does, but given how it got there, it probably isn’t anything good.

You’ll definitely want to be _much_ more careful on this screen. Disabling the wrong drivers can break your computer, so do your research, right-click on each of them and search online, and only disable something if it is most likely tied to spyware. In the example below, we had already identified the folder in the Image Path for the highlighted row as being crapware, so it was logical to disable it.

![](https://web.archive.org/web/20230615023957im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5338dae7c339c.png?trim=1,1&bg-color=000&pad=1,1)

#### Codecs

These are libraries of code that are used to handle media playback for videos or audio, and unfortunately they have been abused by malware as a way to automatically start on the computer. You can disable them here if necessary.

#### Boot Execute

This one you probably won’t have to deal with, but it is used for things that start up during system boot, like when you schedule a hard drive check to happen at boot time since it can’t happen while Windows is actually loaded.

#### Image Hijack

If you read our second lesson about Process Explorer, you would have learned that you can [replace Task Manager with Process Explorer](https://web.archive.org/web/20230615023957/https://www.howtogeek.com/school/sysinternals-pro/lesson2/), but you probably had no idea how this actually happens, much less that malware can and does use the same technique to hijack applications on your computer.

You can  set a number of  settings in the registry that control how  things are loaded, including hijacking all executables and running them through another process, or even assigning a “debugger” to any executable — even if that application is not a debugger.

Essentially, you can assign values in the registry so that if you try to load notepad.exe, it will load calc.exe instead. Or any application can be swapped out and replaced with another application. This is one of the ways that malware blocks you from loading MalwareBytes or other anti-malware tools.

![](https://web.archive.org/web/20230615023957im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5338db0d82675.png?trim=1,1&bg-color=000&pad=1,1)

You can see it for yourself — on the left-hand side is the name of the executable, and on the right-hand side the “Debugger” key is set to the instance of Process Explorer that is running off my desktop. But you can change that to anything you want on either side and it will work. It would probably make a great prank that almost nobody would ever be able to figure out.

![](https://web.archive.org/web/20230615023957im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5338f7a200c36.png?trim=1,1&bg-color=000&pad=1,1)

If you see anything in the Image Hijacks tab other than the values for Process Explorer, you should immediately disable them.

#### AppInit 

In yet another example of why Windows has so much crapware and spyware, the [AppInit\_dlls entries](https://web.archive.org/web/20230615023957/https://support.microsoft.com/kb/197571) in the registry are surprising and amazing. At some point Microsoft wrote a feature into Windows that loads all DLL files listed in a particular registry key… into every single process that starts.

Well, technically, whenever an application loads the Windows user32.dll library, it checks the value of the registry key and then loads any of the DLLs found in the list into the process, allowing every application to be hijacked by malware.

In Windows Vista and later versions, they finally decided to lock this down a little bit by requiring that the DLLs be digitally signed… unless the RequireSignedAppInit\_DLLs key is set to 0, which makes Windows still load them anyway. As you can imagine, malware has taken advantage of this, as you can see in the example below.

![](https://web.archive.org/web/20230615023957im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_5338db2f67c25.png?trim=1,1&bg-color=000&pad=1,1)

Remember [back in lesson 3](https://web.archive.org/web/20230615023957/https://www.howtogeek.com/school/sysinternals-pro/lesson3/) when we showed you how Conduit was hijacking and inserting its DLL files into your browser’s processes? This is how that was done. You can see the spvc64loader.dll in the screenshot above, which was then used to load up the SPVC64.dll file into the browser.

Evil.

#### KnownDLLs

This key makes sure that Windows uses a particular version of a DLL file. For the most part you won’t need to worry about it unless malware has messed with this list — the primary goal of using this tab is just to make sure that everything listed there is really a verified Windows component, which is pretty easy.

#### Winlogon, Winsock Providers, Print Monitors, LSA Providers, Network Providers

You shouldn’t usually have to worry about these tabs, as they simply contain add-ons that extend various aspects of Windows – the Winlogon and LSA tap into the logon and authentication system, Winsock and Network handle networking, and Print Monitors are third-party applications that deal with your printer.

If you do have values in these tabs, it is worthwhile to investigate before disabling them. It is certainly possible for malware to hijack these things.

#### Sidebar Gadgets

If you have any sidebar gadgets in Vista or Windows 7, you will see them here, and you can disable them if you’d like.

## Next Lesson

That’s it for Autoruns, but stay tuned tomorrow when we teach you about Bginfo and displaying system information on your desktop.

# 07 Using BgInfo to Display System Information on the Desktop

![SysInternals 7](https://web.archive.org/web/20230320163724im_/https://www.howtogeek.com/wp-content/uploads/2014/04/gksys7.jpg?width=1198&trim=1,1&bg-color=000&pad=1,1)

If you have ever done system administration, you probably have the problem where you connect to so many servers that you have no idea which computer you are connected to half the time. BGInfo is a great utility that lets you display useful system information right on the desktop. And it works for regular Windows users as well.

If you’ve been following along with our series, you might be surprised at the huge departure from hunting malware and deleting crapware to displaying stuff on the desktop, but the SysInternals tools aren’t just about finding things to kill. There are also many utilities in the toolkit used for displaying information, and we’re going to look at some of them.

The BGInfo utility displays information on the desktop, and it works in a server environment as well — in fact, that’s probably where it is the most useful, but it also works on anybody’s computer, so you can test things out on your local machine before running the configuration on the server.

You can also save information from BGInfo to a text file or even a database without even displaying on the desktop, so if you are looking for a quick way to [capture information on all the computers in your network](https://web.archive.org/web/20230320163724/https://www.howtogeek.com/51544/use-bginfo-to-build-a-database-of-system-information-of-your-network-computers/), you can use BGInfo and some batch scripts to solve your problem.

> It’s worth noting that BGInfo displays information by writing text over top of your wallpaper, if you have wallpaper set. It will create a new wallpaper file and then assign that as your new default wallpaper.

If this isn’t your cup of tea, make sure to read through the rest of the series and wait for tomorrow’s lesson, when we’ll be discussing the very powerful set of PsTools provided by SysInternals.

## Using the BGInfo Interface

Using BGInfo is very simple: open it and click the Apply button, and your desktop will have a ton of system information plastered all over it right away. If you want that information to update regularly, we’ll need to add a shortcut to the startup folder, or create a scheduled task to do it.

![](https://web.archive.org/web/20230320163724im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_533a27dbbea25.jpg?trim=1,1&bg-color=000&pad=1,1)

Looking at the interface up close, you can see that there is an editor, a list of fields, and a bunch of formatting options. You can tweak and change it in any way that you’d like, and even insert data from text files and other places like the registry.

![](https://web.archive.org/web/20230320163724im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_533a280b725c0.png?trim=1,1&bg-color=000&pad=1,1)

Once you’ve tweaked and created your configuration (more on that below), you can just save it out to a configuration file to load again any time you need it. Next you’ll need to make sure that BGInfo updates the information on a somewhat regular basis.

### Running BGInfo at Startup

The simplest thing to do is create a shortcut to BGInfo and place it into your startup folder, and modify that shortcut to include the path to the configuration that you’ve created and saved using the editor. You’ll also need to add a couple of command-line switches to make it happen.

![](https://web.archive.org/web/20230320163724im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_533a38c57b3fa.png?trim=1,1&bg-color=000&pad=1,1)

The important switches for our purposes are the /TIMER:0 switch, which sets the timeout before it applies to zero, the /SILENT switch which keeps everything quiet, and the /NOLICPROMPT switch, which skips the EULA dialog.

_Note:_ the /POPUP switch and the /TASKBAR switch will stick BGInfo into your system tray and pop up a dialog with system information whenever you click on it, which is definitely a very useful option.

The Best Tech Newsletter Anywhere

Join **425,000** subscribers and get a daily digest of features, articles, news, and trivia.

By submitting your email, you agree to the [Terms of Use](https://web.archive.org/web/20230320163724mp_/https://www.howtogeek.com/terms-of-use) and [Privacy Policy](https://web.archive.org/web/20230320163724mp_/https://www.howtogeek.com/privacy-policy).

For example, if we save BGInfo.exe into the C:\\Users\\Lowell\\bin\\ folder and put the configuration as config.bgi into the same folder, we’d use this as the command line:

> bginfo.exe c:\\users\\lowell\\bin\\config.bgi /timer:0 /nolicprompt /silent

To make it run every time we startup the computer, open up Windows Explorer and type _shell:startup_ into the location bar to open up the Startup folder.

![](https://web.archive.org/web/20230320163724im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533a39e497887.png?trim=1,1&bg-color=000&pad=1,1)

Then type out the full path to BGInfo followed by the path to the configuration file, followed by the three switches we mentioned earlier.

![](https://web.archive.org/web/20230320163724im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533a3a2fddcdc.png?trim=1,1&bg-color=000&pad=1,1)

At this point you should have a shortcut in your Startup folder that should immediately display the configuration on the desktop.

![](https://web.archive.org/web/20230320163724im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533a3a972851d.png?trim=1,1&bg-color=000&pad=1,1)

You could also open up Task Scheduler and create a new task that runs every x minutes if you want the information updated more often, but that’s a little beyond the scope of this lesson.

### Tweaking the Displayed Information

Changing the data that is displayed on the screen is easy enough, as the editor panel is just like any other rich text editor. You can add fields from the pane on the right, tweak the display of the data, etc. For instance, I wanted to just have a line across the top right-hand side of my monitor with some useful system information, and then show the name of the system below it in larger text, so I simply edited, used the align right button, and changed the font size for the element I wanted to change.

![](https://web.archive.org/web/20230320163724im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_533a2434b33a0.png?trim=1,1&bg-color=000&pad=1,1)

After clicking Apply, this is what displayed in the top right-hand corner of my monitor — handy stuff for a system administrator.

![](https://web.archive.org/web/20230320163724im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_533a24597f10c.png?trim=1,1&bg-color=000&pad=1,1)

The Background dialog lets you change the wallpaper behind the image if necessary. For best results, you’d want to use the “Copy user’s wallpaper settings” the first time, and then change to the “Use these settings” to specifically select one if necessary.

_Note:_ One little problem is that if you create a new configuration, BGInfo gets a little confused and resets your wallpaper to black, so you have to set the wallpaper again, and then apply the configuration.

![](https://web.archive.org/web/20230320163724im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_533a24b44730b.png?trim=1,1&bg-color=000&pad=1,1)

You can use the Position button to change where on the screen the data will show up, and tweak a few other variables if necessary.

![](https://web.archive.org/web/20230320163724im_/https://www.howtogeek.com/wp-content/uploads/2014/03/img_533a247d511e5.png?trim=1,1&bg-color=000&pad=1,1)

Clicking the Custom button underneath the Fields box will let you create user-defined fields that display special data that isn’t normally available, including pulling data from the registry, environment variables, WMI, files, or even VB Script. By extending BGInfo this way, you can make it display absolutely anything that you’d like to see on the desktop.

For example, if you want to grab the build number of Windows to use as a data point on the desktop, you would click the Registry value and then paste in the full path to a registry key in the Path field. (If you are running 64-bit Windows you would want to check the 64-bit registry view box or your lookup will be redirected to the 32-bit compatibility section of the registry.)

The Identifier would then show up in the Fields list, and you can select it to insert into the rich text editor.

![](https://web.archive.org/web/20230320163724im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533a3e3c1d81f.png?trim=1,1&bg-color=000&pad=1,1)

For WMI you can actually browse through all of the zillions of pieces of data and pick one to display. This would work the same way as the registry value — you’d give it a name, and then add that name to the rich text editor from the fields list.

![](https://web.archive.org/web/20230320163724im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533a3fd930a4a.png?trim=1,1&bg-color=000&pad=1,1)

For the text file and VB Script user defined fields, you can pull in either the contents of a text file, which can come from anywhere, or you can create a VB script that runs on the command line and outputs data that illustrates anything you’d like.

For instance, to show your public IP address on the desktop, you could create a new script in Notepad, paste the following, and then save it as publicip.vbs.

> ```
> Dim o
> Set o = CreateObject("MSXML2.XMLHTTP")
> o.open "GET", "http://ifconfig.me/ip", False
> o.send
> echo o.responseText
> ```

Once you added this to the list, you would then have access to display the public IP address by adding “publicip” out of the Fields list. As you can imagine, there is a lot more that you can do with this, to the point of being nearly unlimited.

![](https://web.archive.org/web/20230320163724im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533a45e8b1e03.png?trim=1,1&bg-color=000&pad=1,1)

**RELATED:** [**_Use BGInfo to Build a Database of System Information of Your Network Computers_**](https://web.archive.org/web/20230320163724/https://www.howtogeek.com/51544/use-bginfo-to-build-a-database-of-system-information-of-your-network-computers/)

For the truly advanced users, you can also create a database on your network and [set BGInfo to run automatically on the client computers to populate the database](https://web.archive.org/web/20230320163724/https://www.howtogeek.com/51544/use-bginfo-to-build-a-database-of-system-information-of-your-network-computers/). This way you could immediately know anything about them without having to pay for expensive management software.  Be sure to read the linked article for the entire guide.

## Next Lesson

Tomorrow we’re going to delve back into the super geeky world of SysInternals with a thorough examination of some of the command line tools, so be sure to check back for the rest of the series.

# 08 Using PsTools to Control Other PCs from the Command Line

![SysInternals 8](https://web.archive.org/web/20230607043051im_/https://www.howtogeek.com/wp-content/uploads/2014/04/gksys8.jpg?width=1198&trim=1,1&bg-color=000&pad=1,1)

In today’s lesson in our Geek School series covering SysInternals, we’re going to show you how to use the PsTools set of utilities to perform all sorts of administration tasks both locally, and on remote computers as well.

If you’ve ever wanted to connect to another computer and run a command, quickly get information about processes running and optionally kill them, or even stop a service on another PC, you can use the PsTools utilities to do all of these things and even more.

Obviously you can use Remote Desktop or a similar service to connect to any Windows computer and actually see the desktop and do anything that you would do locally, but the PsTools utilities allow you to do many tasks from the command line — or better yet, from a script that you can re-use later.

These are the type of utilities that work best in a corporate environment, and mastering these tools will definitely make you much better at your system administration job, save you time, and let you do things in a much smarter way. Doing things smarter and faster is a critical skill for being a great sysadmin.

There are twelve tools in the PsTools set, and while some of them are extremely useful, others have been superseded with tools built into more recent versions of Windows, and there are a few others which aren’t useful for most people. We’ll go through all of them so you understand how they work and why you might want to use each one.

*   PsExec – executes processes on a remote computer
*   PsFile – shows files that are opened on the remote computer through the network
*   PsGetSid – displays the security identifier for a computer or user
*   PsInfo – lists information about a system
*   PsKill – kills processes by name or ID
*   PsList – list information about processes on the command line
*   PsLoggedOn – list accounts that are logged on either on the machine or connecting remotely
*   PsLogList – pull the event log on the command line
*   PsPasswd – change the password for users
*   PsPing – a fairly simple ping utility with some additional features
*   PsService – list and make changes to Windows services
*   PsShutdown – shut down, log off, or suspend a computer
*   PsSuspend – suspend and resume processes (rather than killing them)

> It’s worth noting that you can use a tool like PsExec to execute all sorts of command-line utilities on remote computers… including really useful ones like the Autoruns command line tool and many more. The possibilities are endless once you’ve embraced the power of PsTools.

All of these tools can be used on local computers, but they are mostly useful for connecting to remote computers and performing commands on them.

## Connecting to Remote Computers ( Syntax for All Utilities)

All of the utilites can be run on either the local or remote computer, so they all have the same first argument for computer name if needed. Note that you could use the IP address if you wanted instead. If you omit this argument, the command will operate on your local computer.

> psinfo \\\\computername

You can also list multiple computers like psinfo \\\\computer1, computer2, computer3, or you could put all of the names into a file and reference that like psinfo @computerlist.txt. The final syntax is psinfo \\\\\* which operates on all computers in the domain, which probably isn’t something you’ll use every day.

If you need to connect with alternate credentials because your local computer’s account has a different username and password than the other computer, you can use the -u and -p options, though we’d note that you might not want to use -p on the command line with a password in the command for security reasons. _Update: [as of the latest release of PsExec](https://web.archive.org/web/20230607043051/https://twitter.com/markrussinovich/status/451704267246542848), no tool passes passwords as clear text anymore, so the only worry is if somebody can read your script files and see the password there._

> psinfo \\\\computername -u “user” -p “Password”

The “user” part of the command would change to “DOMAIN\\user” if you are in a domain environment and need to change from the currently running user.

_Note:_ you will generally need to connect to the remote computers with an administrator account.

## Configuring Remote Administration Access

If you are in a domain environment, which most people that need to use PsTools will be, you can ignore this section entirely as everything should work just fine. For anybody running Windows 7, 8, or Vista in a home environment or using a couple of computers in an office without a domain, you will need to tweak User Account Control on the remote computer to allow PsTools to properly run.

The problem is [described well by Microsoft](https://web.archive.org/web/20230607043051/https://support.microsoft.com/kb/951016):

> When a user who is a member of the local administrators group on the target remote computer establishes a remote administrative connection by using the net use \* \\\\remotecomputer\\Share$ command, for example, they will not connect as a full administrator. The user has no elevation potential on the remote computer, and the user cannot perform administrative tasks.

To explain it in a different way, when you try to connect to another computer and run something that requires administrator access, there is no way to trigger the UAC prompt and accept it from your computer, so it won’t connect as administrator.

![](https://web.archive.org/web/20230607043051im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533b17b230474.png?trim=1,1&bg-color=000&pad=1,1)

And this isn’t a bad thing. You shouldn’t change this setting without fully understanding that you will be allowing an opening for malware to spread from one computer to another — assuming that malware has your local username and password, and that password is the same as the other computer, and the malware is that tricky, which most isn’t. But it still isn’t something to be taken lightly.

And again, if you are in a domain environment, this problem doesn’t exist and doesn’t need to be changed. And if you are just testing with a bunch of virtual machines, you don’t have much to worry about.

To tweak UAC to enable PsTools to run you’ll want to open up the Registry Editor and navigate to the following key:

> HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\  
> Windows\\CurrentVersion\\Policies\\System

Once you are there, create a new 32-bit DWORD on the right-hand side, give it the name LocalAccountTokenFilterPolicy and the value of 1. You don’t have to restart the computer to make the setting take effect.

![](https://web.archive.org/web/20230607043051im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533af6785cadb.png?trim=1,1&bg-color=000&pad=1,1)

> _Note:_ just to clarify, this setting needs to happen on the remote computer that you are connecting to.

## PsExec

PsExec is probably the most powerful tool in the kit, as you can execute any command in your local command prompt just like executing it on the remote computer. That includes anything that can be run on the command line — you can change registry values, run scripts and utilities, or connect from that PC to another one. The output of the commands will be shown on your local PC, rather than on the remote one.

The syntax is simple:

> psexec \\\\computername <options> apptorun.exe <arguments>

Realistically, though, you would want to also include the username and password on the command line. For example, to connect to another PC and check the network connections list, you would use something like this:

> psexec \\\\computername -u User -p Password ipconfig

That command would produce output similar to the following:

![](https://web.archive.org/web/20230607043051im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533b1bcd8f8de.png?trim=1,1&bg-color=000&pad=1,1)

If you want to pass the output of a command into another command, or you wanted to redirect the output into a file, you would normally just do something like command.exe > output.txt, and the same thing happens with PsExec. So a command like the following will save the output of netstat -an into a file on your Local computer’s root directory.

> psexec \\\\computername netstat -an > C:\\connections.txt

If you want to pass the > or | character across the PsExec connection to the remote computer, you are going to need to use the ^ character, which is a little-known escape character in the Windows command shell. That, of course, means that we will actually need to use the command shell on the remote computer, and not just run the process, so we can do the redirect or pipe in the first place. So that makes our command like this (changing the path to the home directory where we have write access).

> psexec \\\\computername cmd /c netstat -an ^> C:\\users\\geek\\connections.txt

This example would place the list of open connections generated by netstat into the home directory of the user on the remote computer, in a file named connections.txt.

#### Copying Programs to the Remote PC

You aren’t limited to just the applications on the remote PC when using PsExec, and in fact, you can run anything that you have locally. For instance, if you wanted to do an Autoruns command-line scan of the remote system, but you only had autorunsc.exe on your local computer, you can use the -c switch to copy the application over. PsExec will remove the tool from the remote system once the command is finished.

This is an important time to mention the -accepteula option of most of the SysInternals tools, which will make sure that the EULA has been accepted on the computer where the command has been run. We’ll need to add this onto the autorunsc.exe command or else it will fail on the remote computer.

> psexec \\\\computername -c autorunsc.exe -accepteula

There are a few other options that specify whether the application is always copied, or if it should be copied if the local application is a higher version than the remote one. You can just run psexec from the prompt to see those options.

_Note:_ If a command is only available in the command prompt, you need to add cmd /c before it. This includes pipes and redirects like | and >.

#### Interacting with the Logged On User on the Remote PC

You can use the -i switch to make the application launch and allow the remote user to actually interact with the application. You would probably want to combine this with the -d switch, which doesn’t wait for the remote process to end before PsExec returns control to you. For instance, this command would open a Notepad window on a remote computer:

> psexec \\\\computername -d -i notepad

You can also choose to run as the SYSTEM user with the -s option, which can be very dangerous. For example, if you wanted to open the Registry Editor on your own computer, but with SYSTEM user-level permissions, you could run this command.

> psexec -i -d -s regedit.exe

In case you are wondering, yes, this will give you access to a lot of things that you normally wouldn’t have access to edit in the registry. And yes, it’s a really bad idea.

### Running a Full Command Prompt through PsExec

Yes, we just showed you all of those examples of how to run a single command through PsExec… and it turns out that you can run a full shell on your local computer that is actually running on the remote computer. It’s just like you were on the console of that server (for the most part). And luckily, the syntax for this one is really easy (add the username if you need to).

> psexec \\\\computername cmd.exe

Once you’ve done this, you’ll have a command prompt that is now running on the remote PC.

![](https://web.archive.org/web/20230607043051im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533b3347b4678.png?trim=1,1&bg-color=000&pad=1,1)

The command prompt will work almost like normal, except tab completion isn’t going to operate at all, but that’s just fine with us.

It’s worth noting that if you want to [run PowerShell commands remotely on another computer](https://web.archive.org/web/20230607043051/https://www.howtogeek.com/117192/how-to-run-powershell-commands-on-remote-computers/), you can do that natively with some tweaks to the configuration. Unfortunately PowerShell doesn’t work very nicely with PsExec unless you use a bunch of weird workarounds that aren’t worthwhile.

#### Other Options

The psexec command has a ton of other really useful options that you can use — each of these would be used in the space right after \\\\computername and before any of the other commands. So think psexec \\\\computername -option <remote command>.

If you just run the psexec command from the prompt without any extra switches, you’ll see all of them.

## PsFile

This command shows files that are currently opened over the network on a local PC or a remote PC, and it operates similarly to the Windows “net file” command. The syntax is just like any other command in the kit.

> psfile \\\\computername

Yeah, this one isn’t as fun as the last one.

![](https://web.archive.org/web/20230607043051im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533b362fb54ff.png?trim=1,1&bg-color=000&pad=1,1)

If you want to close one of the files and disconnect the person from the resource, you can close the connection by using the -c option, though that might result in a loss of data since the file wasn’t closed properly.

> psfile \\\\computername <path> -c

## PsGetSid

This displays the security identifier for a computer or user, and takes the standard arguments. This utility is probably only useful in very particular scenarios, of which we haven’t personally encountered any. So try it once and forget about it until you need to use it someday.

![](https://web.archive.org/web/20230607043051im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533b37678f3df.png?trim=1,1&bg-color=000&pad=1,1)

## PsInfo

This command lists lots of useful information about a system, including the uptime, which is lots of fun. You can run this one locally to test it out by simply typing _psinfo_ at the command prompt, assuming your SysInternals tools are in the path.

If you want to get a lot more information out of PsInfo, and I know you do, then you can use the following switches to add disk information (-d) and hotfixes (-h) and a list of installed applications and their versions (-s).

> psinfo -d -h -s

This results in a lot more information, even on a nearly blank virtual machine:

![](https://web.archive.org/web/20230607043051im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533b383e9f3cb.png?trim=1,1&bg-color=000&pad=1,1)

You can also run PsInfo remotely by adding the computer name and possibly the username switches… but there is one big problem: it won’t work unless the Remote Registry service is enabled. Head to the end of the article where we talk about how to enable it on the remote computer.

## PsKill

This command is really simple — it kills processes, by either name or ID, and you can use the -t switch to optionally kill the entire process tree.

> pskill \\\\computername <PID or Name>

The problem with PsKill is that the latest versions of Windows have a [very powerful task killing utility built right in](https://web.archive.org/web/20230607043051/https://www.howtogeek.com/howto/32648/how-to-create-a-shortcut-that-nukes-every-running-windows-app/) called Taskkill that has a lot more features.

## PsList

This utility is extremely simple, but fairly handy for quickly looking at a computer and seeing if something is using too much CPU or memory. You can specify the name or part of the name on the command line to narrow down the list to just a problem application, and you can see almost all information including threads.

![](https://web.archive.org/web/20230607043051im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533b3a4fb0d18.png?trim=1,1&bg-color=000&pad=1,1)

_Note:_ To make this utility work on a remote computer, you’ll need to have the remote registry service enabled. Make sure to read to the end of the lesson, as we explain how to deal with that later on.

## PsLoggedOn

This utility lists accounts that are logged on either on the machine or connecting remotely. It’s pretty simple, and largely useful in a system administrator type of environment.

![](https://web.archive.org/web/20230607043051im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533b3b49b01c3.png?trim=1,1&bg-color=000&pad=1,1)

## PsLogList

This utility displays a local or remote event log on the command line, and there are a number of options that can be used for filtering the data.

> psloglist \\\\computer System

There are also the -h, -d, and -m options, which let you narrow down the list of events to just the last x hours, days, or minutes. The -n option displays the list x records, while the -r switch reverses the order so the latest records will be at the bottom of the output. The last option, which we set to “System” in this example, is not actually necessary — if you omit it, the System log will always be pulled, but you could change it to Application or Security to pull those logs instead.

![](https://web.archive.org/web/20230607043051im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533b4228178ab.png?trim=1,1&bg-color=000&pad=1,1)

It’s worth noting that if you have administrator access to the other computer, you can simply open Event Viewer and choose Connect from the Action menu. Enter the computer name in the list, change the credentials if you need to, and access the event logs that way.

![](https://web.archive.org/web/20230607043051im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533b43603d51f.png?trim=1,1&bg-color=000&pad=1,1)

The only scenario where we can really see PsLogList being really useful is if you wanted to script out something to perform an action in case of certain messages in the event log.

## PsPasswd

This utility allows you to change the passwords for users, both local and remote. The syntax is the same as everything else:

> pspasswd \\\\computer -u User -p Password <AccountToChange> <NewPassword>

The benefit to this utility over just using NET USER from the regular command prompt is that you can change passwords for multiple computers at once, and it works in a domain environment as well.

## PsPing

This utility pings, checks ports, and does latency and bandwidth testing. Pretty simple.

> psping <servername>

Or you can check connectivity to a port by adding the port number like this:

> psping <servername>:80

There are a ton of advanced options to this command that you will probably want to check out should you ned to do some network troubleshooting.

## PsService

This utility allows you to deal with Windows Services from the command prompt. It’s really quite easy to use — the syntax works like this:

> psservice \\\\computername <command> <arguments>

The list of commands can be found by looking at the help /? options, but there are a few options that you’ll find yourself using more than the rest.

*   query – Queries the status of a service
*   config – Queries the configuration
*   setconfig  – Sets the configuration
*   start – Starts a service
*   stop – Stops a service
*   restart – Stops and then restarts a service
*   pause – Pauses a service
*   cont – Continues a paused service
*   depend – Enumerates the services that depend on the one specified
*   find – Searches for an instance of a service on the network
*   security – Reports the security permissions assigned to a service

In particular, the start | stop | pause | restart | cont options are really simple and easy to understand. For instance in the following command you could replace “start” with any of those other commands.

> psservice \\\\computername start <servicename>

The other options can be used to query more information about a service, or change the configuration.

_Note:_ the built-in sc.exe utility has a ton of useful features that overlap with this utility. The main difference is that PsService is a little more user-friendly.

## PsShutdown

This utility allows you to shut down, log off, or even put a computer into sleep mode. The problem is that it isn’t better than the built-in shutdown.exe utility, and was actually designed for Windows XP, so it’s recommended to use the built-in utility instead in most cases.

The one option that PsShutdown provides that you can’t get otherwise is the switch (-d) to put the computer into sleep mode, which can be handy.

> psshutdown \\\\computername -d

You can also use the -h option to put the computer into hibernate mode instead.

## PsSuspend

This utility is very similar to PsKill, but it does something that the built-in Taskkill utility just can’t — you can suspend processes rather than kill them, which can be very handy if you want to temporarily stop a CPU-intensive process from running while you complete a sysadmin task.

Suspending a process is extremely easy:

> pssuspend \\\\computer <PID or Name>

And resuming that process is just as easy — all you have to do is add the -r switch.

> pssuspend \\\\computer -r <PID or Name>

![](https://web.archive.org/web/20230607043051im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533b496524eac.png?trim=1,1&bg-color=000&pad=1,1)

## When the Utilities Won’t Connect Because of Remote Registry

Some of these utilities, including PsInfo, PsList, PsLogList, and PsLoggedOn require the remote registry service to be enabled on the remote computer, and it isn’t enabled by default on modern versions of Windows.

The good news is that this problem is easily fixable, and you don’t have to leave Remote Registry enabled. Just run this command using PsService to start the service:

> psservice \\\\computername start RemoteRegistry

And then when you are done with whatever you are doing with PsInfo or PsList, you can stop the service again using this command:

> psservice \\\\computername stop RemoteRegistry

Simple solutions are the best, aren’t they?

## Next Lesson

Make sure to join us tomorrow, when we cover file and disk utilities, and some more interesting things.

# 09 Analyzing and Managing Your Files, Folders, and Drives

![SysInternals 9](https://web.archive.org/web/20230603003739im_/https://www.howtogeek.com/wp-content/uploads/2014/04/gksys9.jpg?width=1198&trim=1,1&bg-color=000&pad=1,1)

We’re almost done with our Geek School series on SysInternals tools, and today we’re going to talk about all of the utilities that help you deal with files and folders — whether you are finding hidden data or securely deleting a file.

There are quite a few utilities in the toolkit that deal with all sorts of things that are related to files or folders or finding data that you didn’t know was there, and there are a few that are a little on the silly side. Either way, we’ll be covering them all.

The most important file-related tools in the kit to get to know are probably the Sigcheck and Streams utilities, but it would be wise to read through them all carefully.

## Streams Finds and Displays Hidden NTFS Streams

Most people don’t know about this feature, but Windows will let you [store data inside a hidden compartment in the file system](https://web.archive.org/web/20230603003739/https://www.howtogeek.com/howto/windows-vista/stupid-geek-tricks-hide-data-in-a-secret-text-file-compartment/) called alternate data streams. This basically works by appending a colon and a unique key to the end of a filename when interacting with it.

For instance, if you wanted to hide some data in a file, you could do something like _echo Secret > filename.txt:hiddenstuff_ and even if you opened up that text file in Notepad, you wouldn’t see the “Secret” text that you added, and there would be no other way to know that it was even there. In fact, you can do nearly anything you want using this technique. (Make sure to [read our article on the subject](https://web.archive.org/web/20230603003739/https://www.howtogeek.com/howto/windows-vista/stupid-geek-tricks-hide-data-in-a-secret-text-file-compartment/) for the full explanation).

This is also the technique that allows Windows to [magically know that files have been downloaded from the internet](https://web.archive.org/web/20230603003739/https://www.howtogeek.com/70012/what-causes-the-file-downloaded-from-the-internet-warning-and-how-can-i-easily-remove-it/), by hiding data inside the Zone.Identifier field. In fact, you can delete this alternate data stream using the Streams utility.

The syntax is simple — to see the streams, type the following at the prompt:

> streams <filename>

You can also use “streams \*.exe” or something like that to see all the files with hidden stream data, if there are any. The quickest way to see something is to head into your downloads directory and run it there.

![](https://web.archive.org/web/20230603003739im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533cc95b529dd.png?trim=1,1&bg-color=000&pad=1,1)

To delete one of the streams or many of them, you can use the -d option:

> streams -d <FileOrFolder>

You can also use the -s option to go into subdirectories recursively.

## SigCheck Analyzes Files That Aren’t Digitally Signed (Like Malware)

This very useful utility analyzes the digital signatures of files on your system and tells you whether they are valid or missing a certificate. You can also use it to check files against VirusTotal from the command line, which is convenient, because that’s the real point of this tool, is to find malware.

The normal and most useful syntax is to add the -u switch, which only reports problems, and the -e switch, which only checks executable files. So you could run something like this to check your system32 directory and make sure that all the files there are digitally signed. Anything else should be examined very closely.

> sigcheck -e -u C:\\Windows\\System32

You can also use the -v option for an additional check against VirusTotal, but you will need to use the -vt option the first time to accept their terms and conditions.

> sigcheck -v -vt <filename>

![](https://web.archive.org/web/20230603003739im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533cfa2fd82e2.png?trim=1,1&bg-color=000&pad=1,1)

## SDelete Securely Deletes Files

If you are the paranoid type, you’ll be glad to know that you can securely wipe files from the command line any time you want. Just use the sdelete utility to whack the file with DoD compliant deletion protocols. (Of course the NSA probably still has a copy of your file). The syntax is simple:

> sdelete <filename>

You can alternatively clean the free space on a drive by using the _sdelete -c_ option, which will take longer, but is a good option if you forgot to use sdelete to remove the file in the first place.

![](https://web.archive.org/web/20230603003739im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533cf66d069b9.png?trim=1,1&bg-color=000&pad=1,1)

## Contig Defragments One or Many Individual Files

If you want to defragment just one single file, or a list of files, you can use the Contig utility to do just that. Sure, you don’t really need to defragment files in modern versions of Windows that do it automatically. And yeah, if you are using a solid state drive you should never defragment nor do you need to. But if you absolutely, positively, must defragment a single file, this is the utility to do it.  The syntax is simple:

> contig <filename>

If you want to analyze the fragmentation of a file without actually doing anything, you can use the -a switch as shown below:

![](https://web.archive.org/web/20230603003739im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533cbe4eac6ed.png?trim=1,1&bg-color=000&pad=1,1)

It’s worth noting that even if a file is fragmented, if the file is very large and is only broken into a few large pieces, you will gain essentially nothing from defragmenting and will have wasted more time bothering with it than you would save.

## du Shows Disk Usage

You can always just right-click any file or folder in Windows Explorer and choose Properties, or use the ALT + ENTER keyboard shortcut to see the size of a file or folder. But what if you want to see that data from the command prompt? That’s where the du utility comes in, and it is also a bit more accurate because it doesn’t count symbolic linked files, and it does check alternate data streams as well.

![](https://web.archive.org/web/20230603003739im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533cd3d45f9a8.png?trim=1,1&bg-color=000&pad=1,1)

The -n option only checks a single folder, without recursing into subdirectories, while the -v option does recurse and also shows each directory as it goes through the list, and the -l (n) option checks just “n” levels deep. As in, -l 2 would check 2 levels deep.

## PendMoves Displays Files Moving on Next Reboot

Have you ever wondered [why application installs make you reboot your computer](https://web.archive.org/web/20230603003739/https://www.howtogeek.com/howto/31204/why-do-application-installs-make-you-reboot-and-close-other-apps/)? The answer is usually that they want to move some files around that can’t be moved around while Windows is running, so they use a built-in Windows feature that handles moving or deleting files on reboot.

The only thing you need to do is run the command, and it will output the data. Why is a copy of Process Explorer scheduled to move into the Windows folder on the next reboot? Read on.

![](https://web.archive.org/web/20230603003739im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533ceac4b6d80.png?trim=1,1&bg-color=000&pad=1,1)

## MoveFiles Moves System Files when You Reboot

This utility uses the built-in Windows feature to schedule a move, delete, or rename of a file or directory so that it will happen during the next reboot cycle, before Windows is fully loaded. The syntax is really simple:

> movefile <source> <dest>

If you want to delete a file, you can use an empty destination by using quotes, like _movefile <source> “”._ As you can see in the screenshot below, we used the Movefile command to schedule a copy of process explorer to be moved into the Windows directory to illustrate how it all works.

![](https://web.archive.org/web/20230603003739im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533ceaaf6c14f.png?trim=1,1&bg-color=000&pad=1,1)

## Junction Creates Symbolic Links

Windows supports symbolic links for files and folders, so that you can have more than one path point to the same file to save space instead of having multiple copies of a file. The idea is similar to shortcuts, except this is on the file system level and built into NTFS.

The Junction utility allows you to create and delete these links easily. You can also delete them using _junction -d <ShortcutName>._

> junction <ShortcutName> <ActualFolder>

The reality, however, is that Windows since Vista has had [the ability to create symlinks with the mklink command](https://web.archive.org/web/20230603003739/https://www.howtogeek.com/howto/16226/complete-guide-to-symbolic-links-symlinks-on-windows-or-linux/), and you may as well use that one instead.

## FindLinks Finds Hard Links to Files

This little utility finds all hard links pointing to a file. Hard links are different from symbolic links in that deleting one hard link does not actually delete the file if there are more hard links to that file, it just appears to delete it until you have deleted all the hard links. Once you delete the final hard link, the file will be deleted.

_Note_: this could actually be an interesting way to make sure that a particular file isn’t really deleted by somebody that has the habit of deleting files. Just create a hard link to all the files that you don’t want them to lose.

In any case, you can use this command easily enough:

> findlinks <filename>

The only problem is that Windows 7 and 8 have a built-in command that does the same thing. Use this one instead:

> fsutil hardlink list <filename>

_Note:_ It’s always better to learn to use the built-in stuff when possible, because you never know when you’ll need to do something on somebody else’s computer when you don’t have your toolkit.

## DiskView Displays Disk Structure

This utility allows you to see the structure of your hard drive in great detail, and you can even zoom all the way in and pick a file to highlight in the list, so you can see where a particular file is on the drive, and also see whether it is fragmented or not. It’s not terribly useful for most people, but hopefully you’ve got a scenario where you might need to use it.

![](https://web.archive.org/web/20230603003739im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533cb35baea10.png?trim=1,1&bg-color=000&pad=1,1)

## Disk2vhd Turns PCs into Virtual Hard Drives

This utility creates a clone of your computer’s hard drive while it is running, and bundles it all up into a Virtual Hard Drive file that can be used in a virtual machine. And it does this while the PC is running.

That’s right, you can create a virtual machine of your hard drive while your computer is running. This could also be really helpful for scenarios where you want to do some forensic analysis of a machine but on your own computer — you could just create a clone and then boot it as a virtual machine instead.

The option for Vhdx tells Disk2vhd to use the newer VHDX file format instead of the VHD file format, which had a number of limitations. By default Disk2vhd is going to create separate files for each physical drive, but put partitions into the same file. If you simply plan to attach this VHD file to another virtual machine, or even just mount it on a regular Windows computer, you can uncheck partitions that you don’t need in the list. If you plan to make a virtual machine out of it, you should probably leave everything checked.

![](https://web.archive.org/web/20230603003739im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533cbb34441ce.png?trim=1,1&bg-color=000&pad=1,1)

The VHD output file can actually be placed onto the same drive that you are making a copy of, but we’d recommend using a second drive if possible just to make it all go faster.

## PageDefrag is Obsolete

This utility allowed you to defragment system files during boot, but since it doesn’t work on recent versions of Windows, you should skip it.

## Sync Writes Cached Data to Your Disk

This utility simply syncs all cached data out to the disk to make sure all file changes are written to the drive and not stored in some buffer somewhere. Of course, you [should use the Safely Remove option](https://web.archive.org/web/20230603003739/https://www.howtogeek.com/118546/htg-explains-do-you-really-need-to-safely-remove-usb-sticks/) every time if you want to be sure you won’t lose data when pulling a flash drive.

![](https://web.archive.org/web/20230603003739im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533cc3de6c37e.png?trim=1,1&bg-color=000&pad=1,1)

## Disk Monitor Shows You Real-Time Hard Drive Activity

This utility shows actual hard drive activity happening in real time — sectors, reads, writes, the length of the data, it’s all there. The only problem is that it isn’t terribly useful for most people.

![](https://web.archive.org/web/20230603003739im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533cbcbc83358.png?trim=1,1&bg-color=000&pad=1,1)

What is a little more useful, maybe, is the disk monitoring “Tray Disk Light” that you can choose from the Options menu. Once you enable that mode, it will move into the system tray and blink red for writes, green for reads, or stay gray when nothing is happening.

![](https://web.archive.org/web/20230603003739im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533cbd581bc6a.png?trim=1,1&bg-color=000&pad=1,1)

If only the icon matched Windows 8 a little better.

## VolumeID Changes the Drive’s Serial Number

Have you ever noticed how every drive has a serial number that looks like 064B-1E81 or something equally uninteresting? If you want to change that serial number to something more fun, you can do it by using the VolumeID utility with this syntax:

> volumeid XXXX-XXXX

Please note that the syntax requires using hexadecimal characters, so you can’t type in GEEK-1337 like we did, because it just won’t work.

![](https://web.archive.org/web/20230603003739im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533cc2b9999c0.png?trim=1,1&bg-color=000&pad=1,1)

## Next Lesson

Tomorrow we’re going to wrap up the series with a look at some of the little utilities that we missed, as well as some guidance on using all of the tools together, and when you should pull out each tool.

# 10 Wrapping Up and Using the Tools Together

![SysInternals 10](https://web.archive.org/web/20230601055009im_/https://www.howtogeek.com/wp-content/uploads/2014/04/gksys10.jpg?width=1198&trim=1,1&bg-color=000&pad=1,1)

We’re at the end of our SysInternals series, and it’s time to wrap everything up by talking about all the little utilities that we didn’t cover through the first nine lessons. There are definitely a lot of tools in this kit.

We’ve learned how to use Process Explorer to troubleshoot unruly processes on the system, and Process Monitor to see what they are doing under the hood. We’ve learned about Autoruns, one of the most powerful tools to deal with malware infections, and PsTools to control other PCs from the command line.

Today we’re going to cover the remaining utilities in the kit, which can be used for all sorts of purposes, ranging from viewing network connections to seeing effective permissions on file system objects.

But first, we’ll walk through a hypothetical example scenario to see how you might use a number of the tools together to solve a problem and do some research on what is going on.

## Which Tool Should You Use?

There isn’t always just one tool for the job — it’s much better to use them all together. Here’s an example scenario to give you an idea of how you might tackle the investigation, although it’s worth noting that there are any number of ways to figure out what’s going on. This is just a quick example to help illustrate, and is by no means an exact list of steps to follow.

**Scenario: System is Running Slow, Suspected Malware**

The first thing you should do is open up Process Explorer and see what processes are using up resources on the system. Once you’ve identified the process, you should use the built-in tools in Process Explorer to verify what the process actually is, make sure it’s legitimate, and optionally scan that process for viruses using the built-in VirusTotal integration.

![](https://web.archive.org/web/20230601055009im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533e560ea5e40.png?trim=1,1&bg-color=000&pad=1,1)

This process is actually a SysInternals utility, but if it wasn’t, we’d be checking it.

_Note:_ if you really think there might be malware, it’s often helpful to unplug or disable internet access on that machine while troubleshooting, although you might want to do VirusTotal lookups first. Otherwise that malware might download more malware, or transmit more of your information.

If the process is completely legitimate, kill or restart the offending process, and cross your fingers that it was a fluke. If you don’t want that process to start anymore, you can either uninstall it, or use Autoruns to stop the process from loading at startup.

If that doesn’t solve the problem, it might be time to pull out Process Monitor and analyze the processes that you’ve already identified and figure out what they are trying to access. This can give you clues into what is actually going on — maybe the process is trying to access a registry key or file that doesn’t exist or it doesn’t have access to, or maybe it is just trying to hijack all of your files and do lots of sketchy things like accessing information that it probably shouldn’t, or scanning your whole drive for no good reason.

In addition, if you suspect that the application is connecting to something that it shouldn’t, which is very common in the case of spyware, you’d pull out the TCPView utility to verify whether that is the case.

At this point you might have determined that the process is malware or at crapware. Either way you don’t want it. You can run through the uninstall process if they are listed in Control Panel’s Uninstall Programs list, but many times they aren’t listed, or don’t clean up properly. This is when you pull out Autoruns and find every place that the application has hooked into the startup, and nuke them from there, and then nuke all of the files.

> Running a full virus scan of your system is also helpful, but lets be honest… most crapware and spyware gets installed despite anti-virus applications being installed. In our experience, most anti-virus will happily report “all clear” while your PC can barely operate because of spyware and crapware.

## TCPView

This utility is a great way to see what applications on your computer are connecting to what services over the network. You can see most of this information on the command prompt using netstat, or buried in the Process Explorer / Monitor interface, but it’s much easier to just pop open TCPView and see what is connecting to what.

The colors in the list are pretty simple and similar to the other utilities — bright green means that the connection just showed up, red means the connection is closing, and yellow means the connection changed.

You can also look at the process properties, end the process, close the connection, or pull up a Whois report. It’s simple, functional, and very useful.

![](https://web.archive.org/web/20230601055009im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533cd8f354d69.png?trim=1,1&bg-color=000&pad=1,1)

_Note:_ When you first load TCPView, you might see a ton of connections from \[System Process\] to all sorts of internet addresses, but this usually isn’t a problem. If all of the connections are in the TIME\_WAIT state, that means that the connection is being closed, and there isn’t a process to assign the connection to, so they should up as assigned to PID 0 since there’s no PID to assign it to.

This usually happens when you load up TCPView after having connected to a bunch of things, but it should go away after all the connections close and you keep TCPView open.

## Coreinfo

Shows information on the system CPU and all of the features. Ever wondered if your CPU is 64-bit or if it supports hardware-based virtualization? You can see all that and much, much more with the coreinfo utility. This can be really useful if you want to see whether an older computer can run the 64-bit version of Windows or not.

![](https://web.archive.org/web/20230601055009im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533e3a84b1b71.png?trim=1,1&bg-color=000&pad=1,1) 

## Handle

This utility does the same thing that Process Explorer does — you can quickly search to find out which process has an open handle that is blocking access to a resource, or from deleting a resource. The syntax is pretty simple:

> handle <resource>

And if you want to close the handle, you can use the hexadecimal handle code (with -c) in the list combined with the process ID (the -p switch) to close it.

> handle -c <hex> -p <PID>

![](https://web.archive.org/web/20230601055009im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533e448ea5f29.png?trim=1,1&bg-color=000&pad=1,1)

It’s probably a lot easier to use Process Explorer for this task.

## ListDlls

Just like Process Explorer, this utility lists out the DLLs that are loaded as part of a process. It’s a lot easier to use Process Explorer, of course.

![](https://web.archive.org/web/20230601055009im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533e43876c2c5.png?trim=1,1&bg-color=000&pad=1,1)

## RamMap

This utility analyzes your physical memory usage, with loads of different ways to visualize the memory, including by physical pages, where you can see the location in RAM that each executable is loaded into.

![](https://web.archive.org/web/20230601055009im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533cdb967851a.png?trim=1,1&bg-color=000&pad=1,1)

## Strings Finds Human-Readable Text in Apps and DLLs

If you see a weird URL as a string in some software package, it is time to worry. How would you see that weird string? Using the strings utility from the command prompt (or using the function in Process Explorer instead).

![](https://web.archive.org/web/20230601055009im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533e52413d7ec.png?trim=1,1&bg-color=000&pad=1,1)

There are a bunch of command-line switches to customize the output and what you are looking through, but we’d recommend using the Process Explorer version most of the time, because it’s simple.

## RegJump

This command line utility opens up the Registry Editor and navigates down to the key that you specify as an argument on the command line. No more manually clicking through the tree… assuming you use it. The syntax:

> regjump <registrykey>

![](https://web.archive.org/web/20230601055009im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533cddba977f1.png?trim=1,1&bg-color=000&pad=1,1)

## Hex2Dec

This converts numbers from hex to decimal and the other way on the command line.

![](https://web.archive.org/web/20230601055009im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533ce0df3c4e1.png?trim=1,1&bg-color=000&pad=1,1)

## Autologon

This utility very quickly enables automatic login for your account. Just enter your password, click Enable, and you’re done. You can also use this to disable automatic login if it is enabled and you don’t feel like figuring out how to switch it back.

It’s worth noting that [enabling automatic login in Windows](https://web.archive.org/web/20230601055009/https://www.howtogeek.com/howto/windows-vista/make-windows-vista-log-on-automatically/) is really easy in the first place.

![](https://web.archive.org/web/20230601055009im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533e3b89e858f.png?trim=1,1&bg-color=000&pad=1,1)

## AccessChk

This simple utility reports the effective permissions for files and folders… and registry keys, and processes, and a lot of other stuff. Basically, permissions can be really complicated, so this utility shows what an account actually has permission to do with the object.

![](https://web.archive.org/web/20230601055009im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533e3cc90b847.png?trim=1,1&bg-color=000&pad=1,1)

## AccessEnum

This utility is really useful, as you can completely audit the permissions and who has access to files, folders, and registry keys on your system. If you have a really complicated security setup, this tool will let you figure out who has access and see if you’ve made a mistake somewhere.

![](https://web.archive.org/web/20230601055009im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533e469e5d3ea.png?trim=1,1&bg-color=000&pad=1,1)

## ShellRunAs

This utility is actually a shell extension that lets you quickly run an application as a different user, which was really useful back in the XP days when there wasn’t a good way to run applications as Administrator if you had a standard user. It’s still quite useful in the enterprise environment (for older computers).

_Note: this feature is built into Windows 7 and 8, but hidden behind the Shift + Right Click menu._

Installing is simple, just use this from the command line:

> shellrunas /reg

And uninstall is equally simple:

> shellrunas /unreg

To use once you’ve installed it, just right-click on any executable file and choose the Run as different user option.

![](https://web.archive.org/web/20230601055009im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533e48262e539.png?trim=1,1&bg-color=000&pad=1,1)

And then enter the username and password for the alternate user.

![](https://web.archive.org/web/20230601055009im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533e4884785c0.png?trim=1,1&bg-color=000&pad=1,1)

## RegDelNull

Finds and deletes registry keys with null characters in the name. Probably not something you want to do.

## Ctrl2Cap

This utility remaps your CAPS LOCK key to CTRL instead.

## BlueScreen Screen Saver

Yep.  This one is loads of fun — just install it by right-clicking and choosing Install, and then you can enjoy a fun BSOD all the time.

![](https://web.archive.org/web/20230601055009im_/https://www.howtogeek.com/wp-content/uploads/2014/04/img_533ce2ae5c2ca.png?trim=1,1&bg-color=000&pad=1,1)

That’s all there is for this lesson of Geek School. Stay tuned next week for even more great tutorials.
