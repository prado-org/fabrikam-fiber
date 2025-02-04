# Fabrikam Fiber

This project provides download and support to anyone (i.e. trainers) 
who want to access the Fabrikam Fiber sample application, setup scripts, notes, etc.

This is the same sample project that you can find in the various versions of
[Brian Keller's VM](http://aka.ms/ALMVMs). It was designed to be imperfect 
(i.e. contains bugs and surprises) allowing you to teach or tell a rich ALM story.

## Background

Fabrikam Fiber is a fictional company that provides cable television and 
related services to the United States. They are growing rapidly and have embraced 
the latest Microsoft technologies in order to scale their customer-facing web site. 
This will allow the end users to create/manage tickets and track technicians 
in a self-service way. There is also an on-premises ASP.NET MVC application 
for their customer service representatives to administer customer orders.

## Sample Narrative

You are part of the Development Team, which consists of 3-9 developers. 
They have decided to use Visual Studio and its ALM tools to plan and track their work, 
manage their source code, run their builds, and test their websites.

## SQL Server LocalDB Support

[LocalDB](http://msdn.microsoft.com/en-us/library/hh510202.aspx) is a lightweight 
version of the SQL Server Express Database Engine that starts on demand and runs 
in user mode. LocalDB runs in a special execution mode of SQL Server Express that 
enables you to work with databases as .mdf files. With the 
Fabrikam Fiber website, this LocalDB database file is automatically generated 
and maintained in the *App_Data* folder of the *FabrikamFiber.Web* project.

## Requirements 

1. Visual Studio 2015
2. SQL Server LocalDB
3. IIS Express
4. .NET Framework 4.6
