# kendoui-rails

Kendo UI For Rails!

This gem provides:

* 

## Rails 3.1

For Rails 3.1 and greater, the files will be added to the asset pipeline and available for you to use. These two lines will be added to the file `app/assets/javascripts/application.js` by default:

    //=require jquery
	//=require kendo.all

To work with Kendo UI Themes, you'll need to add <link> elements to your layouts, like so

	<link rel="stylesheet" href="stylesheets/kendo/kendo.common.min.css" rel="stylesheet" type="text/css">
	<!-- Replace this with another style from stylesheets/kendo if you prefer -->
	<link rel="stylesheet" href="css/kendo/kendo.default.min.css" rel="stylesheet" type="text/css">

### Installation

In your Gemfile, add this line:

    gem "kendoui-rails"

Then, run `bundle install`. 

That's all you need to start using Kendo UI. 

Note: This gem provides a GPLv3 Licensed version of Kendo UI Core. For more information about Kendo UI, including documentation, support, and additional Kendo UI libraries like DataViz and Mobile, visit http://KendoUI.com