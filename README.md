# Implementing Ajaxified 'Read More' in Rails

This **bare bones app** includes only users and supports CRUD upon these users.

The purpose of building this was to practice using unobstrusive Javascript, along with SJR and AJAX, to build **read more** functionality where *N* user objects are asynchronously retrieved from the database and added to the page.

This code is based on a tutorial by [Joseph Dungu](http://josephndungu.com/tutorials/rails-load-more-results-using-jquery-ajax)

### Rails version
4.0.0

### Learning Points

- Once navigating to users#show, then moving back to users#index, the XHR requests stopped producing the predicted results. After quite a bit of debugging, I realized that Turbolinks was messing with the XHR requests and inhibiting the replacement of html on the page.

- Not all Rails unobstrusive Javascript can be SJR. There is the possibility of moving the code for identifying the last
id present in the HTML to the index.js.erb template. However, it seems that it is necessary for **show**, **hide**, etc to stay client side.

- You can specify a Rails version to build with when doing **rails new** by doing 
``` sh
rails _4.0.0_ new read-more-in-rails
```