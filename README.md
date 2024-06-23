# shiki-Hamano
 Docker起動方法

 初回
 1. make build
 2. make run

 ２回目以降
 1. make run


make コマンドを bash にインストールする方法
1. https://www.kkaneko.jp/tools/win/make.html からインストール
/*以下 path を通す処理*/
2. vim ~/.bashrc
3. i を押す//インサートモードに移行する
4. alias make='C:/"Program Files (x86)"/GnuWin32/bin/make.exe'と記載
5. Esc : w q を順番に押す//vim が終了する
6. bash を落とす
7. 再度立ち上げ make と打つとコマンドが認識されていることが分かる。
8. Makefile が存在するディレクトリで make <command 名>と打つとコマンドが実行さ
れる。