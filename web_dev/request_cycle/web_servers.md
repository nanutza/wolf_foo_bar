#9.1 How the Web Works

 Release 1: Research Web Servers
----
###
1. What are some of the key design philosophies of the Linux operating system?

Linux's core philosophy **open source.**  And the user is a "hacker" - knowledgeable and in full control.

>Unix was not designed to stop its users from doing stupid things, as that would also stop them from doing clever things.

Also an extension of the Unix philosophy which emphasizes building simple, short, clear, modular, and extensible code that can be easily maintained and repurposed by developers other than its creators. The Unix philosophy favors composability as opposed to monolithic design.

###Nine major tenets

There are nine major tenets to the Linux philosophy.

1. Small is Beautiful
2. Each Program Does One Thing Well
3. Prototype as Soon as Possible
4. Choose Portability Over Efficiency
5. Store Data in Flat Text Files
6. Use Software Leverage
7. Use Shell Scripts to Increase Leverage and Portability
8. Avoid Captive User Interfaces
9. Make Every Program a Filter

see:

[How the 9 major tenets of the Linux philosophy affect you](https://opensource.com/business/15/2/how-linux-philosophy-affects-you)

[Linux]
(https://en.wikipedia.org/wiki/Linux)

[Unix Philosophy]
(http://1stmuse.com/the_unix_philosophy/)

[Linux Philosophy - Oregon State]
(http://web.engr.oregonstate.edu/~traylor/ece474/lecture_verilog/beamer/linux_philosophy.pdf)
----
###
2) In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?


A **Virtual private server (VPS)** is a type of web hosting server where hosting is done by segregating a main physical server into multiple virtual servers. Each server in the system gets their part of resources based on custom requirements. Each part of this VPS has capabilities of performing independent operations with its own operating system and hardware resources dedicated to it. These resources are completely saturated from the other servers on the same platform. VPS offers great choice of customization and flexibility to manage and restructure resource unlike its counterpart of dedicated server. 

The VPS fills the gap economically by providing a bridge between less expensive shared server hosting and more expensive dedicated server hosting. There are several advantages that VPS has over the shared server and dedicated server. 

**These advantages are mentioned below:**

* **Cost:** As it receives a fraction of the actual dedicated server, the cost of such servers is much less than with dedicated servers.

* **Segregation:** Each virtual server is segregated from other servers on the same platform and there is no direct effect of one server’s activity and customization over the other server.

* **Performance:** The performance of VPS is noticeably higher than the shared server and little lower than the dedicated server. As it has allocated amount of resources in terms of CPU usage, memory and RAM; virtualization works best for small and medium size website.

* **Security:** Another advantage of this system is its security. As individual servers are separated with each other, each website gets its own operating system and resources. This makes difficult for another server to invade the security.

As like any other system, virtual private server also has some disadvantages. 

**The disadvantages are mentioned below:**

* The leading disadvantage of such system is its maintenance problem. As each website has its own operating system and other software, it is very difficult for web host to maintain all the operating system and ensuring maximum uptime. There are many factors attached to it like security, maintenance and updates.

* Sometimes the hosting provider does not provide the allocated resources. This is because most of the time virtual server does not use its full resources.

* It becomes difficult to manage virtual server during the large or unexpected traffic as most of the time resources are taken on the base of minimum requirements.

* Break of security or software failure can cause a larger issue by affecting one server’s activity to other.


Though having certain disadvantages of using VPS, its efficiency and cost offers outstanding advantages for small and medium websites. If you are planning for switching to virtual private server from shared server, make sure you research well on your option and choose your hosting company with lot care. While choosing hosting provider take a look at the customer service performance and testimonials provided by past customers. Also check for network uptime rates offered by the provider.

[Virtual Private Server]
(https://en.wikipedia.org/wiki/Virtual_private_server)



----
###
3) Why is it considered a bad idea to run programs as the root user on a Linux system?

>Just one word: security.

It defeats the security model that's been in place for years. Applications are meant to be run with non-administrative security (or as mere mortals) so you have to elevate their privileges to modify the underlying system. For example you wouldn't want that recent crash of Rhythmbox to wipe out your entire $HOME/Music directory due to a bug. Or that vulnerability that was just posted in ProFTPD to allow an attacker to gain a ROOT shell.

Its just good practice on any operating system to run your applications on a user level and leave administrative tasks to the root user, and only on a per-need basis.

Summarizing from this Ask Ubuntu answer, it is a bad idea to run as root because:

1. You are much more prone to mistakes or software bugs. That program which deleted files as a bug? If it ran as a limited user, at most it can damage stuff in your home directory and on a few other devices (e.g. USB disks).
If ran as root, it might have freedom to delete everything in the system. Besides, you might be the victim of a buggy script which accidentally deletes critical files.

2. Similarly, a vulnerability or malicious software can cause much more harm, because you gave it full permissions. It can change programs in **/bin** and add backdoors, mess with files in **/etc** and make the system unbootable etc...

3. You can be victim of your own stupidity. That **rm -rf * **you ran by mistake, or if you swapped input/output device in dd, would be stopped by your lack of permissions, but if you run as root, you are all powerful.

4. You don't need it for most uses, except for administrative work.
**sudo** has similar dangers, but at least they will not (at least they should not) happen by accident - if you typed **sudo destroy_my_machine** you presumably knew well what would happen, it's very hard to believe one could do it by accident.

For an example of something quite nasty, assume a script that runs **rm -rf $someDir/* **; if **$someDir** isn't set, the end result is **rm -rf /*.**
