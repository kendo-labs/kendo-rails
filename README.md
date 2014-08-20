# kendo-rails

# Note
Kendo UI Labs projects are experimental and largely built and supported by the community.  As such Telerik does not provide official support for any of the Kendo UI Labs projects via Telerik support agreements.  We do encourage you to open an issue or visit [Stack Overflow](http://www.stackoverflow.com).

## About kendo-rails
[Kendo UI](http://www.kendoui.com) For Rails!

This gem provides:

* Kendo UI JavaScript (Minified Version of the Web Suite)
* Kendo UI Styles (Common Styles and All themes)

## Compatibility and Requirements

kendo-rails is designed to help developers work with Kendo UI Web in Rails applications. It currently depends on the following libraries:

- [jQuery](http://www.jquery.com) v1.9.1
- [Kendo UI](http://www.kendoui.com) vLatest
- [Rails](http://www.rails.com) 3.0+

kendo-rails has not been tested against any other versions of these libraries. You may find that versions other than these are compatible with [Project Name], but we make no claims to support those version, nor can we troubleshoot issues that arise when using those versions.

## Installation and Usage

In your Gemfile, add this line:

    gem 'kendo-rails'

Then, run `bundle install`. 

After bundler completes, you can install the appropriate scripts by running the following command:

    rails generate kendoui:install 

Depending on your Rails version and environment, this command will either:
 a) add javascripts and stylesheets to your asset pipeline (Rails 3.1+);
or, b) add javascripts and stylesheets to your `public/javascripts` and `public\stylesheets` folders (Rails < 3.1 and Rails 3.1+ with asset pipeline disabled).

### Rails 3.1 (Asset Pipeline)

For Rails 3.1 and greater, Kendo UI will be added to the asset pipeline and available for you to use. This line will be added to the file `app/assets/javascripts/application.js` by default:

    //= require kendo/kendo.web.min

Appropriate styles will also be added to the asset pipeline, with the following two lines added to `app\assets\stylesheets\application.css`:

	*= require kendo/kendo.common.min
	*= require kendo/kendo.default.min 

If you prefer another theme (metro, silver, etc) replace the second line with the name of that theme, or use the `--theme` switch in the generate command (see below for details).

### Rails 3.0, Previous or Asset Pipeline Disabled

For other environments, Kendo UI javascripts, styles and supporting images will be added to the `public` folder for your application. After running `rails generate kendoui:install` you'll see the following in your public folder:

    + public
        + javascripts
            - kendo.web.min.js
        + stylesheets
        	+ textures
        	+ default // Or, your specified theme 
            - kendo.common.min.css
            - kendo.default.min.css

Once these files are in place, you can add them to your layouts like so:

	<link href="/stylesheets/kendo.common.min.css" rel="stylesheet"/>
	<!-- If using an alternate theme, change this next line -->
	<link href="/stylesheets/kendo.default.min.css" rel="stylesheet"/>
	<script src="/javascripts/jquery.min.js"></script>
	<script src="/javascripts/kendo.web.min.js"></script>
	 
As with Rails 3.1 environments, the install generator will add the `kendo.default.min.css` stylesheet by default, and you can customize the installed theme with the `--theme` switch

### Customizing the Installed Theme

As mentioned above, the install generator will install the default (also named default) theme for Kendo UI, unless you specify an alternate with the generator command. This is done using the `--theme` switch. For example, if you wanted to install the 'metro' theme, you can run the following:

    rails generate kendoui:install --theme=metro

For Non-Asset Pipeline Environments, you can pass "all" into the theme switch, which will copy all available themes into your `public/stylesheets` directory.

## How to Contribute

If you would like to contribute to kendo-rails's source code, please read the [guidelines for pull requests and contributions](CONTRIBUTING.md). Following these guidelines will help make your contributions easier to bring in to the next release.

## Getting Help

Use this section to list ways that a developer can obtain help or support for this project, for instance, Stack Overflow. Make sure to also leave the following section:

As a part of Kendo UI Labs, [Project Name] is intended to be a community-run project, and not an official part of any Kendo UI SKU (Web, DataViz, Mobile or Complete). As such, this project is not a supported part of Kendo UI, and is not covered under the support agreements for Kendo UI license holders. Please do not create support requests for this project, as these will be immediately closed and you'll be directed to post your question on a community forum.

## Release Notes

For change logs and release notes, see the [changelog](CHANGELOG.md) file.

### Learn more about [Kendo UI](http://kendoui.com)!

Kendo UI is an end-to-end HTML5, CSS3 and JavaScript solution for modern client-side development, developed by [Telerik](http://www.telerik.com). For more information about Kendo UI, including documentation, support, and additional Kendo UI libraries like DataViz and Mobile, visit http://KendoUI.com and http://demos.kendoui.com/. Also, be sure to check out the [Kendo UI Blog](http://www.kendoui.com/blogs.aspx) for breaking Kendo UI news as well as development tips and commentary.

You can also find Kendo UI on:

* [Twitter](https://twitter.com/#!/KendoUI)
* [Facebook](http://www.facebook.com/KendoUI)
* [Google+](https://plus.google.com/117798269023828336983/posts)

## License Information

This project has been released under the [Apache License, version 2.0](http://www.apache.org/licenses/LICENSE-2.0.html), the text of which is included below. This license applies ONLY to the project-specific source of each repository and does not extend to Kendo UI itself, or any other 3rd party libraries used in a repository. For licensing information about Kendo UI, see the [License Agreements page](https://www.kendoui.com/purchase/license-agreement.aspx) at [KendoUI.com](http://www.kendoui.com).

Note: This gem provides a GPLv3 Licensed version of Kendo UI Core with full source code and access to major updates. For more information about commercial licenses for Kendo UI, as well as access to DataViz and Mobile suites, head over to the [Get Kendo UI](http://www.kendoui.com/blogs.aspx) page.

> Copyright © 2013 Telerik

> Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

> [http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

>  Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
