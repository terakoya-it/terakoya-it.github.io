layout: post
title: "リスト関連タグ"
date: 2015-05-11 00:00:51
comments: false
tags: 
- HTML基本
categories: 
- HTML基本
---
<!-- more -->

リスト形式を表現するためのタグについて紹介します。

## リスト関連のHTMLタグ

|タグ|説明|
|---|---|
|`<ol>`|順序のあるリストを表示する|
|`<ul>`|順序のないリストを表示する|
|`<li>`|リストの項目を記述する|
|`<dl>`|定義リストであることを表す|
|`<dt>`|定義する用語を表す|
|`<dd>`|定義した用語の説明を記述する|
|`<dir>`|リストを表示する|
|`<menu>`|メニューリストを表示する|

## ul、ol、liタグについて

ul、ol、liタグはリスト項目をつくときに使います。

|タグ|説明|
|---|---|
|`<ol>`|順序のあるリストを表示する|
|`<ul>`|順序のないリストを表示する|
|`<li>`|リストの項目を記述する|

    #!!{"brush":"html","gutter":"false"}
    <ul>
    <li>文書型宣言</li>
    <li>ヘッダ要素</li>
    <li>ボディ要素</li>
    </ul>
    <ol>
    <li>テキストエディタで新規ファイルを作成</li>
    <li>htmlコードを記述</li>
    <li>test.htmlという名前でファイルを保存しブラウザで開く</li>
    </ol>

![](https://lh6.googleusercontent.com/-ZrvltfJpnk4/U4hF4aik6pI/AAAAAAAAAzg/-ETpV0J4tjc/s400/%25E3%2582%25B9%25E3%2582%25AF%25E3%2583%25AA%25E3%2583%25BC%25E3%2583%25B3%25E3%2582%25B7%25E3%2583%25A7%25E3%2583%2583%25E3%2583%2588%25202014-05-30%252017.41.48.png)

### 作ってみよう

1. Sublime Textで`⌘ + option + n`
2. `ul-ol-li-tag.html`を入力してファイルを作成

**ul-ol-li-tag.html**

    #!!{"brush":"html","title":"ul-ol-li-tag.html"}
    <!DOCTYPE html>
    <html lang="ja">
    <head>
    <meta charset="UTF-8">
    <title>ul、ol、liタグの確認</title>
    </head>
    <body>
    <ul>
    <li>文書型宣言</li>
    <li>ヘッダ要素</li>
    <li>ボディ要素</li>
    </ul>
    <ol>
    <li>テキストエディタで新規ファイルを作成</li>
    <li>htmlコードを記述</li>
    <li>test.htmlという名前でファイルを保存しブラウザで開く</li>
    </ol>
    </body>
    </html>

### 確認しよう

Sublime Textで`ctrl + option + c`をタイプしてブラウザで確認しましょう。

- 画面にリスト形式が表示されている事を確認しよう

## dl、dt、ddタグについて

`<dl>`はDefinition listの略で、`<dl>～</dl>`の範囲が定義リストであることを表します。 
`<dt>～</dt>`は定義の用語で、`<dd>～</dd>`は説明になります。

|タグ|説明|
|---|---|
|`<dl>`|定義リストであることを表す|
|`<dt>`|定義する用語を表す|
|`<dd>`|定義した用語の説明を記述する|

### 例

    #!!{"brush":"html","gutter":"false"}
    <dl>
    <dt>DOCTYPEタグ</dt>
    <dd>HTML文書宣言</dd>
    <dt>headタグ</dt>
    <dd>HTML文書のヘッダ</dd>
    <dt>bodyタグ</dt>
    <dd>HTML文書のボディ</dd>
    </dl>

![](https://lh5.googleusercontent.com/-8aJYv3ihBJg/VGxer__ElBI/AAAAAAAAFas/ox51csvVig8/w2580-h984-no/html-dl-dt-dd.png)

定義リストとは、定義する用語とその用語の説明を一対にしたリストのことです。 `<dt>～</dt>`に定義する用語を記述し、 `<dd>～</dd>`にその用語の説明を記述します。 これら定義語と定義説明のセットは`<dl>～</dl>`の中に複数並べることができます。

### 作ってみよう

1. Sublime Textで`⌘ + option + n`
2. `dl-dt-dd-tag.html`を入力してファイルを作成

**dl-dt-dd-tag.html**

    #!!{"brush":"html","title":"dl-dt-dd-tag"}
    <!DOCTYPE html>
    <html lang="ja">
    <head>
    <meta charset="UTF-8">
    <title>ul、ol、liタグの確認</title>
    </head>
    <body>
    <dl>
    <dt>DOCTYPEタグ</dt>
    <dd>HTML文書宣言</dd>
    <dt>headタグ</dt>
    <dd>HTML文書のヘッダ</dd>
    <dt>bodyタグ</dt>
    <dd>HTML文書のボディ</dd>
    </dl>
    </body>
    </html>

### 確認しよう

Sublime Textで`ctrl + option + c`をタイプしてブラウザで確認しましょう。
