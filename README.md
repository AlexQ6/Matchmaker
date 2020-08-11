# Matchmaker

Match maker is an Australian based online platform which eases the the process of finding coaching for tennis players. With its simple ui and intuitiveness, coaching clinics, academies and independents has a brand new avenue to expand their business operations.

## problem

Tennis coaching has always been done through tennis clubs, whether that's through internal programs or establishing a relationship with a external coaching clinic. For a player, that has been an extra hoop to go through to find someone who can improve your skills.In addition booking a session with a coach can be a hassle via phone or through an outdated online system.  

This problem needs to be solved as tennis continues to be a growing sport within Australia and worldwide, tennis coaching must keep with the technology of the modern day. Ease of access to coaching is crucial to improving the standards of play and promoting the sport. Matchmaker seeks to be that platform that houses all your coaching needs under one roof.

## Target audience

Tennis players of all levels capabilities who are looking for a professional/organisation to take their game to the next level. For coaches/organisation, this is a easy to use platform that includes a community of users passionate about tennis and seeks to improve.

## Functionality and features

**Accounts:** Users can create accounts to access the full site and must be logged in to make any purchases or advertise services. The general public can have access the home, about, help pages but are restricted from making transactions. User accounts have the option be purchase coaching and if they are a coach, enter additional info to sale services.

**Listings:** All users can register in order to verify coaching status. Logged in coaches can see who has purchased their services and hide the listing once their capacity for students have filled.


**Search and Filter:** Users can search for coaches by area, review rating and price to match their needs.

**Payment:** Upon payment stage users will select a block of time the coach has made available before entering payment details. Confirmation page will show once payment has been processed by Stripe API

**Review/comment section:** Users are able to leave reviews and ratings on coaches for feedback and let other users know about a particular coach.

Nice to have--

**Messaging:** Users can message potential coaches to discuss details about their methods and organise location once payments has been processed.

## User Stories

### User management

- As site visitor I want to be able to
  - sign up to order services or sell my services as a coach

- As a logged in user I want to be able to 
  - log into the app via email and password
  - Log out of the app
  - delete my account from the website
  - edit my profile 
  - add a coaching profile

### Listings
- As site visitor I want to be able to
  - see what coaches are advertising their services without logging in
  - search and filter for listings with regards to price, area and review rating
  
- As a logged in coach I want to be able to
  - create a listing of my coaching program (eg Tuesday 2pm for 10 weeks)
  - upload pictures and information about my coaching program
  - save incomplete listing as drafts
  - publish/unpublish a listing
  - edit and delete a listing
  - view my current listing

### Bookings

- As a logged in user I want to be able to
  - purchase a coaching program
  - Enter financial details for payment
  - See booking confirmation on site and (via email?)
  - see purchase history

- As a logged in coach I want to be able to
  - sell my coaching program
  - see a list of people who have purchased my program

### Authentication & Authorisation

- As a logged in user 
  - I don't want anyone else have access to my account information
  - I cant comment on my own listing

- As a logged in coach 
  - I should not have the option to buy my own coaching program
  - I cant comment on my own listing
  - I don't want others to be able to edit or delete my listing


## Model relations

A user has_many listings, a listing belongs_to a user.

A user has_many reviews, a message belongs_to a user.

A listing has_one_attached picture, a picture belongs_to a listing.

A listing has_many transactions, a transaction belongs_to a listing.

A listing belongs_to a user, a user has_many listings.

## Third party services

- Amazon S3
  - The Amazon S3 service provides a cloud storage solution for static files and images. In case of this app, 

- Stripe

## Sitemap

## Screenshot

## Testing

| Feature | Description | Expected Outcome | Actual Outcome | Sidenote |
| ------ | ------ | ------- | ------- | ------ |
| Testing heroku connection | Y |
| Create user | A new user is added to the database | New entry is generated in user database|  | None 
| User sign in  | An existing user signs into app | sign in confirmation appears and directed to dashboard|  | None 
| profile restriction | Site visitor is prohibited from seeing a user dashboard | site visitor is redirected to log in if user routes is entered|  | None 
| Coach restriction | User cannot see coach features until user applys as a coach | site visitor is redirected to coach sign up page|  | None 
| Edit and delete user profile(includes change password) |
| Image upload |