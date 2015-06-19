layout: post
title: "画像の表示（imgタグ）"
date: 2015-05-11 00:00:52
comments: false
tags: 
- HTML基本
categories: 
- HTML基本
---
<!-- more -->

HTML文書に画像を配置するにはimgタグを使います。

## imgタグについて

`imgタグ`を使う事により画像を表示させる事ができます。

    #!!{"brush":"html","gutter":"false"}
    <img src="sample.jpg">

imgタグを指定する場合は`画像のサイズを設定`しましょう。
※サイズを指定しないとページ読み込み持にページのレイアウトが崩れる原因になったります。

サイズ指定は`width属性（横幅）`と`height属性（縦幅）`で指定できます。

    #!!{"brush":"html","gutter":"false"}
    <img src="sample.jpg" width="300" height="454">

さらに`alt属性`を入れる事により画像のリンク切れになった場合にも文字を表示させる事ができます。
※SEO対策に有効とされています。

    #!!{"brush":"html","gutter":"false"}
    <img src="sample.jpg" width="300" height="454" alt="HTML学習用画像">

### 作ってみよう

1. Sublime Textで`⌘ + option + n`
2. `img-tag.html`を入力してファイルを作成

**img-tag.html**

    #!!{"brush":"html","title":"img-tag.html"}
    <!DOCTYPE html>
    <html lang="ja">
    <head>
    <meta charset="UTF-8">
    <title>imgタグの確認</title>
    </head>
    <body>
    <img src="https://lh6.googleusercontent.com/-6nwwaBy6dAY/U389L0GF5oI/AAAAAAAAAr8/sePEFayGOIQ/w600-h908-no/Mona_Lisa.jpg" width="300" height="454" alt="HTML学習用画像">
    </body>
    </html>

### 確認しよう

Sublime Textで`ctrl + option + c`をタイプしてブラウザで確認しましょう。

- 画面にモナリザの画像が表示される事を確認しよう
- `img`タグの`width`や`height`を変更して表示がどのように変わるかを確認しよう


## 画像のサイズの調べ方

画像のサイズの調べ方は色々ありますがMacで調べる場合は簡単です。
Finderで画像を選べば確認できます。

![](https://lh6.googleusercontent.com/-ziT-arBIq-k/U4hsDENNWpI/AAAAAAAAA0U/lkzk6C7o3pQ/s600/%25E3%2582%25B9%25E3%2582%25AF%25E3%2583%25AA%25E3%2583%25BC%25E3%2583%25B3%25E3%2582%25B7%25E3%2583%25A7%25E3%2583%2583%25E3%2583%2588%25202014-05-30%252020.30.17.png)

## 画像サイズの変更の仕方

画像のサイズの変更はMacであればプレビューで簡単です。

- プレビューを開いて[ツール]-[サイズを調整]
- お好みのサイズに変更（単位はピクセル）してOK

![](https://lh3.googleusercontent.com/-dsoGB1PJdWU/U4htn0t75hI/AAAAAAAAA0o/S0LmSQ05qdM/s630/%25E3%2582%25B9%25E3%2582%25AF%25E3%2583%25AA%25E3%2583%25BC%25E3%2583%25B3%25E3%2582%25B7%25E3%2583%25A7%25E3%2583%2583%25E3%2583%2588%25202014-05-30%252020.34.24.png)

※通常のWebブラウザの画面解像度は72ppiです。
※retinaディスプレイの画面解像度は倍の144ppiです。