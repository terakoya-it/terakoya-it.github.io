layout: post
title: "HTMLの構造について"
date: 2015-05-11 00:00:57
comments: false
tags: 
- HTML基本
categories: 
- HTML基本
---
<!-- more -->

HTMLについて基本的な構造について解説します。
HTMLは大きく`「文書型宣言」`、`「ヘッダ（head）」`、`「ボディ（body）」`の3要素から構成されています。

|構成要素|説明|
|---|---|
|文書型宣言|HTML文書の先頭行に記述されるDOCTYPE宣言。<br>※HTML5から大幅に簡略化されました。
|ヘッダ|head要素で区切られる部分。HTML文書についてのメタ情報を含む。<br>タイトル、検索キーワード、文字コードや外部ファイル（CSSやJavascript）を読み込む記述をする。|
|ボディ|body要素で区切られた部分。HTML文書の内容を記述する。|

## DOCTYPE宣言について

HTML文書の1行目はDOCTYPE宣言というものを記述する必要があります。
HTML5のDOCTYPE宣言は下記になります。

    <!DOCTYPE html>

HTML4.01では下記のようにDTD（文書型定義）を記述する必要がありましたが、HTML5では簡略化されました。 

    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

## headタグについて

headタグ<head>〜</head>で囲まれている部分はHTML文書に関する情報を記述します。
headタグには下記のような要素を記述します。

- HTML文書のタイトル
- meta情報（文字コード、文書の説明、検索キーワード）
- 読み込む外部ファイル（Javascript、CSSなど）

**headタグ例**

    #!!{"brush":"html","gutter":"false"}
    <head>
    <meta charset="UTF-8">
    <title>Hello world HTML!!</title>
    </head>

### 作ってみよう

1. Sublime Textで`⌘ + option + n`
2. `head.html`を入力してファイルを作成

**head.html**

    #!!{"brush":"html","title":"head.html"}
    <!DOCTYPE html>
    <html lang="en">
    <head>
    <meta charset="UTF-8">
    <title>Hello world HTML!!</title>
    </head>
    <body>
    </body>
    </html>

#### 確認しよう

Sublime Textで`ctrl + option + c`をタイプしてブラウザで確認しましょう。

- 画面になにも表示されていない事を確認しよう
- タイトル欄が`Hello world HTML!!`になっている事を確認しよう

## bodyタグについて

bodyタグは<br>実際にブラウザに表示される文書の本体を記述します。
bodyタグに記述するタグについては様々あります。
後ほど詳しく解説していきます。

    #!!{"brush":"html","gutter":"false"}
    :
    <body>
    <h1>Hello world HTML!!</h1>　
    </body>
    :

### 作ってみよう

1. Sublime Textで`⌘ + option + n`
2. `body.html`を入力してファイルを作成

**body.html**

    #!!{"brush":"html","title":"body.html"}
    <!DOCTYPE html>
    <html lang="en">
    <head>
    <meta charset="UTF-8">
    <title>Hello world HTML!!</title>
    </head>
    <body>
    <h1>Hello world HTML!!</h1>　
    </body>
    </html>

#### 確認しよう

Sublime Textで`ctrl + option + c`をタイプしてブラウザで確認しましょう。
- 画面に大きく`Hello world HTML!!`の文字が表示されている事を確認しよう

## h1〜h6タグについて

h1〜h6のタグは`見出し`を表します。

    #!!{"brush":"html","gutter":"false"}
    <h1>大見出し</h1>
    <h2>見出し2</h2>
    <h3>見出し3</h3>
    <h4>見出し4</h4>

![](https://lh4.googleusercontent.com/-LgF_UGw8-wY/U4fsfcUbnXI/AAAAAAAAAxY/Aq7Q57eOZxM/s300/%25E3%2582%25B9%25E3%2582%25AF%25E3%2583%25AA%25E3%2583%25BC%25E3%2583%25B3%25E3%2582%25B7%25E3%2583%25A7%25E3%2583%2583%25E3%2583%2588%25202014-05-30%252011.25.27.png)

- h1要素が最大の見出しでh6が一番小さい見出しになります
- h1要素は基本的に1のHTML文書につき1回のみ使用できます

### 作ってみよう

1. Sublime Textで`⌘ + option + n`
2. `h1-h6-tag.html`を入力してファイルを作成

**h1-h6-tag.html**

    #!!{"brush":"html","title":"h1-h6-tag.html"}
    <!DOCTYPE html>
    <html lang="ja">
    <head>
    <meta charset="UTF-8">
    <title>h1〜h6タグの確認</title>
    </head>
    <body>
    <h1>大見出し</h1>
    <h2>見出し2</h2>
    <h3>見出し3</h3>
    <h4>見出し4</h4>
    <h5>見出し5</h5>
    <h6>見出し6</h6>
    </body>
    </html>

#### 確認しよう

Sublime Textで`ctrl + option + c`をタイプしてブラウザで確認しましょう。

- 画面に見出しが表示されている事を確認しよう

## pタグについて

pタグは`段落`を表します。pタグのpは`Paragraph（パラグラフ）のp`です。

文章を表示する場合にはpタグで囲むようにしましょう。

    #!!{"brush":"html","gutter":"false"}
    <p>HTMLの基本を学習し、使いこなせるようにする講義</p>

![](https://lh4.googleusercontent.com/-Ba72pXfri4g/U4ft5BUY49I/AAAAAAAAAxw/HufxhFFgJ5o/s500/%25E3%2582%25B9%25E3%2582%25AF%25E3%2583%25AA%25E3%2583%25BC%25E3%2583%25B3%25E3%2582%25B7%25E3%2583%25A7%25E3%2583%2583%25E3%2583%2588%25202014-05-30%252011.32.27.png)

### 作ってみよう

1. Sublime Textで`⌘ + option + n`
2. `p-tag.html`を入力してファイルを作成

**p-tag.html**

    #!!{"brush":"html","title":"p-tag.html"}
    <!DOCTYPE html>
    <html lang="ja">
    <head>
    <meta charset="UTF-8">
    <title>pタグの確認</title>
    </head>
    <body>
    <p>HTMLの基本を学習し、使いこなせるようにする講義</p>
    </body>
    </html>

#### 確認しよう

Sublime Textで`ctrl + option + c`をタイプしてブラウザで確認しましょう。

- 画面に段落文字が表示されている事を確認しよう
