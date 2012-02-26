# kendoui-rails

Kendo UI For Rails!

This gem provides:

* Kendo UI JavaScript (Minified Version of the Complete Web Suite)
* Kendo UI Styles (Common Styles and the Default Theme)

## Rails 3.1

For Rails 3.1 and greater, the files will be added to the asset pipeline and available for you to use. These two lines will be added to the file `app/assets/javascripts/application.js` by default:

    //= require jquery
	//= require kendo/kendo.all.min

To work with Kendo UI Themes, you'll need to add the following to `app\assets\stylesheets\application.css`:

	*= require kendo/kendo.common.min
	*= require kendo/kendo.default.min 

If you prefer another theme (metro, silver, etc) replace the second line with the name of that theme

### Installation

In your Gemfile, add this line:

    gem "kendoui-rails"

Then, run `bundle install`. 

That's all you need to start using Kendo UI. 

Note: This gem provides a GPLv3 Licensed version of Kendo UI Core. For more information about Kendo UI, including documentation, support, and additional Kendo UI libraries like DataViz and Mobile, visit http://KendoUI.com