<?php
$manifest = array( 
	'name' => 'Portugues (BR) - Language Pack',
    'description' => 'Language Pack Portugues Brasil - <a href="http://www.lampadaglobal.com/index.php/pt/sugarcrm" target="_blank">LAMPADA GLOBAL SERVICES</a>',
	'type' => 'langpack',
	'is_uninstallable' => 'Yes',
	'version' => '6.5.3',
	'acceptable_sugar_flavors' => array("CE"),
	'author' => 'LAMPADA GLOBAL SERVICES',
	'acceptable_sugar_versions' => array("regex_matches" => array("6.5.[0-9]")),
	'published_date' => '23-08-2012',
);

$installdefs = array(
	'id' => 'pt_BR',
	'image_dir' => '<basepath>/images',
	'copy' => array(
		array('from' => '<basepath>/include', 'to' => 'include',),
		array('from' => '<basepath>/modules', 'to' => 'modules'),
		array('from' => '<basepath>/jscalendar', 'to' => 'jscalendar'),
		array('from' => '<basepath>/install', 'to' => 'install'),
	),
);
?>
