<?php
    $memcache = new Memcached();
    $memcache -> addServer(memcache, 11211) or die ("Could not connect Memcached Server");
    $memcache -> set ('key','Connect Memcached Server sussucfull');
    $get = $memcache -> get('key');
    echo "$get\n";
?>
