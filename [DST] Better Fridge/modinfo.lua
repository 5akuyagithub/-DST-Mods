name = "Better Fridge"
description = "V 1.2\n\nHave you ever worring about your refrigerators are not cold enough? Try this self-tuning ice box then!\n\n-- Tunable ice box can customize the length ratio of refrigeration and unlimited refrigeration in the configuration!\n-- 1x = Double the normal shelf life.\n-- 2x = Quadruple the normal shelf life.\n-- 3x = Six times the normal shelf life.\n-- Infinity = No shelf life for every storable objects inside the ice boxes.\n\nPS: The shelf lives are counting separately. The magnification is based on the power of an ordinary ice box.\n\n➘ Please check the configuration here!"
author = "いち夜"
version = "1.2"
-- forumthread = "/"

api_version = 10

dst_compatible = true
dont_starve_compatible = true
reign_of_giants_compatible = true
shipwrecked_compatible = true

all_clients_require_mod = true 
restart_required = false
standalone = false

icon_atlas = "modicon.xml"
icon = "modicon.tex"

configuration_options =
{
	{
		name = "magnification", 
		label = "Magnification",
		hover = "Tuning the data can change the magnification of the ice boxes. Acceptable range is between 1x - 3.5x. Of course you can also choose to save your foods forever.",
		options = 
		{
		   {description = "1x", data = "1"},
		   {description = "1.5x", data = "1h"},
		   {description = "2x", data = "2"},
		   {description = "2.5x", data = "2h"},
		   {description = "3x", data = "3"},
		   {description = "3.5x", data = "3h"},
		   {description = "Infinity", data = "0"},
		},
		default = "2",
	},
}