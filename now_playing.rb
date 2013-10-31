# -*- coding: utf-8 -*-

require 'dbus'

Plugin.create(:now_playing) do
    def post_now_playing
        bus = DBus::SessionBus.instance
        # Change to your favorite player:
        # e.g. org.mpris.MediaPlayer2.rhythmbox
        rb_service = bus.service("org.mpris.MediaPlayer2.audacious")
        rb_player = rb_service.object("/org/mpris/MediaPlayer2")
        rb_player.introspect
        rb_player_iface = rb_player["org.mpris.MediaPlayer2.Player"]
        meta = rb_player_iface["Metadata"]
        # Please edit message below.
        msg = '"' + meta["xesam:title"] + '"  by ' + meta["xesam:artist"][0] +
            ' #NowPlaying'
        Service.primary.update(:message => msg)
    end

    command(:now_playing_post,
            name: 'Post Now Playing',
            condition: lambda{ |opt| true },
            visible: true,
            role: :timeline) do |opt|
                post_now_playing
            end
end

