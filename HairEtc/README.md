# Hair Etc App

## The Assignment

This is my first project for General Assembly, Web Development Immersive.  We were tasked to create a web app (Ruby on Rails) that we host publically (on Heroku), integrating multiple model relationships and an API.

## Backstory

My mother owns and operates a small hair salon in Pittsburgh, Pennsylvania.  In an attempt to bring her small business into the twenty-first century, I envisioned a way to enhance her business and the interaction with her clients.

## Description

The goal of this app is to provide an online portal to the customers of Hair Etc, through which reservations can be scheduled.  Customers create an account through the web interface, supplying a name, phone number, and email address.  They use the email address for their log-in.  Once logged in, the customer can then schedule an appointment with the salon.  They decide the day and the time of the appointment, select the services they would like, and then pick their preferred stylist.  Once the reservation is saved, a confirmation text is then sent to the selected stylist with the newly created appointment.  The text message contains the client's name, the appointment date and time, and the client's phone number.  The stylist will then take the necessary actions.

The clients can also view their appointment history in a clean, informative table.

## Why the app is the way it is

Due to the "mom & pop" nature of the business, there is a tight bond between a stylist and their customers.  Therefore, a minimally intrusive service was all that was necessary to develop a successful product.  I wanted to give customers a quick way to schedule their next hair appointment, including a direct feedback loop (the stylist's text message) should there be a problem meeting the customer's request.

The app is not designed to be a high-traffic site.  It is, rather, a tool and reference source to help customers simplify the process of making an appointment, whenever they want/need.

## External sources

- [Twilio](www.twilio.com) is used for sending text messages.
- [Bootstrap CSS](www.getbootstrap.com)

##Planned future expansion

I plan on gradually introducing these upgrades:

- ActionMailer use for appoinment creation (sent to user) as a confirmation (to be sent after text message is issued)
- Implementation of [Devise](https://github.com/plataformatec/devise) gem
- Ability to cancel appointments (corresponding emails and text messages also issued)
- Incorporation of appointment cost approximations (prices are based on service(s) and totaled after completed)
- Allowing the user to set their default preferred stylist (more personalized experience)
- Including algorithms attempting to predict desired services
- Photo catalog of pictures taken before and after services are applied (allowing customer to recall if they were pleased with a specific set of services)
- Implementation of [ActiveAdmin](https://github.com/gregbell/active_admin)
- Gradual migration of appointment management operations at the business level
- Financial analytics information based on appointments
- Popularity statistics about services/stylists

## Experience

When I came up with the idea for this app I knew I wanted to design something that was simple to use, and even simpler to understand.  The goal was to provide a fast, mobile-ready product in five to seven days with the ability to manage a customer's appoinments, allow them to create appointments, and send text messages to appropriate stylists.

I ran into a few problems with my models in the beginning.  These issues arose because I wanted to incorporate static, reference models (containing constant information such as Stylist information and Services offered) and still have many-to-many relationships with these models.  Therefore, I had to incorporate extra through-tables to make sure I could keep my reference tables un-touched.  Once those issues were settled the rest of the app fell into place quite nicely.  Integration with Twilio was a few hours of work, most spent on deciding the formatting and wording of the text message.

The goal of having a fast, responsive site meant the sacrifice of extensive styling.  Also, implementing complex designs (such as a parallax effect) makes mobile design a more difficult task.  Time constraints lead me to prioritize the backend logic (and therefore functionality) and thus design took the sacrifice.

Overall I liked the project and cannot wait to be able to take my time refactoring and improving the readability of the code.
