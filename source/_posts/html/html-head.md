layout: post
title: "headタグの要素"
date: 2015-05-11 00:00:54
comments: false
tags: 
- HTML基本
categories: 
- HTML基本
---
<!-- more -->

## headタグに入れる内容について

headタグ<head>〜</head>で囲まれている部分はHTML文書に関する情報を記述します。
headタグはHTML文書に関する情報などを記述する箇所ですので、基本的にはheadタグ内に記述した内容はブラウザには表示されません。
headタグには主に下記の要素を記述します。

- HTML文書のタイトル 
- meta情報（文字コード、文書の説明、検索キーワード）
- 読み込む外部ファイル（Javascript、CSSなど）

それではheadタグに文書のタイトルを入れてみましょう。

### 作ってみよう

1. Sublime Textで`⌘ + option + n`
2. `head.html`を入力してファイルを作成

**head.html**

    #!!{"brush":"html","title":"head.html"}
    <!DOCTYPE html>
    <html lang="ja">
    <head>
    <meta charset="UTF-8">
    <title>Hello world HTML!!</title>
    </head>
    <body>
    </body>
    </html>

### 確認しよう

Sublime Textで`ctrl + option + c`をタイプしてブラウザで確認しましょう。

- 画面になにも表示されていない事を確認しよう
- タイトル欄が`Hello world HTML!!`になっている事を確認しよう

## titleタグについて

titleタグはHTML文書のタイトル（表題）を記述します。
titleタグはheadタグ内に記述します。

下記のように`<title>〜</title>`の中にタイトルを入れます。

    #!!{"brush":"html","gutter":"false"}
    <head>
    :
    <title>Hello world HTML!!</title>
    :
    </head>

titleタグは文書の内容をあわらす大事なタグでありGoogle検索では非常に重要なタグになります。
忘れずに入れましょう。

### 作ってみよう

1. Sublime Textで`⌘ + option + n`
2. `title.html`を入力してファイルを作成

**title.html**

    #!!{"brush":"html","title":"title.html"}
    <!DOCTYPE html>
    <html lang="ja">
    <head>
    <meta charset="UTF-8">
    <title>HTMLタイトル</title>
    </head>
    <body>
    </body>
    </html>

### 確認しよう

Sublime Textで`ctrl + option + c`をタイプしてブラウザで確認しましょう。

- 画面には何も表示されていない事を確認しよう
- ページタイトルが`HTMLタイトル`になっている事を確認しよう

## scriptタグについて

scriptタグはJavascriptのプログラムを記述します。scriptタグはhead内に記述したりします。（bodyタグ内でも記述可能です。）
scriptタグないにJSコードをそのまま記述したり、外部のJavascriptファイルを読み込んだりします。

    #!!{"brush":"html","gutter":"false"}
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script>
    (function hello(name) { 
         console.log("Hello Javascript!!"); 
    })();
    </script>


### 作ってみよう

1. Sublime Textで`⌘ + option + n`
2. `script.html`を入力してファイルを作成

**script.html**

    #!!{"brush":"html","title":"title.html"}
    <!DOCTYPE html>
    <html lang="ja">
    <head>
    <meta charset="UTF-8">
    <title>script</title>
    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script>
    (function hello(name) { 
         alert("Hello Javascript!!"); 
    })();
    </script>
    </head>
    <body>
    </body>
    </html>


### 確認しよう

Sublime Textで`ctrl + option + c`をタイプしてブラウザで確認しましょう。

- 画面ダイアログが表示され`Hello Javascript!!`が表示される事

## metaタグについて

mataタグにはその名のとおりメタ情報を記述します。
metaタグはheadタグ内に記述します。 

### メタ（meta）情報とは

「データに関する情報」という意味です。 ここでは「HTML文書に関する情報」という事になります。 

### metaタグに入れる属性情報について

#### name属性

metaタグのname属性に下記の値を入れる事によりHTML文書における様々なメタ情報を設定できます。

|meta name属性値|説明|
|---|---|
|description|文書の概要説明|
|keyword|文書のキーワード|
|author|文書の製作者|

    #!!{"brush":"html","gutter":"false"}
    <meta name="author" content="制作者名">
    <meta name="description" content="サイトの説明">
    <meta name="keywords" content="検索キーワード">

#### charset属性

HTML文書の文字コードを指定する事ができます。

    #!!{"brush":"html","gutter":"false"}
    <meta charset="UTF-8">

### 文字コードとは

文字コードとは文字や記号をコンピューターが認識するためのコード体系の事です。
文字コードは様々なものがあります。日本語の文字コードは下記があります。

- Shift-JIS 
- EUC 
- UTF-8 

テキストエディタで文書を保存する場合に必ず指定してください。
実際に保存した文字コードに合わせて指定してください。
**現状はUTF-8で問題ありません。**

### 作ってみよう

1. Sublime Textで`⌘ + option + n`
2. `charset.html`を入力してファイルを作成

**charset.html**

    #!!{"brush":"html","title":"charset.html"}
    <!DOCTYPE html>
    <html lang="ja">
    <head>
    <meta charset="SJIS">
    <title>charset確認</title>
    </head>
    <body>
    <h1>文字コードの確認</h1>
    </body>
    </html>

### 確認しよう

Sublime Textで`ctrl + option + c`をタイプしてブラウザで確認しましょう。

- 画面の文字が文字化けしている事を確認しよう
- `<meta charset="UTF-8">`に修正する事で正常に表示される事を確認しよう

## linkタグについて

linkタグは主に外部のCSSファイルを読み込むときに記述します。 
linkタグもheadタグ内に記述する必要があります。

    #!!{"brush":"html","gutter":"false"}
    <link rel="stylesheet" href="example.css">

### 作ってみよう

1. Sublime Textで`⌘ + option + n`
2. `link.html`を入力してフォルダ・ファイルを作成
3. `sample.css`を下記よりダウンロードしてhtmlworksの中に入れてください。

<a href="https://drive.google.com/file/d/0B46X_qPqtoD8VVR3VU9VbE9CazA/edit?usp=sharing" target="_blank">sample.cssファイルダウンロード</a>

    #!!{"brush":"html","title":"link.html"}
    <!DOCTYPE html>
    <html lang="en">
    <head>
    <meta charset="UTF-8">
    <title>linkタグの利用</title>
    <link rel="stylesheet" href="sample.css">
    </head>
    <body>
    </body>
    </html>

### 確認しよう

link.htmlを開くと画面が赤色になっていてCSSが有効になっている事を確認しよう。

## styleタグについて

styleタグはCSS（スタイルシート）を記述します。styleタグはhead・body両方に記述できます。
下記の`body {color: red;}`はCSSの記述です。
※CSSについてはCSS基本で学習できます。

    #!!{"brush":"html","gutter":"false"}
    <style type="text/css" media="screen">
    body {color: red;}
    </style>

styleタグに指定する属性は下記があります。

|属性名|属性値|説明|
|---|---|---|
|type|`text/css`|CSSのMIMEタイプを指定|
|media|※下記参照|対象とするメディアの指定（初期値は screen）|

### type属性について

style要素にはtype属性を指定する必要があります。`text/css`を指定します。

    #!!{"brush":"html","gutter":"false"}
    <style type="text/css" media="screen">

### media属性について

media属性はそのスタイルをどのメディア（テレビや紙印刷ようかなど）に対して適用させるかを指定することができます。

    #!!{"brush":"html","gutter":"false"}
    <style type="text/css" media="screen, tv">
    /* PC、テレビ用のスタイル */
    </style>
    <style type="text/css" media="print">
    /* 印刷用のスタイル */
    </style>

メディアタイプは下記のものを指定できます。

|メディアタイプ|説明|
|---|---|
|all|すべてのメディア（初期値）|
|screen|一般的なディスプレイ|
|print|通常のプリンタ|
|projection|プロジェクタ|
|tv|テレビ|
|handheld|ハンドヘルドデバイス|
|tty|固定文字サイズの端末|
|embossed|点字プリンタ|
|braille|点字の触角デバイス|
|speech|読み上げブラウザ|

### 作ってみよう

1. Sublime Textで`⌘ + option + n`
2. `style.html`を入力してファイルを作成

**style.html**

    #!!{"brush":"html","title":"style.html"}
    <!DOCTYPE html>
    <html lang="ja">
    <head>
    <meta charset="UTF-8">
    <title>charset確認</title>
    <style type="text/css">
    body {color: red;}
    </style>
    </head>
    <body>
    <h1>styleの確認</h1>
    </body>
    </html>

### 確認しよう

Sublime Textで`ctrl + option + c`をタイプしてブラウザで確認しましょう。

- 画面の文字が赤色になっている事を確認しよう

次からはbodyタグで使うHTMLタグを学習していきます。
