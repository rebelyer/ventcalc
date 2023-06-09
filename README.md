# Ventcalc
## Description
Simple application used for estimation of air flows for rooms in building when planning mechanical ventilation. The main goals of this application is to help with estimating:
  * total pressure loss in installation at normal conditions,
  * total air volume for AHU (air handling unit) selection,
  * air duct sizing.

Also It aims to create reports of estimated savings on energy bills when installed in your house.

Here's how it should look like when done:
![Ventcalc visualisation](./doc/ventcalc_visualisation.png "Ventcalc visualisation")

## Requirements
For the development I have used:
  * ruby 3.2.2
  * rails 7.0.4
  * PostgreSQL 15.2

## Installation
  1. Clone the repository
  ```
    git clone https://github.com/rebelyer/ventcalc.git
  ```
  2. Setup the application 
  ```
    ./bin/setup
  ```
  3. Start the Rails server
  ```
    ./bin/rails s
  ```

## Try it
You can check how the application work by visiting [ventcalc.herokuapp.com](https://ventcalc.herokuapp.com/).

## Feedback and contribution
You're welcome to send your ideas, comments, feature requests or whatever you would like to change in this application. Also I'm open to your contribution.