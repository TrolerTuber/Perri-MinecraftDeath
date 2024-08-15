window.addEventListener('message', function(event) {
    var v = event.data;
    switch (v.type) {
        case 'open':
            $('.container').fadeIn(1000, function() {});
            break;
        case 'close':
            $('.container').fadeOut(1000, function() {});
            break;
        case 'killfeed':
            $('span').text(v.killerName);
            break;
    }
   
    $('#respawn').click(function(){
        $.post('https://Perri_MinecraftDeath/revive');
    });
           
    $('#salir').click(function(){
        $.post('https://Perri_MinecraftDeath/quit');
    });
});
