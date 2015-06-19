layout: post
title: "HTMLを使いこなすためのテクニック"
date: 2015-05-11 00:00:00
comments: false
tags: 
- HTML基本
categories: 
- HTML基本
---
<!-- more -->

HTMLを理解し使いこなすコツは、品質のよいサイトのHTMLのソースコードよく見てを参考にする事です。HTMLソースコードを見る方法をご案内します。

## いいサイトのHTMLを見る

自分が「いいな」と思うサイトを見つけたらそのソースコードを確認してみましょう。
「こうゆう箇所はこんなHTMLタグ使っているんだ〜。」といった発見が必ずあるはるです。
実際に本番サイトで利用されているタグは非常に実用的で勉強になります。

### ソースコードの確認方法

ソースコードを確認するにはchromeなら簡単に確認できます。
chromeでイケてるサイトを開いて[右クリック]-[ソースを表示]
このようにソースコードが確認できます。

![](https://www.evernote.com/shard/s29/sh/80fd642c-0b53-42a3-822b-001e352e77de/5109e008eea82b2602bb20507b579947/deep/0/スクリーンショット-2014-11-15-21.37.00.png)

このように選択した要素のHTMLが確認できます。
よいサイトがどのようなHTML構造になっているのかを確認する癖を付けましょう。

![](https://www.evernote.com/shard/s29/sh/1d1f1cd9-0f50-41a9-826f-7b23558bb6d6/98458760028713d967ff68a5c336add5/deep/0/view-source-headlines.yahoo.co.jp-hl-a-20141115-00000054-mai-bus_all.png)

### Chromeデベロッパーツールを使う

さらにChromeに標準で実装されているデベロッパーツールを利用することにより、より便利にソースコードを確認する事ができます。

#### Chromeデベロッパーツールの利用方法

Webページの特定部分のHTMLを確認したい場合は、その要素にカーソルを合わせて[右クリック]-[要素を調査]をクリックします。

![](https://www.evernote.com/shard/s29/sh/1284a0d8-11dc-4695-9451-514d64ed593c/106f3484d9da5dead77cae54fd63222f/deep/0/スクリーンショット-2014-11-15-21.49.27.png)

このように自分が調べたい箇所のHTMLソースコードがどうなっているのかを確認できます。
とっても便利ですので覚えておきましょう。

![](https://www.evernote.com/shard/s29/sh/7e8cacac-5cb4-4b72-9f9e-dcfc139089aa/f584a993d8d21780b1017cfbb2ab9acb/deep/0/スクリーンショット-2014-11-15-21.50.34.png)

## Emmetで高速コーディング

### Emmetとは

コード(スニペット)とショートカットを組み合わせて、効率的にHTMLやCSSのマークアップ手助けしてくれるツールです。

昔は`Zen Coding`という名前でしたが、進化して`Emmet`という名前になりました。

### Emmetのインストール

Sublime Textのプラグインをインストールできます。
いつもどおり`Command + Shift + p`から`Install Package`を選択し`Emmet`をインストールしてください。

### Emmetの使い方

Emmet記法のショートコードを入力して行末で`Ctrl + e`をタイプするだけです。
たくさんの入れ子のHTMLコードも簡単に瞬間に記述出来てしまいます。

    !

`!`の後で`Ctrl + e`と下記に変換してくれます。

![](https://lh3.googleusercontent.com/-8tn5AIHWP7Y/VHPY0Z_vz0I/AAAAAAAAFg8/hSbu6XQnQvk/w1200-h800-no/emmet_%21.gif)

下記のように複数のリストを記述したい場合はこのように書きます。

    ul>li.item$*5

行末で`Ctrl + e`と下記に変換してくれます。

![](https://lh4.googleusercontent.com/-em8VmKvmg9U/VHPY05NPnUI/AAAAAAAAFhI/I6rFsOTBpBI/w1200-h800-no/emmet_numbering.mov.gif)

そのほかにも様々な便利なショートカットが使えます。

![](https://lh4.googleusercontent.com/-JJecXUY-2hs/VHPY1uQWM_I/AAAAAAAAFhM/Y-evXnMJWRg/w1200-h800-no/emmet_class_id.mov.gif)

![](https://lh3.googleusercontent.com/-QSJoxXfYY_Q/VHPY2RtsZXI/AAAAAAAAFhY/-M437dyYe28/w1200-h800-no/emmet_table.mov.gif)

![](https://lh5.googleusercontent.com/-9yVGSEr41YU/VHPY3JfHkfI/AAAAAAAAFhg/m0KUJVwlXBQ/w1200-h800-no/emmet_multiple.mov.gif)

### Emmetのチートシート

下記ページのチートシートを見ればだいたい使い方がわかると思います。

[Emmetのチートシート](http://docs.emmet.io/cheat-sheet/)

覚えればとっても早くHTMLが記述できますので覚えてしまいましょう。

`ちなみにCSSでもEmmetは利用できます。`