	README - 6 March 2014

Lab Title
Name: Students Page
Specification:

main.rb
- handle the different get URLS:
  []home
  []about
  []contact
  []student/ann
  []student/mark
  []student/tom
  []student/kriss
- we could also be crafty and use a post URL on contact which would process the form (I've had a look and there's a ruby gem called PONY that will handle the emailing for us - have a look at http://stackoverflow.com/questions/14709421/sending-mail-with-pony-and-sinatra )

***layout.erb
	- the main template with header/footer/navigation
	[] - Kriss left this - assume it was working at the time. (thurs - 11.54pm)
	>> 

***contact.erb
	[]- will require some pretty html5 form
	>> - Tom still working on this


404.erb
	- 404 error handling (google will help)
	>> Mark looking into this.
	
style.css
	>> Anne working on this.

home.erb
	>> Still blank

about.erb
	>> still blank


You will create a site with portfolios for students in your group with separate pages, and make it run on sinatra.

There will be a main page of the app that is displayed when you ask for the root URL ('/').
Each student-section has its own page with a common route structure of "/students/"
The contact-form will have its own page.
There will be a new "about" page.
other pages as appropriate to the solutions below...
use git to collaborate
main page

The main page of the app will contain the list of links to the students, and maybe you could put a picture or something to make it look pretty.

about page

Add an "about" page that describes the WDI course in general and what you're learning or similar (make it fun).

contact us page

Make sure your contact-us form has important fields like the subject of the email and the return email address of the sender. Use appropriate HTML5 tags where you can.

make your contact form post to a separate sinatra end-point. Check that the person has filled in the important fields. If they haven't, redisplay the form with error messages, otherwise display a "thank you" page.

student pages

Make them look pretty.

general page structure

Put a header at the top. Add a menu to the header that has links to all the student-pages and the list of students should be on the right-hand side of the header.

Make sure that the header shows up on all pages (so you can move between student pages by clicking on the menu links).

Add a link to the left-hand side of the header that will take you back to the main page. Find a suitable logo/icon to use for that.

Add a footer that appears on all the pages. You should have three links in the footer to: home, about, contact-us Add a suitable copyright message.

more sinatra goodness

Figure out how to nicely handle a 404 to display a nicer page.

Make it all look pretty

Try to apply the DRY principle as much as possible.

Extra credit:

Find out how you can get sinatra to actually email somebody from your form.