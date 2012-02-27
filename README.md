# kendoui-rails

[Kendo UI](http://www.kendoui.com) For Rails!

This gem provides:

* Kendo UI JavaScript (Minified Version of the Web Suite)
* Kendo UI Styles (Common Styles and the Default Theme)

## Installation

In your Gemfile, add this line:

    gem "kendoui-rails"

Then, run `bundle install`. 

After bundler completes, you can install the appropriate scripts by running the following command:

    rails generate kendoui:install 

Depending on your Rails version and environment, this command will either:
 a) add javascripts and stylesheets to your asset pipeline (Rails 3.1+);
or, b) add javascripts and stylesheets to your `public/javascripts` and `public\stylesheets` folders (Rails < 3.1 and Rails 3.1+ with asset pipeline disabled).

### Rails 3.1 (Asset Pipeline)

For Rails 3.1 and greater, Kendo UI will be added to the asset pipeline and available for you to use. This line will be added to the file `app/assets/javascripts/application.js` by default:

    //= require kendo/kendo.all.min

Appropriate styles will also be added to the asset pipeline, with the following two lines added to `app\assets\stylesheets\application.css`:

	*= require kendo/kendo.common.min
	*= require kendo/kendo.default.min 

If you prefer another theme (metro, silver, etc) replace the second line with the name of that theme, or use the `--theme` switch in the generate command (see below for details).

### Rails 3.0, Previous or Asset Pipeline Disabled

For other environments, Kendo UI javascripts and styles will be added to the `public` folder for your application. After running `rails generate kendoui:install` you'll see the following in your public folder:

    + public
        + javascripts
            - kendo.all.min.js
        + stylesheets
            - kendo.common.min.css
            - kendo.default.min.css
            
As with Rails 3.1 environments, the install generator will add the `kendo.default.min.css` stylesheet by default, and you can customize the installed theme with the `--theme` switch

### Customizing the Installed Theme

As mentioned above, the install generator will install the default (also named default) theme for Kendo UI, unless you specify an alternate with the generator command. This is done using the `--theme` switch. For example, if you wanted to install the 'metro' theme, you can run the following:

    rails generate kendoui:install --theme:metro

### Learn more about [Kendo UI](http://kendoui.com)!

Kendo UI is an end-to-end HTML5, CSS3 and JavaScript solution for modern client-side development, developed by [Telerik](http://www.telerik.com). For more information about Kendo UI, including documentation, support, and additional Kendo UI libraries like DataViz and Mobile, visit http://KendoUI.com and http://demos.kendoui.com/. Also, be sure to check out the [Kendo UI Blog](http://www.kendoui.com/blogs.aspx) for breaking Kendo UI news as well as mobile development tips and commentary.

You can also find Kendo UI on:

* [Twitter](https://twitter.com/#!/KendoUI)
* [Facebook](http://www.facebook.com/KendoUI)
* [Google+](https://plus.google.com/117798269023828336983/posts)

Note: This gem provides a GPLv3 Licensed version of Kendo UI Core with full source code and access to major updates. For more information about commercial licenses for Kendo UI, as well as access to DataViz and Mobile suites, head over to the [Get Kendo UI](http://www.kendoui.com/blogs.aspx) page.

This gem was created by [Brandon Satrom](http://twitter.com/brandonsatrom). Find me online at [userinexperince.com](http://userinexperince.com) or on Twitter as [@BrandonSatrom](http://twitter.com/brandonsatrom). You can also email me at [brandon@kendoui.com](mailto:brandon@kendoui.com).