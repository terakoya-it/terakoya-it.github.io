layout: post
title: "汎用タグ（div、span）"
date: 2015-05-11 00:00:52
comments: false
tags: 
- HTML基本
categories: 
- HTML基本
---
<!-- more -->

## divタグについて

divタグは汎用的に使える`ブロック要素`を定義します。HTML文書のブロックとして分けるときによく使います。
ちなみにdivタグは「Division（「分離」や「区域」）」の言葉の略です。

    #!!{"brush":"html","gutter":"false"}
    <body>
    <div id="main">メインエリア</div>
    <div id="sub">サブエリア</div>
    </body>

divタグはよく`id属性`で名前を定義して使われます。

### ブロック要素とは

ブロックレベル要素は、見出し・段落・表など、文書を構成する基本となる要素で、一つのブロック（かたまり）として認識されます。 ブラウザでの表示も一つのかたまりとして扱われることが多く、一般的なブラウザでは前後に改行が入ります。

ブロックレベル要素には、以下のものがあります。

    <div>、<dl>、<form>、<h1>-<h6>、<hr>、<ol>、<p>、<pre>、<table>、<ul>

## spanタグについて

spanタグは汎用的に使える`インライン要素`を定義します。
特定の意味をもった文章などのフレーズなどにspanタグを囲って、装飾する場合によく使われます。

    #!!{"brush":"html","gutter":"false"}
    <p><span class="date">2012/03/12</span>　ブログタイトル</p>

### インライン要素とは

インライン要素は、主にブロックレベル要素の内容として用いられる要素を指します。
インライン要素には、以下のものがあります。

    <a>、<br>、<code>、<i>、<img>、<input>、<label>、<select>、<span>、<strong>、<textarea>

