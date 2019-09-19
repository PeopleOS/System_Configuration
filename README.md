# Introduction

This [git repository][about git repos - freecodecamp.org] contains the files which configure my personal computers, and instructions for how to set up your computer in the same way. I hope these tutorials help you to learn about how modern computer software works from the bottom up.

I will be assuming that you are familiar with:

- How a simple computer "computes" or does stuff
- What a computer program is
- What an "interface" is

I will start (in this file) by introducing the basic concepts that we will encounter. If you are already familiar the headings on this page, feel free to skip ahead to the Table of Contents.

## Operating System
Often when we identify a computer, saying what "kind" of computer it is, such as "Windows", "XP", or "Mac", we're talking about its Operating System. A computer's operating system is its most important program.

Like all useful programs, the operating system has a specific role within a larger computer system. Its role is to mask the differences between all the different kinds of physical computers and computer parts - called computer hardware - behind a familiar interface for people to use.

Generally, there are two different kinds of people who need the interface offered by an operating system:

1. People wanting to use the computer to, for example, check their email (Users)
2. People wanting to write programs for people to use on the computer (Developers)

With the different experiences and goals of these two kinds of people, and with the differences between different kinds of computer hardware, the task of the operating system is very challenging. However its actions are not beyond our understanding if we know where to look. These tutorials will teach you about what an operating system does and why.

### Scheduling and Resource Management

In order for Users and Developers to accomplish their goals (hopefully that means Users happily using programs written by happy Developers) the operating system must manage all of the different programs that the User may want to run, and give each program a fair share of access to the computer's hardware.

Since the computer has only a finite amount of hardware to do all the work with, any program selfishly hogging the hardware will cause other programs to struggle. So the operating system must manage the hardware - the computing resources - and share it between various programs, including itself.

There are two general strategies that the operating system uses to do this:

1. Resource allocation
2. Scheduling

Resource allocation just means giving different programs different chunks of the available resources, such as giving one program half of the computer's memory and another program the other half.

Scheduling just means having programs take turns using available resources. This is how operating systems usually share the computer's central processing unit (CPU), though it may not feel like it, because modern computers switch between programs really quickly (around one hundred times a second!).

### GNU/Linux

For all of my computers, I use some version of an operating system called "Gnu/Linux." Usually we say "Linux" (pronounced like *lynn-ucks*) for short.

## Shell Language

For lots of things on my computer, I use the terminal or command line. (insert image and reference to popular media) The terminal responds to commands that I give it in a computer language categorized as a "shell language" or "scripting language." (explain)

### FISH

The shell that I use is called fish (Friendly Interactive SHell).



[about git repos - freecodecamp.org]: https://web.archive.org/web/20190703165911/https://www.freecodecamp.org/news/what-is-git-and-how-to-use-it-c341b049ae61/
