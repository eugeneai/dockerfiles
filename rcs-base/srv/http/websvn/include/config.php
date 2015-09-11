<?php

$config->addTemplatePath($locwebsvnreal.'/templates/calm/');
$config->addTemplatePath($locwebsvnreal.'/templates/BlueGrey/');
$config->addTemplatePath($locwebsvnreal.'/templates/Elegant/');

$config->addInlineMimeType('text/plain');

$config->setMinDownloadLevel(2);

$config->useGeshi();

$config->expandTabsBy(8);

$config->addRepository('An SVN repo', 'file:///svn/SVN');
