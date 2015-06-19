layout: post
title: "環境構築"
date: 2015-05-11 00:01:00
comments: false
tags: 
- はじめに
categories: 
- はじめに

<!-- more -->

# 環境構築

## Sublime Textのインストール

### Macの場合

#### ダウンロードアプリケーション許可

1.システム環境設定を開いてください。

![](https://lh5.googleusercontent.com/-uofz8dbanvU/U7YBeUAIjGI/AAAAAAAAB7c/6-pFAMiJEVk/w800-h468-no/sys-config.png)

2.これからダウンロードするアプリをインストールできるように環境設定を変更します。システム環境設定から`セキュリティとプライバシー`を選択します。

![](https://lh3.googleusercontent.com/-XL9RM-GJJME/U6mQLjMczwI/AAAAAAAABbM/7vcKyJfCJxQ/w1200-h708-no/mac-sys-conf.png)

3.`一般`タブの一番下の鍵錠マークをクリックしMacの管理者ユーザのパスワードを入力すると、画面の変更ができるようになるので、`すべてのアプリケーションを許可`を選択します。

![](https://lh5.googleusercontent.com/-r5nZZFUYrxg/U6mQLu0TaFI/AAAAAAAABbQ/sSZuW0FWO-g/w1200-h934-no/mac-sys-conf2.png)

これでApp Store以外のアプリケーションがインストールできるようになります。

#### Sublime Text3ダウンロード

1.Googleで`Sublime Text3 ダウンロード`で検索して下記ページにアクセスしてください。
Macの場合は`OS X`のリンクをクリックしてください。

<a href="http://www.sublimetext.com/3" target="_blank">http://www.sublimetext.com/3</a>

![](https://lh3.googleusercontent.com/-v-I6SGDWHJQ/VNGpqgeNDpI/AAAAAAAALUo/P0PB0aFd04o/w2864-h1596-no/sublime_download.png)

2.ダウンロード完了したらdmgファイルをダブルクリックしてインストールしてください。
Sublime TextのアイコンをドラッグしてApplicationsフォルダにドロップ。

![](https://lh5.googleusercontent.com/-s3QNWaNAq8g/VNGprdqUWTI/AAAAAAAALU0/vmCpjgbN-n0/w1624-h916-no/sublime_install_mac.png)

3.アプリケーションフォルダを開き、Sublime Textのアイコンをダブルクリックすれば起動します。

![](https://lh5.googleusercontent.com/-sK1edwCygkU/VNGptGHFOBI/AAAAAAAALVE/eB0D_T-TTf4/w2632-h1872-no/sublime_boot.png)

このような画面が起動します。これでSublimeTextのインストールは完了です。

![](https://www.evernote.com/shard/s29/sh/3e692c59-045e-46fe-bd40-d97bb2f2efd8/6c3f6a3367e765be9d74db29806df592/deep/0/untitled---doc.png)

---

### Windowsの場合

#### Sublime Text3のダウンロード

1.Windowsの場合は`Windows`もしくは`Windows 64bit`を選択してください。
※お使いのOSのbit数に合わせてダウンロードしてください。

![](https://lh5.googleusercontent.com/-eeuAJhcMnWE/VNGpu468HWI/AAAAAAAALVQ/3ZbSwNuN1BY/w3200-h2138-no/sublime_win_dl.png)

2.ダウンロードした`exe`ファイルをダブルクリックし、画面の案内に従ってインストールしてください。
※基本は次へをクリックしてインストールしてください。

![](https://lh5.googleusercontent.com/-qEnhO6TxF_s/VNGpwLYe6mI/AAAAAAAALVY/khJP9fHhQpE/w1724-h1409-no/sublime_win_instal_wiz.png)

---

### Sublime Textのプラグイン

Sublime Textは様々なプラグインが無料で公開されており、利用する事により更に便利にプログラミングできるようになります。

#### Package Controlのインストール

プラグインをインストールするためには`Package Control`というものをインストールする必要があります。
Googleで`sublime text3 package control`と検索してトップのサイトを開き、
下記のプログラムコードをコピーしてください。

<a href="https://packagecontrol.io/installation" target="_blank">https://packagecontrol.io/installation</a>

![](https://lh3.googleusercontent.com/-sxtZdkYkmAY/VNGpsWuzlSI/AAAAAAAALU8/c5jWVHq0s6w/w2280-h1667-no/sublime_package_control.png)

`control + shift + @`を入力してコマンドパレットを表示させます。
またはメニューから`View -> Show Console`を選んでください。

![](https://lh3.googleusercontent.com/-ZXrvb0qrerc/VNGuf2QDroI/AAAAAAAALV8/PnxFQ-XABmw/w1158-h564-no/show_console.png)

![](https://lh4.googleusercontent.com/-o9RS_nMBI00/U4wh85Yo28I/AAAAAAAAA3o/OrOiuuQiKS0/s600/%25E3%2582%25B9%25E3%2582%25AF%25E3%2583%25AA%25E3%2583%25BC%25E3%2583%25B3%25E3%2582%25B7%25E3%2583%25A7%25E3%2583%2583%25E3%2583%2588%25202014-06-02%252016.01.42.png)

下記の内容をコマンドパレットに先ほどコピーしたものをペーストしてください。

![](https://lh3.googleusercontent.com/-1WfaPzRUzKk/U4wizvZglfI/AAAAAAAAA38/z_IIdAiKOHQ/s600/%25E3%2582%25B9%25E3%2582%25AF%25E3%2583%25AA%25E3%2583%25BC%25E3%2583%25B3%25E3%2582%25B7%25E3%2583%25A7%25E3%2583%2583%25E3%2583%2588%25202014-06-02%252016.07.11.png)

これでPackage Controllがインストールされました。

#### プラグインのインストール方法

Package Controlで簡単にインストールできます。

1. `command + shift + p`でPackage Controlを開く
2. `install package`と入力
3. `Package Control -> install package`を選択

![](https://lh5.googleusercontent.com/-DQAAT2hHH5o/U4wsxQX3k7I/AAAAAAAAA5s/-s6gswLA_dA/s600/%25E3%2582%25B9%25E3%2582%25AF%25E3%2583%25AA%25E3%2583%25BC%25E3%2583%25B3%25E3%2582%25B7%25E3%2583%25A7%25E3%2583%2583%25E3%2583%2588%25202014-06-02%252016.49.37.png)

次の画面でインストールしたいプラグインを検索します。

試しにFTP機能を提供してくれる「SFTP」をインストールしてみましょう。

![](https://lh5.googleusercontent.com/-RaFVHk_aNpU/U4wu3xuJ3II/AAAAAAAAA6E/xfbJkiacFDo/s600/%25E3%2582%25B9%25E3%2582%25AF%25E3%2583%25AA%25E3%2583%25BC%25E3%2583%25B3%25E3%2582%25B7%25E3%2583%25A7%25E3%2583%2583%25E3%2583%2588%25202014-06-02%252016.58.49.png)

インストール完了するとPackage Control Messagesが開きます。
インストールしたプラグインの使い方など書かれていますのでしっかり確認しましょう。（基本英語です。。）

![](https://lh6.googleusercontent.com/-SJfzitLlVRQ/U4_SPKhiAgI/AAAAAAAABDI/pxOSJoDc5B0/s512/%25E3%2582%25B9%25E3%2582%25AF%25E3%2583%25AA%25E3%2583%25BC%25E3%2583%25B3%25E3%2582%25B7%25E3%2583%25A7%25E3%2583%2583%25E3%2583%2588%25202014-06-05%252011.12.13.png)

このようにPackage Installで簡単にプラグインを入れる事ができます。

#### おすすめのプラグイン

下記のプラグインは非常に有名でとっても便利なプラグインですのでインストールしましょう。

|プラグイン名|説明|
|---|---|
|Emmet|略称でHTMLやCSSをらくらく記述できるもの|
|View in Browser|Sublime Textからショートカットキー一発でブラウザプレビュー|

## HTMLにチャレンジ

簡単なHTML文書を作成して、プラウザに表示してみましょう。
Sublime Textで下記操作をしてください。

#### やってみよう

1. Sublime Textで`⌘ + n`（Winの場合は`ctrl + n`）
2. `⌘ + s`（Winの場合は`ctrl + s`）で`test.html`と入力してEnterキー
3. エディターエリアで`!`を入力し`tabキー`

下図のように簡単にHTMLのひな形が作成できます。

![](https://lh3.googleusercontent.com/-8tn5AIHWP7Y/VHPY0Z_vz0I/AAAAAAAAFg8/hSbu6XQnQvk/w1200-h800-no/emmet_%21.gif)

複数のリストを記述したい場合はこのように書きます。

    ul>li.item$*5

行末で`Ctrl + e`と下記に変換してくれます。

![](https://lh4.googleusercontent.com/-em8VmKvmg9U/VHPY05NPnUI/AAAAAAAAFhI/I6rFsOTBpBI/w1200-h800-no/emmet_numbering.mov.gif)

そのほかにも様々な便利なショートカットが使えます。

    div.header

![](https://lh4.googleusercontent.com/-JJecXUY-2hs/VHPY1uQWM_I/AAAAAAAAFhM/Y-evXnMJWRg/w1200-h800-no/emmet_class_id.mov.gif)

    table>tr*2>th+td

![](https://lh3.googleusercontent.com/-QSJoxXfYY_Q/VHPY2RtsZXI/AAAAAAAAFhY/-M437dyYe28/w1200-h800-no/emmet_table.mov.gif)

    ul>li*3>a

![](https://lh5.googleusercontent.com/-9yVGSEr41YU/VHPY3JfHkfI/AAAAAAAAFhg/m0KUJVwlXBQ/w1200-h800-no/emmet_multiple.mov.gif)

### Emmetのチートシート

下記ページのチートシートを見ればだいたい使い方がわかると思います。

<a href="http://docs.emmet.io/cheat-sheet/" target="_blank">Emmetチートシート</a>

覚えればとっても早くHTMLが記述できますので覚えてしまいましょう。

## CSSにチャレンジ

次にCSSにチャレンジしてみましょう。
CSSとは`HTML文書に様々な装飾を施す`事ができます。

### やってみよう

1. Sublime Textで`⌘ + n`（Winの場合は`ctrl + n`）
2. `⌘ + s`（Winの場合は`ctrl + s`）で`css.html`と入力してEnterキー
3. エディターエリアで`!`を入力し`tabキー`

css.html

    <!DOCTYPE html>
    <html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>CSSにチャレンジ</title>
    </head>
    <body>
    <div id="box">ボタン</div>
    </body>
    </html>

さらに`style`タグを追加して`id="box"`の要素に対して装飾を施します。
`<!-- ▼追加▼ -->`と`<!-- ▲追加▲ -->`の部分を追加してください。

    <!DOCTYPE html>
    <html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>CSSにチャレンジ</title>
        <!-- ▼追加▼ -->
        <style>
        #button{
            width: 200px; /* 横幅200px */
            padding: 15px; /* 内側余白15px */
            background:red; /* 背景は赤色 */
            color:white; /* テキストは白色 */
            text-align:center; /* 行揃えは中央揃え */
            border:1px solid red; /* 罫線指定（1pxの実践で赤色） */
        }
        </style>
        <!-- ▲追加▲ -->
    </head>
    <body>
    <div id="button">ボタン</div>
    </body>
    </html>

次にボタンにカーソルが重なった場合に変化をさせましょう。
`/* ▼追加▼ */`と`/* ▲追加▲ */`の部分を追加してください。

    <!DOCTYPE html>
    <html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>CSSにチャレンジ</title>
        <style>
        #button{
            width: 200px; /* 横幅200px */
            padding: 15px; /* 内側余白15px */
            background:red; /* 背景は赤色 */
            color:white; /* テキストは白色 */
            text-align:center; /* 行揃えは中央揃え */
            border:1px solid red; /* 罫線指定（1pxの実践で赤色） */
        }
        /* ▼追加▼ */
        #button:hover{
            color:red;
            background:white;
        }
        /* ▲追加▲ */
        </style>
    </head>
    <body>
    <div id="button">ボタン</div>
    </body>
    </html>

### アニメーションしてみよう

さらにボタンにカーソルが重なった時に拡大させて、それにアニメーションを追加しましょう。

    <!DOCTYPE html>
    <html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>CSSにチャレンジ</title>
        <style>
        #button{
            width: 200px; /* 横幅200px */
            padding: 15px; /* 内側余白15px */
            background:red; /* 背景は赤色 */
            color:white; /* テキストは白色 */
            text-align:center; /* 行揃えは中央揃え */
            border:1px solid red; /* 罫線指定（1pxの実践で赤色） */
            /* ▼追加▼ */
            transition:0.5s; /* 0.5秒間隔でアニメーション */
            /* ▲追加▲ */
        }
        #button:hover{
            color:red;
            background:white;
            /* ▼追加▼ */
            transform: scale(1.5); /* 1.5倍に拡大 */
            /* ▲追加▲ */
        }
        </style>
    </head>
    <body>
    <div id="button">ボタン</div>
    </body>
    </html>

このようにCSSを使うとHTML文書に様々な装飾を施す事ができます。