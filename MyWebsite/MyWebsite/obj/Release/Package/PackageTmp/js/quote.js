var quotes = [
  "All achievements require time"
"Everyday is another chance to get stronger, to eat better, to live healthier, and to be the best version of you"
"Strive for progress.Not perfection"
"No matter how many mistakes you make or how slow you progress, you are still way ahead of everyone who isn't trying"
"Create healthy habits. Not restrictions"
"Do what you have to do. Until you Can do what you WANT to do"
"When you feel like quitting, think about why you started"
"Don't count days, make the days count"
"Strength doesn't come from physical capacity. It comes from an indomitable WILL"
"Life begins at the end of your comfort zone"
"Nothing will work unless you do"
"You are only one workout away from a good mood"
"If you want something you have never had, you must be willing to do something you have never done"
"To give anything less than your best is to sacrifice the gift"
"There is one grand lie: that we are limited. The only limits we have are the limits we believe"
"Life begets life. Energy creates energy. It is by spending oneself that one becomes rich"
"Today I will do what other's won't so tomorrow I can accomplish what other's can't"
"Do something today that your future self will thank you for. "
"We are what we repeatedly do. Excellence is not an act but a habit"
"You miss 100% of the shots you don't take."
"The difference between possible and impossible lies in a person's determination"
"You must do the thing which you think you cannot do"
"I am not afraid. I can do this"
"By acting bravely, we become brave, not the other way round"
"Identify your problems but give your power and energy to your solutions"
"Act and God will act"
"There will be a time when you believe everything is finished. That will be the beginning"
"Do what you can, where you are, with what you have"
"Everyone wants to be strong and self sufficient, but few are willing to put the work necessary to achieve worthy goals"
"Its not what we do once in a while that shapes our lives; but what we do consistently"
"Positive people don't need an outside push, they seemingly have a natural internal push that continually pulls them forward."

]

function generateQuote() {
  var randomQuote = Math.floor(Math.random() * quotes.length);
  document.getElementById('newQuote').innerHTML = quotes[randomQuote];
  document.getElementById('tweetThis').href="https://twitter.com/intent/tweet/?text=" + quotes[randomQuote];
}
