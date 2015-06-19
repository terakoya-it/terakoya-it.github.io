layout: post
title: "HTMLページを作ってみよう"
date: 2015-05-11 00:00:58
comments: false
tags: 
- HTML基本
categories: 
- HTML基本
---
<!-- more -->

HTML文書はとっても簡単につくれます。 テキストエディタさえあれば作れます。 

1. マークアップ形式で文書書く
2. `.html`という拡張子をつけて保存する
3. Webブザウザで開く

## 作り方

※本講座ではテキストエディタは「Sublime Text」を使います。
まずSublime Textを開きます。

![](https://lh6.googleusercontent.com/-Jjt8qN38d1o/U37wtGcTjQI/AAAAAAAAAo4/81Ihlov540I/s1600/%25E3%2582%25B9%25E3%2582%25AF%25E3%2583%25AA%25E3%2583%25BC%25E3%2583%25B3%25E3%2582%25B7%25E3%2583%25A7%25E3%2583%2583%25E3%2583%2588%25202014-05-23%252015.52.11.png)

新規ファイルを作成します。
Sublime Textのメニューから[File]→[New File]を選びます。

![](https://lh3.googleusercontent.com/-aMqmG6yD5gY/U371qoXSn4I/AAAAAAAAApU/TpV60IojbkE/s1600/%25E3%2582%25B9%25E3%2582%25AF%25E3%2583%25AA%25E3%2583%25BC%25E3%2583%25B3%25E3%2582%25B7%25E3%2583%25A7%25E3%2583%2583%25E3%2583%2588%25202014-05-23%252016.11.11.png)

HTML形式のコードを入力してください。

~~~.brush:html
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello world HTML!!</title>
</head>
<body>
<h1>Hello world HTML!!</h1>　
</body>
</html>
~~~

[File]-[Save As]を選んでファイルを保存します。
ファイル名は`(「hellow.html」)`にしてください。
※保存場所はどこでもよいのですがとりあえずDesktopに保存してください。

![](https://lh5.googleusercontent.com/-yr-ecllm9FU/U371zXI1E7I/AAAAAAAAApk/w699Yaeh2FM/s1600/%25E3%2582%25B9%25E3%2582%25AF%25E3%2583%25AA%25E3%2583%25BC%25E3%2583%25B3%25E3%2582%25B7%25E3%2583%25A7%25E3%2583%2583%25E3%2583%2588%25202014-05-23%252016.12.20.png)

保存したファイルをWebブラウザ（ChromeまたはSarari）にドラックしてみてください。

![](https://lh4.googleusercontent.com/-LbYjmc4vIiw/U3710mzTpmI/AAAAAAAAAps/1xR1uMMylvM/s1600/%25E3%2582%25B9%25E3%2582%25AF%25E3%2583%25AA%25E3%2583%25BC%25E3%2583%25B3%25E3%2582%25B7%25E3%2583%25A7%25E3%2583%2583%25E3%2583%2588%25202014-05-23%252016.13.39.png)

## 完成

ブラウザにこのように表示されていればOKです。

![](https://lh6.googleusercontent.com/-nDcVGAH9fCM/U3723VWGmPI/AAAAAAAAAqA/IUv1capbrcg/s1600/%25E3%2582%25B9%25E3%2582%25AF%25E3%2583%25AA%25E3%2583%25BC%25E3%2583%25B3%25E3%2582%25B7%25E3%2583%25A7%25E3%2583%2583%25E3%2583%2588%25202014-05-23%252016.20.31.png)

とっても簡単ですね。