# PageGen by rav3ndust
# generates an HTML file for you to easily generate the beginnings of an html file that you can edit to your liking. 

# PageGen is free software licensed under the WTFPL version 2

# xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

# This script aims to help you build a ready-to-go HTML page that you can edit without having to do a ton of code to build out the bones of your pages.
# I use this script frequently to generate blog pages quickly for my website. I suspect there are other decent uses for it out there, too. 

# xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

# first we start up the script
notify-send -u critical "Welcome to PageGen!" "Let's start building your page now."
echo "PageGen v1.0"

#next, we create a www folder for this project in the user's home directory 
cd && mkdir www
cd www

# now we can begin building the page and all of its elements
echo "<!--this HTML file was generated automatically by PageGen. Please edit it to your liking.-->" >> gen.html
echo "<!DOCTYPE=html>" >> gen.html	#generate the page
echo "<html>" >> gen.html
echo "<link rel=\"stylesheet\" href=\"stylesheet.css\" type=\"text/css\">" >> gen.html	# link in the stylesheet we will make next

# then, we create the stylesheet.css file that we linked in
echo "head {" >> stylesheet.css

# now we ask for the basic design scheme and setup the stylesheet.css

# heading background color
read -p "What background color would you like your heading to be?" HEADBGCOLOR	#HEADBGCOLOR will be entered into the head background-color element in stylesheet.css
echo "Cool!"
echo "background-color: $HEADBGCOLOR;" >> stylesheet.css
# heading text color
read -p "What color would you like the text in your heading to be?" HEADTXT	#HEADTXT will entered into the stylesheet for the text color in stylesheet.css
echo "Excellent!"
echo "color: $HEADTXT;" >> stylesheet.css
echo "}" >> stylesheet.css
# body background color
read -p "What background color would you like the body of your page to be?" BBG	#BBG will be entered into the stylesheet for the backgroundcolor in stylesheet.css
echo "Nice!"
echo "body {" >> stylesheet.css
echo "background-color: $BBG;" >> stylesheet.css
# body text color
read -p "what color would you like the text of your page's body to be?" BTXT #BTXT will be entered into the color element in the stylesheet.css
echo "color: $BTXT" >> stylesheet.css
echo "}" >> stylesheet.css
# footer background color
read -p "What background color would you like your footer to have?" FOOT1 #FOOT1 will be the background-color of the footer in the stylesheet.css
echo "That's a cool choice."
echo "footer {" >> stylesheet.css
echo "background-color: $FOOT1;" >> stylesheet.css
#footer text color
read -p "What color would you like for the text in your footer?" FOOT2 #FOOT2 will be the color element in the of the footer in the stylesheet.css
echo "I like it."
echo "color: $FOOT2;" >> stylesheets.css
echo "}" >> stylesheets.css

# Now we can generate the basic first page with our customizations

#make the heading and tab title
echo "<head>" >> gen.html
# ask for title of the page
read -p "What would you like your page's title to be?" TITLE	#TITLE will be entered into the head element
echo "Thanks!"

#create the heading
echo "<title>$TITLE</title>" >> gen.html
echo "<h1>Generated Site</h1>" >> gen.html
echo "</head>" >> gen.html

# make the body
echo "<body>" >> gen.html
echo "<p>Placeholder content.</p>" >> gen.html
echo "</body>" >> gen.html

#make the footer
echo "<footer>" >> gen.html
echo "<p>Placeholder content.</p>" >> gen.html
echo "</footer>" >> gen.html

# close the html 
echo "</html>" >> gen.html

#notify the user they are finished
echo "Your file is done. Don't forget to rename it and add in your content!"
notify-send -u critical "Pages Generated." "Your files have been created."

# now we are free to go back, rename the file, and edit it with further, more complex code, or simply add content to the generated page.

