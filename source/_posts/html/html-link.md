layout: post
title: "リンクを貼ろう（aタグ）"
date: 2015-05-11 00:00:53
comments: false
tags: 
- HTML基本
categories: 
- HTML基本
---
<!-- more -->

## aタグを使ってページリンクを追加

HTML文書にaタグ（アンカータグと言います）を使って別のHTML文書に移動する事ができます。

    #!!{"brush":"html","gutter":"false"}
    <a href="http://google.co.jp">Googleページへ</a>

## 絶対パス・相対パスについて

`絶対パス`とは、`http://〜`から始まるアドレス（URL)を使ってファイルの場所を指定することです。
それに対し、`相対パス`とは基準となるファイルから見て任意のファイルの場所を指定します。

|パス種類|説明|
|---|---|
|絶対パス|`http://〜`から始まるアドレス（URL)を使ってファイルの場所を指定|
|相対パス|基準としているファイルから見て任意のファイルの場所を指定|

### 相対パスの指定の仕方

下記のような配置のHTMLファイルがあったとします。

![](https://lh4.googleusercontent.com/-DY_hDNVmbWQ/VGhjvEKuExI/AAAAAAAAFVI/6CdeQQM6VFA/w912-h576-no/relative_path01.png)

index.htmからinfo.htmlにリンクを貼りたい場合は下記のようになります。

    #!!{"brush":"html","gutter":"false"}
    <a href="info.html">会社概要へ</a>

または、`./`は「同階層から」という意味を持っていますので同様に遷移できます。

    #!!{"brush":"html","gutter":"false"}
    <a href="./info.html">会社概要へ</a>

`product_list.html`に相対パスで遷移させたい場合には下記になります。

    #!!{"brush":"html","gutter":"false"}
    <a href="service/product_list.html">商品一覧へ</a>

逆に、`product_list.html`から`index.html`に相対パスで指定する場合は下記になります。

    #!!{"brush":"html","gutter":"false"}
    <a href="../index.html">ホームへ</a>

`../`を指定することにより「現在の階層から一つ上のフォルダの階層へ」という指定になります。

![](https://lh3.googleusercontent.com/-nSLlgxJcz0g/VGhl7cTbVLI/AAAAAAAAFVU/JUOFbY5yTiM/w1516-h576-no/relative_path2.png)

※二つ上の階層を指定する場合には`../../`になります。

## target属性について

リンク先の内容や、フォームの結果をどのウィンドウ（フレーム）に表示するかを指定します。

|属性値|説明|
|---|---|
|_blank |新規のウィンドウに表示|
|_self  |現在のフレーム（ウィンドウ）に表示|
|_parent|親フレームに表示|
|_top   |フレーム分割を解除してウィンドウ全体に表示|

外部サイト（別ドメイン）へリンクを貼る場合は、よく`_blank`を指定して別ウィンドウで表示させます。

    #!!{"brush":"html","gutter":"false"}
    <!-- 新規ウィンドウに表示 -->
    <a href="http://google.co.jp" target="_blank">Googleへ</a>

## ページ内リンクについて

1つのHTML文書が縦に長くなった場合にページ内でリンクしたい場合があります。
その場合は下記のようにaタグにid属性（古いブラウザも考慮する場合はname属性も）をセットして遷移先で「#」をつけることにより実現できます。

    #!!{"brush":"html","gutter":"false"}
    <a id="top" name="top"></a>
    :
    :
    <a href="#top">TOPへジャンプ</a>

