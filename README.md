# magmalabs_exercise

## Core consideration

If you get blocked by a missing specification, feel free to make an assumption, just state what it is.
Goal

* Implement a Minimal Viable Product (MVP) to solve the customer needs. By the end of the exercise the customer must have a usable system.
* Please do a three point estimation for each feature in effort points. Write that in the README.md

## Problem background

In your first day as developer you are consulting for a customer who owns a textile company named Textile.Co. The company has 1000 employees.

When a new employee joins Textile.Co, the employee receives a new BADGE card imprinted with a unique barcode, each employee has a different BADGE card.

Textile.Co bought a punch card machine that can send a HTTP’s JSON POST payloads to a server and wants to use it to track arrivals and departures of employees. Working hours for employees are from 9 am to 6 pm, Monday to Friday.
The customer wants you to implement the following features:

## Features

1. Your customer wants to be able to see which employees are arriving late.
2. Your customer wants to know which employees are not coming to work at all.
3. Your customer’s employees are complaining that the reported hours for a given period
are wrong, so your customer wants to give each of his employees the opportunity to review their current period working hours report 3 days before the paycheck day.

## Extra feature

* As soon as you finish and send the MVP we will provide an extra feature and we will implement it with pair programming.
Hints

* Make sure you commit frequent atomic commits

## Technology

* Stack
* Rails
* Tools
* git

## The Extra Feature Pool

After receiving the zip file we need to evaluate if we see enough potential in you to proceed to the pairing phase. 

If we do, then the extra feature is:

1. Did you implement an endpoint to receive the time entries payload? a. Yes/No and why
2. We have different areas/departments, each with different working hours and lateness tolerance
3. Change the tolerance on arrivals and departures (minutes before/after)
4. Track time for lunch

## Textil CO 

- Instructions 

* Clone the repository in your enviroment
* Run the bundle and seed, to pupulate and install all you need.
	bundle install
	rake db:create
	rake db:migrate
	rake db:seed
* The seed have an user default: 
 ** user mail: admin@textileco.com
 ** user pwd:  12345678
* Inside the app , you will see the menu in top
 ** Home /dashboard
 ** Attendance : This section has the list of all attendance registred by the employees, date and time arrival , date and time of departure, in every case shows if the employee arrive late or on - time. In the case of departure specify if go before the time