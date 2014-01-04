now_playing
===========

NowPlaying plugin for mikutter

ということで, mikutterから再生中の曲を投稿できるプラグインです.
正直Ruby書いたこと無かったのでなんで動いてるのかよくわかってません.
デフォではAudaciousで再生している曲を投稿しますが, ソースコード中の
rb_service = bus.service("org.mpris.MediaPlayer2.audacious")
のaudaciousのところをrhythmbox等に変更すると他のプレイヤーにも使えます.
DBus使ってるのでdbusが動いてるシステムでしか動きません.
上記の変更をしてもMPRISっていうのに対応してるプレイヤーしか使えません.
たぶんLinuxとかBSDで動く新しめのプレイヤーだったら大体対応してると思います.
あとソースコード中の文字列をいじると投稿するメッセージを変更できます.

誰でも書ける程度のことしかしてませんが誰もしてなかったので書きました. コロンブスの卵ですね.
ではでは.
