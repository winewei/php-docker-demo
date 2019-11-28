<?php
    $redis = new Redis();
    $redis -> connect(redis, 6379);
    $redis -> set( "test", "Hi Redis" );
    $get = $redis -> get( "test");
    echo "$get\n";
?>
