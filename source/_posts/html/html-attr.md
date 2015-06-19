layout: post
title: "属性について"
date: 2015-05-11 00:00:00
comments: false
tags: 
- HTML基本
categories: 
- HTML基本
---
<!-- more -->

HTMLタグには様々な属性を入れることができます。
属性を追加する事により、HTML要素をグルーピングしたり、表示内容を変更したり、識別できるようにIDをつけたりすることができます。

## 主な属性について

HTML要素に付与できる属性は様々あります。主なものは下記です。

|属性名|内容|
|---|---|
|id|その要素が特定できるようにIDを付与します。<br>`一つのHTML文書につきユニークな属性値にする必要があります。（重複不可）`<br>CSSやJavascriptで要素を指定するときに使われます。|
|class|その要素を分類・グルーピングします。<br>`一つのHTML文書につき複数指定可能（重複可）`<br>CSSやJavascriptで要素を指定するときに使われます。|
|name|その要素が特定できるように名前を付与します。<br>フォーム要素（`<input>タグなど`）で送信するパラメータ値として利用します。<br>`一つのHTML文書で重複しないように指定しましょう。`|
|style|指定した要素に対してCSSの装飾を施すことができます。|
|href|`<a>タグ`でリンク先のURLを指定するときに使われます。|
|src|`<img>、<script>タグ`でソース（読み込みたいファイル）のURLを指定するときに使われます。|

上記以外にもJavascriptを呼び出すための`onclick`属性や、横幅や縦幅を指定する`width`や`height`などたくさんあります。（Javascriptでも詳しく解説していきます。）

### id属性

その要素が特定できるようにIDを付与します。
`一つのHTML文書につきユニークな属性値にする必要があります。（重複不可）`
CSSやJavascriptで要素を指定するときに使われます。

下記のように画面のレイアウトでどの部分がヘッダエリア（`id="header"`）で、どの部分がメインコンテンツエリアで（`id="contents"`）でといった事を識別するときに使われます。

    #!!{"brush":"html","gutter":"false"}
    <div id="header">
        <ul>
            <li><a href="/home/">ホーム</a></li>
            <li><a href="/service/">サービス</a></li>
            <li><a href="/toiawase/">問い合わせ</a></li>
        </ul>
    </div>
    <div id="contents">
        コンテンツ内容
    </div>
    <div id="footer">
        copyright(c) sample all rights reserved.
    </div>

### class属性

class属性はその要素を分類・グルーピングします。
`一つのHTML文書につき複数指定可能（重複可）`
CSSやJavascriptで要素を指定するときに使われます。

    #!!{"brush":"html","gutter":"false"}
    <style>
    .section{ background-color:yellow; }
    </style>
    :
    :
    <div class="section">
        セクション１
    </div>
    <div class="section">
        セクション２
    </div>
    <div class="section">
        セクション３
    </div>

### name属性

要素が特定できるように名前を付与します。
フォーム要素（`<input>タグなど`）で送信するパラメータ値として利用します。
`一つのHTML文書で重複しないように指定しましょう。`

    #!!{"brush":"html","gutter":"false"}
    <form action="test.php" method="post">
    <input type="text" name="text1" placeholder="テキスト">
    <input type="submit" value="送信">
    </form>
    <!--
    name属性値はサーバ側に送られる値のパラメータ名として使われます。
    （PHPで受け取った場合）
    array(1) {
      'text1' =>
      string(3) "データ"
    }
    -->

### style属性

指定した要素に対してCSSの指定して装飾を施すことができます。
`HTML要素に直接style属性を追加して装飾する事は推奨されていません。（構造とデザインの分離が推奨されているため）`

    #!!{"brush":"html","gutter":"false"}
    <p style="font-size:20px;">テキストテキスト</p>

### href属性

`<a>タグ`でリンク先のURLを指定するときに使われます。

    #!!{"brush":"html","gutter":"false"}
    <a href="http://google.co.jp/">Googleへ</a>

### src属性

`<img>、<script>タグ`でソース（読み込みたいファイル）のURLを指定するときに使われます。

    #!!{"brush":"html","gutter":"false"}
    <!-- imgタグ -->
    <img src="./thumbnail.png" width="200" height="150">
    <!-- タグ -->
    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>

### rel属性

リンク先（href属性値）の文書に対する関係を示すための属性です。
relは`Relation`、`Relationship`（関係）の言葉の略です。

|rel属性値|説明|
|---|---|
|Alternate|代替文書であることを示します。|
|Stylesheet|外部スタイルシートであることを示します。<br>「Alternate」と組み合わせることで、代|替スタイルシートを示すこともできます。|
|Start|文書群の最初の文書であることを示します。|
|Next|次の文書であることを示します。|
|Prev|前の文書であることを示します。|
|Contents|目次となる文書であることを示します。|
|Index|索引となる文書であることを示します。|

例）代替スタイルシートを指定する場合

    #!!{"brush":"html","gutter":"false"}
    <link rel="stylesheet alternate" type="text/css" href="alt.css" title="代替スタイル">

## 複数の属性を記述する場合

複数の属性を記述する場合には`スペースで区切って`記述します。

    #!!{"brush":"html","gutter":"false"}
    <a href="index.html" title="トップページ">トップページへ</a>

## 複数の属性値を記述する場合

class属性は複数の属性値を指定することができます。複数指定する場合も`スペースで区切って`記述します。

    #!!{"brush":"html","gutter":"false"}
    <div class="btn btn-default">クリック</div>

`id属性`や`title属性`はその意味合いから複数指定は不可ですので注意してください。




