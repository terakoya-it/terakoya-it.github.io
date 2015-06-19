layout: post
title: "基本ルールについて"
date: 2015-05-11 00:00:56
comments: false
tags: 
- HTML基本
categories: 
- HTML基本
---
<!-- more -->

HTML文書を作成する上での基本ルールを押さえておきましょう。

## タグは大文字と小文字の区別はしない

タグは小文字の英数字で定義しましょう。大文字でも問題なく表示されますか、正式な定義方法は小文字で定義する事になっています。

### 基本は小文字で書くようにしましょう

小文字、大文字どちらでも問題なく表示はされますがW3CというHTMLの仕様を作成している団体からは**小文字が推奨**されていますので、できる限り小文字で定義するようにしましょう。

## 開始タグと終了タグはセットで入力しよう

マークアップ言語であるHTMLはタグで囲って表現します。タグを記述するときには開始タグと終了タグで囲まれている事に注意してください。

※brタグやhrタグなど一部のタグは終了タグがありませんがほとんが開始・終了タグで囲む必要があります。

    #!!{"brush":"html","gutter":"false"}
    <div>
    <p>段落テキスト段落テキスト</p>
    </div>

## 利用禁止の文字（特殊文字）

タグを表す「<」と「>」を通常のテキストとして表現しようとすると、ブラウザはタグと間違って、意図しない結果を表示する可能性があります。

### エンティティ文字

このような特殊な意味をもっている文字の事をエンティティ文字といいます。

|エンティティ文字|
|---|
|&|
|"|
|'|
|<|
|\>|

### 実態参照文字

エンティティ文字をHTMLで表示させるためには実態参照文字を使います。

|文字実体参照|表示|
|---|---|
|`&quot;`|"|
|`&amp;`|&|
|`&apos;`|'|
|`&lt;`|<|
|`&gt;`|>|

    #!!{"brush":"html","gutter":"false"}
    <!DOCTYPE html>
    <html lang="ja">
    <head>
    <meta charset="UTF-8">
    <title>実態参照文字</title>
    </head>
    <body>
    <p>&lt;は小なり記号</p>
    <p>&gt;は大なり記号</p>
    <p>&amp;はアンド</p>
    </body>
    </html>

## コメントの記述方法

HTMLのコメントは下記のように記述します。

    #!!{"brush":"html","gutter":"false"}
    <!-- コメント -->

実際にはこのように記述して使います。

    #!!{"brush":"html","gutter":"false"}
    <!DOCTYPE html>
    <html lang="ja">
    <head>
    <meta charset="UTF-8">
    <title>実態参照文字</title>
    </head>
    <body>
    <!--ここから本文-->
    <p>ようこそ！！ホームページへ！</p>
    <p></p>
    <!--本文ここまで-->
    <!--コメントは
    複数行になってもOK-->
    <!--************************************************
    * このようにすれば、コメントを目立たせることができるので、 
    * 重要なコメントを書くとよいでしょう。
    *************************************************-->
    </body>
    </html> 

**注意点**

HTMLはブラウザの簡単な操作でソースコードが見れてしまうので重要な事や悪意をもったユーザから攻撃されるような情報はコメントに書かないようにしましょう。

## 記述ミスを減らすコツ

### インデントや改行で区切りを明確にしよう

    #!!{"brush":"html","gutter":"false"}
    <!DOCTYPE html>
    <html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>インデントや改行を入れよう</title>
    </head>
    <body>
        <div class="panel panel-default">
            <div class="panel-body">パネル</div>
        </div>
        <div class="tab-content">
              <div class="tab-pane active" id="home">ホーム</div>
              <div class="tab-pane" id="profile">プロファイル</div>
              <div class="tab-pane" id="messages">メッセージ</div>
              <div class="tab-pane" id="settings">設定</div>
        </div>
    </body>
    </html>

### 要所にコメントを入れてわかりやすくしよう

実際にHTMLをコーディングしているとたくさんのタグを記述しなければいけないので、「どこからどこまでがどの要素なのか？」というのがわからなくなります。なので要所にコメントをいれてどの部分のHTMLをコーディングしているのかがすぐにわかるようにしましょう。

    #!!{"brush":"html","gutter":"false"}
    <div id="header">
        <ul>
            <li><a href="/home/">ホーム</a></li>
            <li><a href="/service/">サービス案内</a></li>
            <li><a href="/access/">アクセス</a></li>
            <li><a href="/toiawase/">お問い合わせ</a></li>
        </ul>
    </div><!-- /header -->
    <div id="content">
        <h1>ようこそ○○ホームページへ！</h1>
        <p>
        テキストテキストテキスト
        :
        :
        </p>
    </div><!-- /content -->
    <div id="footer">
        <ul>
            <li><a href="/home/">ホーム</a></li>
            <li><a href="/service/">サービス案内</a></li>
            <li><a href="/access/">アクセス</a></li>
            <li><a href="/toiawase/">お問い合わせ</a></li>
        </ul>
    </div><!-- /footer -->


