<?php
    $memcache = new Memcached();
    $memcache -> addServer(memcache, 11211) or die ("Could not connect Memcached Server");
    $memcache -> set ('test','Hi Memcached');
    $get = $memcache -> get('test');
    echo "$get\n";
?>
